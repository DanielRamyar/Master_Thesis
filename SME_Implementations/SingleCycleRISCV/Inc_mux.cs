using System;
using SME;

namespace SingleCycleRISCV {
    [ClockedProcess]
    public class Inc_mux : SimpleProcess {
        [InputBus]
        private readonly Incrementer_Output m_input = Scope.CreateOrLoadBus<Incrementer_Output>();
        [OutputBus]
        public readonly PC_Input Mux_out = Scope.CreateOrLoadBus<PC_Input>();


        protected override void OnTick() {
            byte mux_opcode = 0;
            switch (mux_opcode) {
                case 0:
                    Mux_out.Address = m_input.Address; 
                    break;
                case 1:
                    
                    break;

            }

        }
    }

}