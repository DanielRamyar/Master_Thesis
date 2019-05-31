using System;
using SME;

namespace Decoder_2_Bit {
    public class NOTGate_0 : SimpleProcess {
        [OutputBus]
		public readonly NOTOutput_0 output_0 = Scope.CreateBus<NOTOutput_0>();

        [InputBus]
        private readonly Input_0 m_input;

        public NOTGate_0(Input_0 input) {
            m_input = input ?? throw new ArgumentNullException(nameof(input));
		}

        protected override void OnTick() {
            output_0.Value = !m_input.Value;
        }
    }
    public class NOTGate_1 : SimpleProcess {
        [OutputBus]
		public readonly NOTOutput_1 output_1 = Scope.CreateBus<NOTOutput_1>();

        [InputBus]
        private readonly Input_1 m_input;

        public NOTGate_1(Input_1 input) {
            m_input = input ?? throw new ArgumentNullException(nameof(input));
		}

        protected override void OnTick() {
            output_1.Value = !m_input.Value;
        }
    }

    public class ANDGate_0 : SimpleProcess {
        [OutputBus]
        public readonly ANDOutput_0 output_0 = Scope.CreateOrLoadBus<ANDOutput_0>();

        [InputBus]
        private readonly NOTOutput_0 m_input_NOT_0;
        [InputBus]
        private readonly NOTOutput_1 m_input_NOT_1;

        public ANDGate_0(NOTOutput_0 input_NOT_0, NOTOutput_1 input_NOT_1) {
            m_input_NOT_0 = input_NOT_0 ?? throw new ArgumentNullException(nameof(input_NOT_0));
            m_input_NOT_1 = input_NOT_1 ?? throw new ArgumentNullException(nameof(input_NOT_1));
		}

        protected override void OnTick() {
            output_0.Value = m_input_NOT_0.Value && m_input_NOT_1.Value;
        }
    }

    public class ANDGate_1 : SimpleProcess {
        [OutputBus]
        public readonly ANDOutput_1 output_1 = Scope.CreateOrLoadBus<ANDOutput_1>();

        [InputBus]
        private readonly Input_0 m_input;
        [InputBus]
        private readonly NOTOutput_1 m_input_NOT;

        public ANDGate_1(Input_0 input, NOTOutput_1 input_NOT) {
            m_input = input ?? throw new ArgumentNullException(nameof(input));
            m_input_NOT = input_NOT ?? throw new ArgumentNullException(nameof(input_NOT));
		}

        protected override void OnTick() {
            output_1.Value = m_input.Value && m_input_NOT.Value;
        }
    }

    public class ANDGate_2 : SimpleProcess {
        [OutputBus]
        public readonly ANDOutput_2 output_2 = Scope.CreateOrLoadBus<ANDOutput_2>();

        [InputBus]
        private readonly Input_1 m_input;
        [InputBus]
        private readonly NOTOutput_0 m_input_NOT;

        public ANDGate_2(Input_1 input, NOTOutput_0 input_NOT) {
            m_input = input ?? throw new ArgumentNullException(nameof(input));
            m_input_NOT = input_NOT ?? throw new ArgumentNullException(nameof(input_NOT));
		}

        protected override void OnTick() {
            output_2.Value = m_input.Value && m_input_NOT.Value;
        }
    }

    public class ANDGate_3 : SimpleProcess {
        [OutputBus]
        public readonly ANDOutput_3 output_3 = Scope.CreateOrLoadBus<ANDOutput_3>();

        [InputBus]
        private readonly Input_0 m_input_0;
        [InputBus]
        private readonly Input_1 m_input_1;

        public ANDGate_3(Input_0 input_0, Input_1 input_1) {
            m_input_0 = input_0 ?? throw new ArgumentNullException(nameof(input_0));
            m_input_1 = input_1 ?? throw new ArgumentNullException(nameof(input_1));
		}

        protected override void OnTick() {
            output_3.Value = m_input_0.Value && m_input_1.Value;
        }
    }

    

}