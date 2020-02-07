using System;
using SME;

namespace ANDGate {
    public class ANDGate : SimpleProcess {
        [OutputBus]
		public readonly GateOutput output = Scope.CreateOrLoadBus<GateOutput>();

        [InputBus]
        private readonly GateInputs m_input;
		public ANDGate(GateInputs input) {
            m_input = input ?? throw new ArgumentNullException(nameof(input));
		}

        protected override void OnTick() {
            output.out_AND = m_input.in_1 && m_input.in_2;
        }
    }
}