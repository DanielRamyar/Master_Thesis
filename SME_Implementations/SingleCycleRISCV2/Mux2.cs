using System;
using SME;

namespace SingleCycleRISCV {
    [InitializedBus]
    public interface Mux2_Output : IBus {
        long Data {get; set;}
    }
    
    public class Mux2 : SimpleProcess {
        [InputBus]
        private readonly RS1 m_RS1 = Scope.CreateOrLoadBus<RS1>();
        [InputBus]
        private readonly PC_Output m_PC_Output = Scope.CreateOrLoadBus<PC_Output>();
        [InputBus]
        private readonly ALUSrc1 m_ALUSrc1 = Scope.CreateOrLoadBus<ALUSrc1>();
        [OutputBus]
        public readonly Mux2_Output Mux_output = Scope.CreateOrLoadBus<Mux2_Output>();

        protected override void OnTick() {
            bool mux_select = m_ALUSrc1.Enable;
            switch (mux_select) {
                case false:
                    Mux_output.Data = m_RS1.Data; 
                    break;
                case true:
                    Mux_output.Data = (long)m_PC_Output.Address; 
                    break;

            }

        }
    }

}