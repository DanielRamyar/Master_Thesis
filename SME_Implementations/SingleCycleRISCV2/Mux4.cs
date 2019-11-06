using System;
using SME;

namespace SingleCycleRISCV {
    [InitializedBus]
    public interface Mux4_Output : IBus {
        long Data {get; set;}
    }
    
    public class Mux4 : SimpleProcess {
        [InputBus]
        private readonly ALU_Output m_ALU_Output = Scope.CreateOrLoadBus<ALU_Output>();
        [InputBus]
        private readonly DM_Output m_DM_Output = Scope.CreateOrLoadBus<DM_Output>();
        [InputBus]
        private readonly Next_Output m_Next_Output = Scope.CreateOrLoadBus<Next_Output>();
        [InputBus]
        private readonly WBSel m_WBSel = Scope.CreateOrLoadBus<WBSel>();
        [OutputBus]
        public readonly Mux4_Output Mux_output = Scope.CreateOrLoadBus<Mux4_Output>();

        protected override void OnTick() {
            switch (m_WBSel.Value) {
                case 0:
                    Mux_output.Data = m_ALU_Output.Value; 
                    break;
                case 1:
                    Mux_output.Data = m_DM_Output.Data; 
                    break;
                case 2:
                    Mux_output.Data = (long)m_Next_Output.Address; 
                    break;
            }
        }
    }
}