using System;
using SME;

namespace SingleCycleRISCV {
    [ClockedProcess]
    public class Inc_mux : SimpleProcess {
        [InputBus]
        private readonly Incrementer_Output m_input = Scope.CreateOrLoadBus<Incrementer_Output>();
        [InputBus]
        private readonly Zero_out m_zero_out = Scope.CreateOrLoadBus<Zero_out>();
        [InputBus]
        private readonly Branch m_Branch = Scope.CreateOrLoadBus<Branch>();
        [OutputBus]
        public readonly PC_Input Mux_out = Scope.CreateOrLoadBus<PC_Input>();


        protected override void OnTick() {
            bool mux_opcode = m_zero_out.Value && m_Branch.Enable; // This is the AND Gate 
            switch (mux_opcode) {
                case false:
                    Mux_out.Address = m_input.Address; 
                    break;
                case true:
                    
                    break;

            }

        }
    }

}