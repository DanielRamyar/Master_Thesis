using System;
using SME;

namespace Data_Memory {
    public class DM : SimpleProcess {
        [OutputBus]
		public readonly DM_Output output = Scope.CreateOrLoadBus<DM_Output>();

        [InputBus]
        private readonly DM_input m_input = Scope.CreateOrLoadBus<DM_input>();
        [InputBus]
        private readonly DM_Data_input m_Data_input = Scope.CreateOrLoadBus<DM_Data_input>();
        [InputBus]
        private readonly MemRead m_MemRead = Scope.CreateOrLoadBus<MemRead>();
        [InputBus]
        private readonly MemWrite m_MemWrite = Scope.CreateOrLoadBus<MemWrite>();

        int[] Data_Memory = new int[100];

        protected override void OnTick() {
            if (m_MemRead.Enable) {
                output.Data = Data_Memory[m_input.Address];
            }
            else if (m_MemWrite.Enable) {
                Data_Memory[m_input.Address] = m_Data_input.Data;
            }
        }
    }

}