using System;
using SME;

namespace SingleCycleRISCV {
    public class Reg_mux : SimpleProcess {
        [InputBus]
        private readonly Reg2_To_Mux m_Reg_in = Scope.CreateOrLoadBus<Reg2_To_Mux>();

        [OutputBus]
        public readonly Reg_Mux_Output Mux_out = Scope.CreateOrLoadBus<Reg_Mux_Output>();

        protected override void OnTick() {
            byte mux_opcode = 0;
            switch (mux_opcode) {
                case 0:
                    Mux_out.Data = m_Reg_in.Data; 
                    break;
                case 1:
                    
                    break;

            }

        }
    }

}