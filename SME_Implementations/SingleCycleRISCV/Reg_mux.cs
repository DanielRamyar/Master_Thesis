using System;
using SME;

namespace SingleCycleRISCV {
    public class Reg_mux : SimpleProcess {
        [InputBus]
        private readonly Read_Output_2 m_Reg_in = Scope.CreateOrLoadBus<Read_Output_2>();

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