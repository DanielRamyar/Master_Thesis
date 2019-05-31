using System;
using SME;

namespace Decoder_n_Bit {
    
    public class NOTGate_0 : SimpleProcess {
        [OutputBus]
        public readonly DecoderNOTInput_0 output_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>();

        [InputBus]
        private readonly DecoderInput_0 m_input = Scope.CreateOrLoadBus<DecoderInput_0>();

        protected override void OnTick() {
            output_0.Value = !m_input.Value;
        }
    }
    
    public class NOTGate_1 : SimpleProcess {
        [OutputBus]
        public readonly DecoderNOTInput_1 output_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>();

        [InputBus]
        private readonly DecoderInput_1 m_input = Scope.CreateOrLoadBus<DecoderInput_1>();

        protected override void OnTick() {
            output_1.Value = !m_input.Value;
        }
    }
    
    
    public class ANDGate_0 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_0 output_0 = Scope.CreateOrLoadBus<DecoderOutput_0>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        protected override void OnTick() {
            output_0.Value = m_input_NOT_0.Value && m_input_NOT_1.Value ;
        }
    }

    public class ANDGate_1 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_1 output_1 = Scope.CreateOrLoadBus<DecoderOutput_1>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        protected override void OnTick() {
            output_1.Value = m_input_0.Value && m_input_NOT_1.Value ;
        }
    }

    public class ANDGate_2 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_2 output_2 = Scope.CreateOrLoadBus<DecoderOutput_2>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        protected override void OnTick() {
            output_2.Value = m_input_NOT_0.Value && m_input_1.Value ;
        }
    }

    public class ANDGate_3 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_3 output_3 = Scope.CreateOrLoadBus<DecoderOutput_3>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        protected override void OnTick() {
            output_3.Value = m_input_0.Value && m_input_1.Value ;
        }
    }
}