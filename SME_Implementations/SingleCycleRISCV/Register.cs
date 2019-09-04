using System;
using SME;

namespace SingleCycleRISCV {
    public class Register : SimpleProcess {
        [OutputBus]
		public readonly Read_Output_1 output_1 = Scope.CreateOrLoadBus<Read_Output_1>();
        [OutputBus]
		public readonly Read_Output_2 output_2 = Scope.CreateOrLoadBus<Read_Output_2>();

        // for test purposes
        [OutputBus]
        private readonly OperationCode m_OperationCode = Scope.CreateOrLoadBus<OperationCode>();

        [InputBus]
        private readonly Read_Register_1 m_read_1 = Scope.CreateOrLoadBus<Read_Register_1>();
        [InputBus]
        private readonly Read_Register_2 m_read_2 = Scope.CreateOrLoadBus<Read_Register_2>();
        [InputBus]
        private readonly Write_Register m_write = Scope.CreateOrLoadBus<Write_Register>();
        [InputBus]
        private readonly Write_Data m_write_data = Scope.CreateOrLoadBus<Write_Data>();
        // [InputBus]
        // private readonly Mem_Mux_Output m_write_data = Scope.CreateOrLoadBus<Mem_Mux_Output>();

        [InputBus]
        private readonly Write_Control m_write_control = Scope.CreateOrLoadBus<Write_Control>();
        

        // private readonly int[] m_register = new int[32];
        private readonly int[] m_register = {0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 2,
                                             4, 7, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0,};


        protected override void OnTick() {

            if (m_read_1.address >= 0 && m_read_1.address <= 32) { // Check if given register address is between 0-32
                output_1.Data = m_register[m_read_1.address];
            }
            if (m_read_2.address >= 0 && m_read_2.address <= 32) { // Check if given register address is between 0-32
                output_2.Data = m_register[m_read_2.address];
            }
            if (m_write_control.Enable == true && m_write.address > 0 && m_write.address <= 32) { // Check if written register is between 1-32 and control is asserted
                m_register[m_write.address] = m_write_data.Data;                                  // Register 0 should always be zero therefore cannot be written to
            }

            // Console.WriteLine(string.Join(", ", m_register)); // Using this to print whole register

            m_OperationCode.Value = 2;

        }
    }

}