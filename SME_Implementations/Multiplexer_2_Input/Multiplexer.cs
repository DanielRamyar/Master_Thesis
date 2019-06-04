using System;
using SME;

namespace Multiplexer_2_Input {
    public class NOTGate_0 : SimpleProcess {
        [OutputBus]
		public readonly NOTOutput_0 output_0 = Scope.CreateOrLoadBus<NOTOutput_0>();

        [InputBus]
        private readonly Input_2 m_input = Scope.CreateOrLoadBus<Input_2>();

        protected override void OnTick() {
            output_0.Value = !m_input.Value;
        }
    }

    public class ANDGate_0 : SimpleProcess {
        [OutputBus]
        public readonly ANDOutput_0 output_0 = Scope.CreateOrLoadBus<ANDOutput_0>();

        [InputBus]
        private readonly NOTOutput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<NOTOutput_0>();
        [InputBus]
        private readonly Input_0 m_input_0 = Scope.CreateOrLoadBus<Input_0>();

        protected override void OnTick() {
            output_0.Value = m_input_NOT_0.Value && m_input_0.Value;
        }
    }

    public class ANDGate_1 : SimpleProcess {
        [OutputBus]
        public readonly ANDOutput_1 output_1 = Scope.CreateOrLoadBus<ANDOutput_1>();

        [InputBus]
        private readonly Input_1 m_input_1 = Scope.CreateOrLoadBus<Input_1>();
        [InputBus]
        private readonly Input_2 m_input_2 = Scope.CreateOrLoadBus<Input_2>();

        protected override void OnTick() {
            output_1.Value = m_input_1.Value && m_input_2.Value;
        }
    }

    public class ORGate_0 : SimpleProcess {
        [OutputBus]
        public readonly OROutput_0 output_1 = Scope.CreateOrLoadBus<OROutput_0>();

        [InputBus]
        public readonly ANDOutput_0 m_input_0 = Scope.CreateOrLoadBus<ANDOutput_0>();
        [InputBus]
        public readonly ANDOutput_1 m_input_1 = Scope.CreateOrLoadBus<ANDOutput_1>();

        protected override void OnTick() {
            output_1.Value = m_input_0.Value || m_input_1.Value;
        }
    }

    

}