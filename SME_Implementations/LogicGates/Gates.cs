using System;
using SME;

namespace LogicGates {
    public class ANDGate : SimpleProcess {
        [InputBus]
        private readonly GateInputs input = Scope.CreateOrLoadBus<GateInputs>();

        [OutputBus]
		public readonly GateOutput output = Scope.CreateOrLoadBus<GateOutput>();

        protected override void OnTick() {
            output.out_AND = input.in_1 && input.in_2;
        }
    }

    public class ORGate : SimpleProcess {
        [InputBus]
        private readonly GateInputs input = Scope.CreateOrLoadBus<GateInputs>();

        [OutputBus]
		public readonly GateOutput output = Scope.CreateOrLoadBus<GateOutput>();

        protected override void OnTick() {
            output.out_OR = input.in_1 || input.in_2;
        }
    }

}