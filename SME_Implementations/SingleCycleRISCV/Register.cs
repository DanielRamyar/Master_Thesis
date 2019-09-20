using System;
using SME;

namespace SingleCycleRISCV {
    public class Register : SimpleProcess {
        [OutputBus]
		public readonly Reg1_To_ALU output_1 = Scope.CreateOrLoadBus<Reg1_To_ALU>();
        [OutputBus]
		public readonly Reg2_To_Mux output_2 = Scope.CreateOrLoadBus<Reg2_To_Mux>();

        [InputBus]
        private readonly Read_Register_1 m_read_1 = Scope.CreateOrLoadBus<Read_Register_1>();
        [InputBus]
        private readonly Read_Register_2 m_read_2 = Scope.CreateOrLoadBus<Read_Register_2>();
        [InputBus]
        private readonly WB_Data m_write_data = Scope.CreateOrLoadBus<WB_Data>();
        [InputBus]
        private readonly WB_RegisterWrite m_write = Scope.CreateOrLoadBus<WB_RegisterWrite>();
        [InputBus]
        private readonly WB_WriteControl m_write_control = Scope.CreateOrLoadBus<WB_WriteControl>();
        

        // private readonly int[] m_register = new int[32];
        private readonly long[] m_register = {0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 2,
                                             8, 7, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0,};

        protected override void OnTick() {
            if (m_write_control.Enable == true && m_write.address > 0 && m_write.address <= 32) { // Check if written register is between 1-32 and control is asserted
                m_register[m_write.address] = m_write_data.Data;                                  // Register 0 should always be zero therefore cannot be written to
            }
            if (m_read_1.address >= 0 && m_read_1.address <= 32) { // Check if given register address is between 0-32
                output_1.Data = m_register[m_read_1.address];
            }
            if (m_read_2.address >= 0 && m_read_2.address <= 32) { // Check if given register address is between 0-32
                output_2.Data = m_register[m_read_2.address];
            }
            

            Console.WriteLine(string.Join(", ", m_register)); // Using this to print whole register

        }
    }

}