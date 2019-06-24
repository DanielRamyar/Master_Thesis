using System;
using SME;

namespace Register {
    public class PC : SimpleProcess {
        [OutputBus]
		public readonly PC_Output output = Scope.CreateOrLoadBus<PC_Output>();

        [InputBus]
        private readonly PC_Input m_input = Scope.CreateOrLoadBus<PC_Input>();

        uint address_hold;

        protected override void OnTick() {
            address_hold = m_input.Address;
            output.Address = address_hold;
        }
    }

}