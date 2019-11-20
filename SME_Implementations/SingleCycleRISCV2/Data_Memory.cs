using System;
using SME;

namespace SingleCycleRISCV {
    public interface DM_Output : IBus {
        [InitialValue]
        long Data {get; set;}
    }

    public class DM : SimpleProcess {
        [InputBus]
        private readonly ALU_Output m_Address = Scope.CreateOrLoadBus<ALU_Output>();
        [InputBus]
        private readonly RS2 m_Data_input = Scope.CreateOrLoadBus<RS2>();
        [InputBus]
        private readonly MemRead m_MemRead = Scope.CreateOrLoadBus<MemRead>();
        [InputBus]
        private readonly MemWrite m_MemWrite = Scope.CreateOrLoadBus<MemWrite>();
        [InputBus]
        private readonly SizeAndSign m_SizeAndSign = Scope.CreateOrLoadBus<SizeAndSign>();

        [OutputBus]
		public readonly DM_Output output = Scope.CreateOrLoadBus<DM_Output>();

        long[] Data_Memory = new long[10];

        protected override void OnTick() {
            if (m_MemRead.Enable) {
                output.Data = Data_Memory[m_Address.Value];
            }
            else if (m_MemWrite.Enable) {
                switch (m_SizeAndSign.Value) {
                    case 0:
                        Data_Memory[m_Address.Value] = m_Data_input.Data;
                        break;
                    case 1:
                        Data_Memory[m_Address.Value] = m_Data_input.Data & 0xFFFFFFFF;
                        break;
                    case 2:
                        Data_Memory[m_Address.Value] = m_Data_input.Data & 0xFFFF;
                        break;
                    case 3:
                        Data_Memory[m_Address.Value] = m_Data_input.Data & 0xFF;
                        break;
                }
            }
            else {
                output.Data = 0;
            }
            Console.WriteLine($"Data Memory: [{string.Join(", ", Data_Memory)}]"); // Using this to print whole memory
        }
    }

}