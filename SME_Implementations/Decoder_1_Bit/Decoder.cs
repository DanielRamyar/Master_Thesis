using System;
using SME;

namespace Decoder_1_Bit {
    public class Decoder : SimpleProcess {
        [OutputBus]
		public readonly DecoderOutput output = Scope.CreateOrLoadBus<DecoderOutput>();

        [InputBus]
        private readonly DecoderInput m_input;
		public Decoder(DecoderInput input) {
            m_input = input ?? throw new ArgumentNullException(nameof(input));
		}

        protected override void OnTick() {
            output.out_0 = !m_input.in_0;
            output.out_1 = m_input.in_0;
        }
    }

}