using System;
using SME;

namespace SingleCycleRISCV {
    [InitializedBus]
    public interface Mux1_Output : IBus {
        ulong Address {get; set;}
    }
    
    public class Mux1 : SimpleProcess {
        [InputBus]
        private readonly Next_Output m_Next = Scope.CreateOrLoadBus<Next_Output>();
        [InputBus]
        private readonly ALU_Output m_ALU = Scope.CreateOrLoadBus<ALU_Output>();
        [InputBus]
        private readonly ANDGate_Output m_ANDGate = Scope.CreateOrLoadBus<ANDGate_Output>();
        [OutputBus]
        public readonly Mux1_Output Mux_output = Scope.CreateOrLoadBus<Mux1_Output>();

        protected override void OnTick() {
            bool mux_select = m_ANDGate.Value;
            switch (mux_select) {
                case false:
                    Mux_output.Address = m_Next.Address; 
                    break;
                case true:
                    Mux_output.Address = (ulong)m_ALU.Value; 
                    break;

            }

        }
    }

}