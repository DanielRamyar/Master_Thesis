using System;
using SME;

namespace SingleCycleRISCV {
    [InitializedBus]
    public interface PC_Output : IBus {
        ulong Address {get; set;}
    }

    [ClockedProcess]
    public class PC : SimpleProcess {
        [InputBus]
        private readonly Mux1_Output m_Input = Scope.CreateOrLoadBus<Mux1_Output>();
        [OutputBus]
		public readonly PC_Output Output = Scope.CreateOrLoadBus<PC_Output>();

        ulong address_hold;

        protected override void OnTick() {
            address_hold = m_Input.Address;
            Output.Address = address_hold;
        }
    }

}