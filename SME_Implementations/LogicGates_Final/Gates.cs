using System;
using SME;

namespace LogicGates {
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

    public class ORGate : SimpleProcess {
        [OutputBus]
		public readonly GateOutput output = Scope.CreateOrLoadBus<GateOutput>();

        [InputBus]
        private readonly GateInputs m_input;
		public ORGate(GateInputs input) {
            m_input = input ?? throw new ArgumentNullException(nameof(input));
		}

        protected override void OnTick() {
            output.out_OR = m_input.in_1 || m_input.in_2;
        }
    }

    public class NOTGate : SimpleProcess {
        [OutputBus]
		public readonly GateOutput output = Scope.CreateOrLoadBus<GateOutput>();

        [InputBus]
        private readonly GateInputs m_input;
		public NOTGate(GateInputs input) {
            m_input = input ?? throw new ArgumentNullException(nameof(input));
		}

        protected override void OnTick() {
            output.out_NOT = !m_input.in_1;
        }
    }

    public class XORGate : SimpleProcess {
        [OutputBus]
		public readonly GateOutput output = Scope.CreateOrLoadBus<GateOutput>();

        [InputBus]
        private readonly GateInputs m_input;
		public XORGate(GateInputs input) {
            m_input = input ?? throw new ArgumentNullException(nameof(input));
		}

        protected override void OnTick() {
            output.out_XOR = (m_input.in_1 && !m_input.in_2) || (!m_input.in_1 && m_input.in_2);
        }
    }

}