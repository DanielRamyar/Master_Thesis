using System;
using SME;

namespace SingleCycleRISCV {
    public class DM : SimpleProcess {
        [InputBus]
        private readonly ALU_Output m_Address = Scope.CreateOrLoadBus<ALU_Output>();
        [InputBus]
        private readonly Reg2_To_Mux m_Data_input = Scope.CreateOrLoadBus<Reg2_To_Mux>();
        [InputBus]
        private readonly MemRead m_MemRead = Scope.CreateOrLoadBus<MemRead>();
        [InputBus]
        private readonly MemWrite m_MemWrite = Scope.CreateOrLoadBus<MemWrite>();

        [OutputBus]
		public readonly DM_Output output = Scope.CreateOrLoadBus<DM_Output>();

        long[] Data_Memory = new long[100];

        protected override void OnTick() {
            if (m_MemRead.Enable) {
                output.Data = Data_Memory[m_Address.Value];
            }
            else if (m_MemWrite.Enable) {
                Data_Memory[m_Address.Value] = m_Data_input.Data;
            }
            Console.WriteLine(string.Join(", ", Data_Memory)); // Using this to print whole register
        }
    }

}