using System;
using SME;

namespace SingleCycleRISCV {
    [InitializedBus]
    public interface ANDGate_Output : IBus {
        bool Value {get; set;}
    }

    public class ANDGate : SimpleProcess {
        [InputBus]
        private readonly GoTo m_Input_1 = Scope.CreateOrLoadBus<GoTo>();
        [InputBus]
        private readonly PCSel m_Input_2 = Scope.CreateOrLoadBus<PCSel>();
        [OutputBus]
        public readonly ANDGate_Output Output = Scope.CreateOrLoadBus<ANDGate_Output>();
        
        protected override void OnTick() {
            Output.Value = m_Input_1.Value && m_Input_2.Value;
        }
    }

}