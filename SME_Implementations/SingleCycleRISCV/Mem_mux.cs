using System;
using SME;

namespace SingleCycleRISCV {
    public class Mem_mux : SimpleProcess {
        [InputBus]
        private readonly ALU_Output m_ALU_in = Scope.CreateOrLoadBus<ALU_Output>();
        [InputBus]
        private readonly MemtoReg m_MemtoReg = Scope.CreateOrLoadBus<MemtoReg>();

        [OutputBus]
        public readonly Write_Data Mux_out = Scope.CreateOrLoadBus<Write_Data>();

        protected override void OnTick() {
            bool mux_opcode = m_MemtoReg.Enable;
            switch (mux_opcode) {
                case false:
                    Mux_out.Data = m_ALU_in.Value; 
                    break;
                case true:
                    
                    break;

            }

        }
    }

}