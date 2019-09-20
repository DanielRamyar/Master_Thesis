using System;
using SME;

namespace SingleCycleRISCV {
    public class Reg_mux : SimpleProcess {
        [InputBus]
        private readonly Reg2_To_Mux m_Reg_in = Scope.CreateOrLoadBus<Reg2_To_Mux>();
        [InputBus]
        private readonly ALUSrc m_ALUSrc = Scope.CreateOrLoadBus<ALUSrc>();
        [InputBus]
        private readonly ImmGen_Out m_ImmGen_in = Scope.CreateOrLoadBus<ImmGen_Out>();


        [OutputBus]
        public readonly Reg_Mux_Output Mux_out = Scope.CreateOrLoadBus<Reg_Mux_Output>();

        protected override void OnTick() {
            bool mux_opcode = m_ALUSrc.Enable;
            switch (mux_opcode) {
                case false:
                    Mux_out.Data = m_Reg_in.Data; 
                    break;
                case true:
                    Mux_out.Data = m_ImmGen_in.Immediate;
                    break;

            }

        }
    }

}