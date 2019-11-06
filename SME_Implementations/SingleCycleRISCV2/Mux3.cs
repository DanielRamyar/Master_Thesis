using System;
using SME;

namespace SingleCycleRISCV {
    [InitializedBus]
    public interface Mux3_Output : IBus {
        long Data {get; set;}
    }
    
    public class Mux3 : SimpleProcess {
        [InputBus]
        private readonly RS2 m_RS2 = Scope.CreateOrLoadBus<RS2>();
        [InputBus]
        private readonly Immediate m_Immediate = Scope.CreateOrLoadBus<Immediate>();
        [InputBus]
        private readonly ALUSrc2 m_ALUSrc2 = Scope.CreateOrLoadBus<ALUSrc2>();
        [OutputBus]
        public readonly Mux3_Output Mux_output = Scope.CreateOrLoadBus<Mux3_Output>();

        protected override void OnTick() {
            bool mux_select = m_ALUSrc2.Enable;
            switch (mux_select) {
                case false:
                    Mux_output.Data = m_RS2.Data; 
                    break;
                case true:
                    Mux_output.Data = m_Immediate.Immediate; 
                    break;

            }

        }
    }

}