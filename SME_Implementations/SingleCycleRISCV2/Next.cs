using System;
using SME;

namespace SingleCycleRISCV {
    [InitializedBus]
    public interface Next_Output : IBus {
        ulong Address {get; set;}
    }

    public class Next : SimpleProcess {
        [InputBus]
        private readonly PC_Output m_Input = Scope.CreateOrLoadBus<PC_Output>();
        [OutputBus]
		public readonly Next_Output Output = Scope.CreateOrLoadBus<Next_Output>();

        ulong temp;

        protected override void OnTick() {
            temp = m_Input.Address + 4;
            Output.Address = temp;
        }
    }

}