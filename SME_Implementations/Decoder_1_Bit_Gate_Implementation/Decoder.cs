using System;
using SME;

namespace Decoder_1_Bit {
    public class NOTGate_0 : SimpleProcess {
        [OutputBus]
		public readonly NOTOutput_0 output_0 = Scope.CreateBus<NOTOutput_0>();

        [InputBus]
        private readonly DecoderInput_0 m_input;

        public NOTGate_0(DecoderInput_0 input) {
            m_input = input ?? throw new ArgumentNullException(nameof(input));
		}

        protected override void OnTick() {
            output_0.out_Value = !m_input.in_Value;
        }
    }

    public class ANDGate_0 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_0 output_0 = Scope.CreateOrLoadBus<DecoderOutput_0>();

        [InputBus]
        private readonly NOTOutput_0 m_input = Scope.CreateOrLoadBus<NOTOutput_0>();

        public ANDGate_0(NOTOutput_0 input) {
            m_input = input ?? throw new ArgumentNullException(nameof(input));
		}

        protected override void OnTick() {
            output_0.out_Value = m_input.out_Value & true;  // Comparing with true since we only have 1 input
        }
    }

    public class ANDGate_1 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_1 output_1 = Scope.CreateOrLoadBus<DecoderOutput_1>();

        [InputBus]
        private readonly DecoderInput_0 m_input;

        public ANDGate_1(DecoderInput_0 input) {
            m_input = input ?? throw new ArgumentNullException(nameof(input));
		}

        protected override void OnTick() {
            output_1.out_Value = m_input.in_Value & true; // Comparing with true since we only have 1 input
        }
    }

    

}