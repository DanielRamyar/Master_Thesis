using System;
using SME;

namespace SingleCycleRISCV {
        public interface Write_Data : IBus {
        [InitialValue]
        long Data {get; set;}
    }

    public interface RS1 : IBus {
        [InitialValue]
        long Data {get; set;}
    }

    public interface RS2 : IBus {
        [InitialValue]
        long Data {get; set;}
    }

    public class Register : SimpleProcess {
        [InputBus]
        private readonly Read_Register_1 m_read_1 = Scope.CreateOrLoadBus<Read_Register_1>();
        [InputBus]
        private readonly Read_Register_2 m_read_2 = Scope.CreateOrLoadBus<Read_Register_2>();
        [InputBus]
        private readonly WB_Data m_write_data = Scope.CreateOrLoadBus<WB_Data>();
        [InputBus]
        private readonly WB_WriteRegister m_write = Scope.CreateOrLoadBus<WB_WriteRegister>();
        [InputBus]
        private readonly WB_WriteControl m_write_control = Scope.CreateOrLoadBus<WB_WriteControl>();

        [OutputBus]
		public readonly RS1 output_1 = Scope.CreateOrLoadBus<RS1>();
        [OutputBus]
		public readonly RS2 output_2 = Scope.CreateOrLoadBus<RS2>();


        

        // private readonly int[] m_register = new int[32];
        private readonly long[] m_register = {0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 2,
                                             8, 7, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0,};

        protected override void OnTick() {
            if (m_write_control.Enable == true && m_write.Address > 0 && m_write.Address <= 32) { // Check if written register is between 1-32 and control is asserted
                m_register[m_write.Address] = m_write_data.Data;                                  // Register 0 should always be zero therefore cannot be written to
            }
            if (m_read_1.Address >= 0 && m_read_1.Address <= 32) { // Check if given register address is between 0-32
                output_1.Data = m_register[m_read_1.Address];
            }
            if (m_read_2.Address >= 0 && m_read_2.Address <= 32) { // Check if given register address is between 0-32
                output_2.Data = m_register[m_read_2.Address];
            }
            

            Console.WriteLine($"Register: {string.Join(", ", m_register)}"); // Using this to print whole register

        }
    }

}