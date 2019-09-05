using System;
using SME;

namespace SingleCycleRISCV {
    public class Mem_mux : SimpleProcess {
        [InputBus]
        private readonly ALU_Output m_ALU_in = Scope.CreateOrLoadBus<ALU_Output>();

        [OutputBus]
        public readonly Write_Data Mux_out = Scope.CreateOrLoadBus<Write_Data>();

        protected override void OnTick() {
            byte mux_opcode = 0;
            switch (mux_opcode) {
                case 0:
                    Mux_out.Data = m_ALU_in.Value; 
                    break;
                case 1:
                    
                    break;

            }

        }
    }

}