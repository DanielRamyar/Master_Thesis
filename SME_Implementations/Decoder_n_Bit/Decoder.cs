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
    
    public class NOTGate_2 : SimpleProcess {
        [OutputBus]
        public readonly DecoderNOTInput_2 output_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>();

        [InputBus]
        private readonly DecoderInput_2 m_input = Scope.CreateOrLoadBus<DecoderInput_2>();

        protected override void OnTick() {
            output_2.Value = !m_input.Value;
        }
    }
    
    public class NOTGate_3 : SimpleProcess {
        [OutputBus]
        public readonly DecoderNOTInput_3 output_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>();

        [InputBus]
        private readonly DecoderInput_3 m_input = Scope.CreateOrLoadBus<DecoderInput_3>();

        protected override void OnTick() {
            output_3.Value = !m_input.Value;
        }
    }
    
    public class NOTGate_4 : SimpleProcess {
        [OutputBus]
        public readonly DecoderNOTInput_4 output_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>();

        [InputBus]
        private readonly DecoderInput_4 m_input = Scope.CreateOrLoadBus<DecoderInput_4>();

        protected override void OnTick() {
            output_4.Value = !m_input.Value;
        }
    }
    
    public class NOTGate_5 : SimpleProcess {
        [OutputBus]
        public readonly DecoderNOTInput_5 output_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>();

        [InputBus]
        private readonly DecoderInput_5 m_input = Scope.CreateOrLoadBus<DecoderInput_5>();

        protected override void OnTick() {
            output_5.Value = !m_input.Value;
        }
    }
    
    public class NOTGate_6 : SimpleProcess {
        [OutputBus]
        public readonly DecoderNOTInput_6 output_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>();

        [InputBus]
        private readonly DecoderInput_6 m_input = Scope.CreateOrLoadBus<DecoderInput_6>();

        protected override void OnTick() {
            output_6.Value = !m_input.Value;
        }
    }
    
    public class NOTGate_7 : SimpleProcess {
        [OutputBus]
        public readonly DecoderNOTInput_7 output_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>();

        [InputBus]
        private readonly DecoderInput_7 m_input = Scope.CreateOrLoadBus<DecoderInput_7>();

        protected override void OnTick() {
            output_7.Value = !m_input.Value;
        }
    }
    
    
    public class ANDGate_0 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_0 output_0 = Scope.CreateOrLoadBus<DecoderOutput_0>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_0.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_1 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_1 output_1 = Scope.CreateOrLoadBus<DecoderOutput_1>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_1.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_2 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_2 output_2 = Scope.CreateOrLoadBus<DecoderOutput_2>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_2.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_3 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_3 output_3 = Scope.CreateOrLoadBus<DecoderOutput_3>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_3.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_4 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_4 output_4 = Scope.CreateOrLoadBus<DecoderOutput_4>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_4.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_5 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_5 output_5 = Scope.CreateOrLoadBus<DecoderOutput_5>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_5.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_6 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_6 output_6 = Scope.CreateOrLoadBus<DecoderOutput_6>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_6.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_7 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_7 output_7 = Scope.CreateOrLoadBus<DecoderOutput_7>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_7.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_8 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_8 output_8 = Scope.CreateOrLoadBus<DecoderOutput_8>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_8.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_9 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_9 output_9 = Scope.CreateOrLoadBus<DecoderOutput_9>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_9.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_10 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_10 output_10 = Scope.CreateOrLoadBus<DecoderOutput_10>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_10.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_11 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_11 output_11 = Scope.CreateOrLoadBus<DecoderOutput_11>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_11.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_12 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_12 output_12 = Scope.CreateOrLoadBus<DecoderOutput_12>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_12.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_13 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_13 output_13 = Scope.CreateOrLoadBus<DecoderOutput_13>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_13.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_14 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_14 output_14 = Scope.CreateOrLoadBus<DecoderOutput_14>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_14.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_15 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_15 output_15 = Scope.CreateOrLoadBus<DecoderOutput_15>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_15.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_16 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_16 output_16 = Scope.CreateOrLoadBus<DecoderOutput_16>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_16.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_17 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_17 output_17 = Scope.CreateOrLoadBus<DecoderOutput_17>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_17.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_18 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_18 output_18 = Scope.CreateOrLoadBus<DecoderOutput_18>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_18.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_19 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_19 output_19 = Scope.CreateOrLoadBus<DecoderOutput_19>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_19.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_20 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_20 output_20 = Scope.CreateOrLoadBus<DecoderOutput_20>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_20.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_21 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_21 output_21 = Scope.CreateOrLoadBus<DecoderOutput_21>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_21.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_22 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_22 output_22 = Scope.CreateOrLoadBus<DecoderOutput_22>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_22.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_23 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_23 output_23 = Scope.CreateOrLoadBus<DecoderOutput_23>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_23.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_24 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_24 output_24 = Scope.CreateOrLoadBus<DecoderOutput_24>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_24.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_25 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_25 output_25 = Scope.CreateOrLoadBus<DecoderOutput_25>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_25.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_26 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_26 output_26 = Scope.CreateOrLoadBus<DecoderOutput_26>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_26.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_27 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_27 output_27 = Scope.CreateOrLoadBus<DecoderOutput_27>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_27.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_28 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_28 output_28 = Scope.CreateOrLoadBus<DecoderOutput_28>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_28.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_29 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_29 output_29 = Scope.CreateOrLoadBus<DecoderOutput_29>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_29.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_30 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_30 output_30 = Scope.CreateOrLoadBus<DecoderOutput_30>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_30.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_31 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_31 output_31 = Scope.CreateOrLoadBus<DecoderOutput_31>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_31.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_32 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_32 output_32 = Scope.CreateOrLoadBus<DecoderOutput_32>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_32.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_33 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_33 output_33 = Scope.CreateOrLoadBus<DecoderOutput_33>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_33.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_34 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_34 output_34 = Scope.CreateOrLoadBus<DecoderOutput_34>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_34.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_35 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_35 output_35 = Scope.CreateOrLoadBus<DecoderOutput_35>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_35.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_36 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_36 output_36 = Scope.CreateOrLoadBus<DecoderOutput_36>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_36.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_37 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_37 output_37 = Scope.CreateOrLoadBus<DecoderOutput_37>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_37.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_38 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_38 output_38 = Scope.CreateOrLoadBus<DecoderOutput_38>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_38.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_39 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_39 output_39 = Scope.CreateOrLoadBus<DecoderOutput_39>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_39.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_40 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_40 output_40 = Scope.CreateOrLoadBus<DecoderOutput_40>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_40.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_41 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_41 output_41 = Scope.CreateOrLoadBus<DecoderOutput_41>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_41.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_42 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_42 output_42 = Scope.CreateOrLoadBus<DecoderOutput_42>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_42.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_43 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_43 output_43 = Scope.CreateOrLoadBus<DecoderOutput_43>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_43.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_44 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_44 output_44 = Scope.CreateOrLoadBus<DecoderOutput_44>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_44.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_45 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_45 output_45 = Scope.CreateOrLoadBus<DecoderOutput_45>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_45.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_46 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_46 output_46 = Scope.CreateOrLoadBus<DecoderOutput_46>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_46.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_47 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_47 output_47 = Scope.CreateOrLoadBus<DecoderOutput_47>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_47.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_48 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_48 output_48 = Scope.CreateOrLoadBus<DecoderOutput_48>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_48.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_49 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_49 output_49 = Scope.CreateOrLoadBus<DecoderOutput_49>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_49.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_50 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_50 output_50 = Scope.CreateOrLoadBus<DecoderOutput_50>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_50.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_51 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_51 output_51 = Scope.CreateOrLoadBus<DecoderOutput_51>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_51.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_52 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_52 output_52 = Scope.CreateOrLoadBus<DecoderOutput_52>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_52.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_53 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_53 output_53 = Scope.CreateOrLoadBus<DecoderOutput_53>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_53.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_54 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_54 output_54 = Scope.CreateOrLoadBus<DecoderOutput_54>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_54.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_55 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_55 output_55 = Scope.CreateOrLoadBus<DecoderOutput_55>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_55.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_56 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_56 output_56 = Scope.CreateOrLoadBus<DecoderOutput_56>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_56.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_57 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_57 output_57 = Scope.CreateOrLoadBus<DecoderOutput_57>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_57.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_58 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_58 output_58 = Scope.CreateOrLoadBus<DecoderOutput_58>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_58.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_59 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_59 output_59 = Scope.CreateOrLoadBus<DecoderOutput_59>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_59.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_60 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_60 output_60 = Scope.CreateOrLoadBus<DecoderOutput_60>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_60.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_61 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_61 output_61 = Scope.CreateOrLoadBus<DecoderOutput_61>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_61.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_62 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_62 output_62 = Scope.CreateOrLoadBus<DecoderOutput_62>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_62.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_63 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_63 output_63 = Scope.CreateOrLoadBus<DecoderOutput_63>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_63.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_64 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_64 output_64 = Scope.CreateOrLoadBus<DecoderOutput_64>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_64.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_65 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_65 output_65 = Scope.CreateOrLoadBus<DecoderOutput_65>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_65.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_66 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_66 output_66 = Scope.CreateOrLoadBus<DecoderOutput_66>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_66.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_67 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_67 output_67 = Scope.CreateOrLoadBus<DecoderOutput_67>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_67.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_68 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_68 output_68 = Scope.CreateOrLoadBus<DecoderOutput_68>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_68.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_69 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_69 output_69 = Scope.CreateOrLoadBus<DecoderOutput_69>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_69.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_70 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_70 output_70 = Scope.CreateOrLoadBus<DecoderOutput_70>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_70.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_71 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_71 output_71 = Scope.CreateOrLoadBus<DecoderOutput_71>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_71.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_72 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_72 output_72 = Scope.CreateOrLoadBus<DecoderOutput_72>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_72.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_73 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_73 output_73 = Scope.CreateOrLoadBus<DecoderOutput_73>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_73.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_74 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_74 output_74 = Scope.CreateOrLoadBus<DecoderOutput_74>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_74.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_75 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_75 output_75 = Scope.CreateOrLoadBus<DecoderOutput_75>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_75.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_76 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_76 output_76 = Scope.CreateOrLoadBus<DecoderOutput_76>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_76.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_77 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_77 output_77 = Scope.CreateOrLoadBus<DecoderOutput_77>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_77.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_78 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_78 output_78 = Scope.CreateOrLoadBus<DecoderOutput_78>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_78.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_79 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_79 output_79 = Scope.CreateOrLoadBus<DecoderOutput_79>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_79.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_80 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_80 output_80 = Scope.CreateOrLoadBus<DecoderOutput_80>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_80.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_81 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_81 output_81 = Scope.CreateOrLoadBus<DecoderOutput_81>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_81.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_82 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_82 output_82 = Scope.CreateOrLoadBus<DecoderOutput_82>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_82.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_83 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_83 output_83 = Scope.CreateOrLoadBus<DecoderOutput_83>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_83.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_84 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_84 output_84 = Scope.CreateOrLoadBus<DecoderOutput_84>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_84.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_85 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_85 output_85 = Scope.CreateOrLoadBus<DecoderOutput_85>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_85.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_86 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_86 output_86 = Scope.CreateOrLoadBus<DecoderOutput_86>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_86.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_87 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_87 output_87 = Scope.CreateOrLoadBus<DecoderOutput_87>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_87.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_88 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_88 output_88 = Scope.CreateOrLoadBus<DecoderOutput_88>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_88.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_89 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_89 output_89 = Scope.CreateOrLoadBus<DecoderOutput_89>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_89.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_90 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_90 output_90 = Scope.CreateOrLoadBus<DecoderOutput_90>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_90.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_91 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_91 output_91 = Scope.CreateOrLoadBus<DecoderOutput_91>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_91.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_92 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_92 output_92 = Scope.CreateOrLoadBus<DecoderOutput_92>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_92.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_93 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_93 output_93 = Scope.CreateOrLoadBus<DecoderOutput_93>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_93.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_94 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_94 output_94 = Scope.CreateOrLoadBus<DecoderOutput_94>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_94.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_95 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_95 output_95 = Scope.CreateOrLoadBus<DecoderOutput_95>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_95.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_96 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_96 output_96 = Scope.CreateOrLoadBus<DecoderOutput_96>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_96.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_97 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_97 output_97 = Scope.CreateOrLoadBus<DecoderOutput_97>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_97.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_98 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_98 output_98 = Scope.CreateOrLoadBus<DecoderOutput_98>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_98.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_99 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_99 output_99 = Scope.CreateOrLoadBus<DecoderOutput_99>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_99.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_100 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_100 output_100 = Scope.CreateOrLoadBus<DecoderOutput_100>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_100.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_101 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_101 output_101 = Scope.CreateOrLoadBus<DecoderOutput_101>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_101.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_102 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_102 output_102 = Scope.CreateOrLoadBus<DecoderOutput_102>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_102.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_103 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_103 output_103 = Scope.CreateOrLoadBus<DecoderOutput_103>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_103.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_104 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_104 output_104 = Scope.CreateOrLoadBus<DecoderOutput_104>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_104.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_105 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_105 output_105 = Scope.CreateOrLoadBus<DecoderOutput_105>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_105.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_106 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_106 output_106 = Scope.CreateOrLoadBus<DecoderOutput_106>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_106.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_107 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_107 output_107 = Scope.CreateOrLoadBus<DecoderOutput_107>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_107.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_108 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_108 output_108 = Scope.CreateOrLoadBus<DecoderOutput_108>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_108.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_109 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_109 output_109 = Scope.CreateOrLoadBus<DecoderOutput_109>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_109.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_110 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_110 output_110 = Scope.CreateOrLoadBus<DecoderOutput_110>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_110.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_111 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_111 output_111 = Scope.CreateOrLoadBus<DecoderOutput_111>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_111.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_112 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_112 output_112 = Scope.CreateOrLoadBus<DecoderOutput_112>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_112.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_113 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_113 output_113 = Scope.CreateOrLoadBus<DecoderOutput_113>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_113.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_114 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_114 output_114 = Scope.CreateOrLoadBus<DecoderOutput_114>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_114.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_115 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_115 output_115 = Scope.CreateOrLoadBus<DecoderOutput_115>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_115.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_116 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_116 output_116 = Scope.CreateOrLoadBus<DecoderOutput_116>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_116.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_117 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_117 output_117 = Scope.CreateOrLoadBus<DecoderOutput_117>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_117.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_118 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_118 output_118 = Scope.CreateOrLoadBus<DecoderOutput_118>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_118.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_119 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_119 output_119 = Scope.CreateOrLoadBus<DecoderOutput_119>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_119.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_120 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_120 output_120 = Scope.CreateOrLoadBus<DecoderOutput_120>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_120.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_121 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_121 output_121 = Scope.CreateOrLoadBus<DecoderOutput_121>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_121.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_122 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_122 output_122 = Scope.CreateOrLoadBus<DecoderOutput_122>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_122.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_123 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_123 output_123 = Scope.CreateOrLoadBus<DecoderOutput_123>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_123.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_124 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_124 output_124 = Scope.CreateOrLoadBus<DecoderOutput_124>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_124.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_125 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_125 output_125 = Scope.CreateOrLoadBus<DecoderOutput_125>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_125.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_126 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_126 output_126 = Scope.CreateOrLoadBus<DecoderOutput_126>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_126.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_127 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_127 output_127 = Scope.CreateOrLoadBus<DecoderOutput_127>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderNOTInput_7 m_input_NOT_7 = Scope.CreateOrLoadBus<DecoderNOTInput_7>(); 

        protected override void OnTick() {
            output_127.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_NOT_7.Value ;
        }
    }

    public class ANDGate_128 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_128 output_128 = Scope.CreateOrLoadBus<DecoderOutput_128>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_128.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_129 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_129 output_129 = Scope.CreateOrLoadBus<DecoderOutput_129>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_129.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_130 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_130 output_130 = Scope.CreateOrLoadBus<DecoderOutput_130>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_130.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_131 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_131 output_131 = Scope.CreateOrLoadBus<DecoderOutput_131>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_131.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_132 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_132 output_132 = Scope.CreateOrLoadBus<DecoderOutput_132>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_132.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_133 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_133 output_133 = Scope.CreateOrLoadBus<DecoderOutput_133>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_133.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_134 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_134 output_134 = Scope.CreateOrLoadBus<DecoderOutput_134>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_134.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_135 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_135 output_135 = Scope.CreateOrLoadBus<DecoderOutput_135>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_135.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_136 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_136 output_136 = Scope.CreateOrLoadBus<DecoderOutput_136>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_136.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_137 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_137 output_137 = Scope.CreateOrLoadBus<DecoderOutput_137>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_137.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_138 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_138 output_138 = Scope.CreateOrLoadBus<DecoderOutput_138>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_138.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_139 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_139 output_139 = Scope.CreateOrLoadBus<DecoderOutput_139>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_139.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_140 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_140 output_140 = Scope.CreateOrLoadBus<DecoderOutput_140>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_140.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_141 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_141 output_141 = Scope.CreateOrLoadBus<DecoderOutput_141>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_141.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_142 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_142 output_142 = Scope.CreateOrLoadBus<DecoderOutput_142>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_142.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_143 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_143 output_143 = Scope.CreateOrLoadBus<DecoderOutput_143>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_143.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_144 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_144 output_144 = Scope.CreateOrLoadBus<DecoderOutput_144>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_144.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_145 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_145 output_145 = Scope.CreateOrLoadBus<DecoderOutput_145>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_145.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_146 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_146 output_146 = Scope.CreateOrLoadBus<DecoderOutput_146>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_146.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_147 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_147 output_147 = Scope.CreateOrLoadBus<DecoderOutput_147>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_147.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_148 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_148 output_148 = Scope.CreateOrLoadBus<DecoderOutput_148>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_148.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_149 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_149 output_149 = Scope.CreateOrLoadBus<DecoderOutput_149>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_149.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_150 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_150 output_150 = Scope.CreateOrLoadBus<DecoderOutput_150>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_150.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_151 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_151 output_151 = Scope.CreateOrLoadBus<DecoderOutput_151>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_151.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_152 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_152 output_152 = Scope.CreateOrLoadBus<DecoderOutput_152>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_152.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_153 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_153 output_153 = Scope.CreateOrLoadBus<DecoderOutput_153>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_153.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_154 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_154 output_154 = Scope.CreateOrLoadBus<DecoderOutput_154>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_154.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_155 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_155 output_155 = Scope.CreateOrLoadBus<DecoderOutput_155>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_155.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_156 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_156 output_156 = Scope.CreateOrLoadBus<DecoderOutput_156>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_156.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_157 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_157 output_157 = Scope.CreateOrLoadBus<DecoderOutput_157>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_157.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_158 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_158 output_158 = Scope.CreateOrLoadBus<DecoderOutput_158>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_158.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_159 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_159 output_159 = Scope.CreateOrLoadBus<DecoderOutput_159>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_159.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_160 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_160 output_160 = Scope.CreateOrLoadBus<DecoderOutput_160>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_160.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_161 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_161 output_161 = Scope.CreateOrLoadBus<DecoderOutput_161>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_161.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_162 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_162 output_162 = Scope.CreateOrLoadBus<DecoderOutput_162>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_162.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_163 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_163 output_163 = Scope.CreateOrLoadBus<DecoderOutput_163>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_163.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_164 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_164 output_164 = Scope.CreateOrLoadBus<DecoderOutput_164>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_164.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_165 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_165 output_165 = Scope.CreateOrLoadBus<DecoderOutput_165>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_165.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_166 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_166 output_166 = Scope.CreateOrLoadBus<DecoderOutput_166>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_166.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_167 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_167 output_167 = Scope.CreateOrLoadBus<DecoderOutput_167>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_167.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_168 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_168 output_168 = Scope.CreateOrLoadBus<DecoderOutput_168>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_168.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_169 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_169 output_169 = Scope.CreateOrLoadBus<DecoderOutput_169>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_169.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_170 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_170 output_170 = Scope.CreateOrLoadBus<DecoderOutput_170>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_170.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_171 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_171 output_171 = Scope.CreateOrLoadBus<DecoderOutput_171>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_171.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_172 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_172 output_172 = Scope.CreateOrLoadBus<DecoderOutput_172>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_172.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_173 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_173 output_173 = Scope.CreateOrLoadBus<DecoderOutput_173>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_173.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_174 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_174 output_174 = Scope.CreateOrLoadBus<DecoderOutput_174>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_174.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_175 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_175 output_175 = Scope.CreateOrLoadBus<DecoderOutput_175>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_175.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_176 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_176 output_176 = Scope.CreateOrLoadBus<DecoderOutput_176>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_176.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_177 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_177 output_177 = Scope.CreateOrLoadBus<DecoderOutput_177>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_177.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_178 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_178 output_178 = Scope.CreateOrLoadBus<DecoderOutput_178>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_178.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_179 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_179 output_179 = Scope.CreateOrLoadBus<DecoderOutput_179>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_179.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_180 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_180 output_180 = Scope.CreateOrLoadBus<DecoderOutput_180>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_180.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_181 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_181 output_181 = Scope.CreateOrLoadBus<DecoderOutput_181>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_181.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_182 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_182 output_182 = Scope.CreateOrLoadBus<DecoderOutput_182>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_182.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_183 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_183 output_183 = Scope.CreateOrLoadBus<DecoderOutput_183>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_183.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_184 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_184 output_184 = Scope.CreateOrLoadBus<DecoderOutput_184>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_184.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_185 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_185 output_185 = Scope.CreateOrLoadBus<DecoderOutput_185>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_185.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_186 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_186 output_186 = Scope.CreateOrLoadBus<DecoderOutput_186>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_186.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_187 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_187 output_187 = Scope.CreateOrLoadBus<DecoderOutput_187>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_187.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_188 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_188 output_188 = Scope.CreateOrLoadBus<DecoderOutput_188>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_188.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_189 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_189 output_189 = Scope.CreateOrLoadBus<DecoderOutput_189>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_189.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_190 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_190 output_190 = Scope.CreateOrLoadBus<DecoderOutput_190>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_190.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_191 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_191 output_191 = Scope.CreateOrLoadBus<DecoderOutput_191>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderNOTInput_6 m_input_NOT_6 = Scope.CreateOrLoadBus<DecoderNOTInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_191.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_NOT_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_192 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_192 output_192 = Scope.CreateOrLoadBus<DecoderOutput_192>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_192.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_193 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_193 output_193 = Scope.CreateOrLoadBus<DecoderOutput_193>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_193.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_194 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_194 output_194 = Scope.CreateOrLoadBus<DecoderOutput_194>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_194.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_195 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_195 output_195 = Scope.CreateOrLoadBus<DecoderOutput_195>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_195.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_196 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_196 output_196 = Scope.CreateOrLoadBus<DecoderOutput_196>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_196.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_197 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_197 output_197 = Scope.CreateOrLoadBus<DecoderOutput_197>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_197.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_198 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_198 output_198 = Scope.CreateOrLoadBus<DecoderOutput_198>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_198.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_199 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_199 output_199 = Scope.CreateOrLoadBus<DecoderOutput_199>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_199.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_200 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_200 output_200 = Scope.CreateOrLoadBus<DecoderOutput_200>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_200.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_201 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_201 output_201 = Scope.CreateOrLoadBus<DecoderOutput_201>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_201.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_202 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_202 output_202 = Scope.CreateOrLoadBus<DecoderOutput_202>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_202.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_203 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_203 output_203 = Scope.CreateOrLoadBus<DecoderOutput_203>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_203.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_204 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_204 output_204 = Scope.CreateOrLoadBus<DecoderOutput_204>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_204.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_205 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_205 output_205 = Scope.CreateOrLoadBus<DecoderOutput_205>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_205.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_206 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_206 output_206 = Scope.CreateOrLoadBus<DecoderOutput_206>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_206.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_207 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_207 output_207 = Scope.CreateOrLoadBus<DecoderOutput_207>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_207.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_208 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_208 output_208 = Scope.CreateOrLoadBus<DecoderOutput_208>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_208.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_209 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_209 output_209 = Scope.CreateOrLoadBus<DecoderOutput_209>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_209.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_210 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_210 output_210 = Scope.CreateOrLoadBus<DecoderOutput_210>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_210.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_211 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_211 output_211 = Scope.CreateOrLoadBus<DecoderOutput_211>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_211.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_212 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_212 output_212 = Scope.CreateOrLoadBus<DecoderOutput_212>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_212.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_213 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_213 output_213 = Scope.CreateOrLoadBus<DecoderOutput_213>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_213.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_214 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_214 output_214 = Scope.CreateOrLoadBus<DecoderOutput_214>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_214.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_215 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_215 output_215 = Scope.CreateOrLoadBus<DecoderOutput_215>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_215.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_216 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_216 output_216 = Scope.CreateOrLoadBus<DecoderOutput_216>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_216.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_217 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_217 output_217 = Scope.CreateOrLoadBus<DecoderOutput_217>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_217.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_218 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_218 output_218 = Scope.CreateOrLoadBus<DecoderOutput_218>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_218.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_219 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_219 output_219 = Scope.CreateOrLoadBus<DecoderOutput_219>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_219.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_220 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_220 output_220 = Scope.CreateOrLoadBus<DecoderOutput_220>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_220.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_221 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_221 output_221 = Scope.CreateOrLoadBus<DecoderOutput_221>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_221.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_222 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_222 output_222 = Scope.CreateOrLoadBus<DecoderOutput_222>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_222.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_223 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_223 output_223 = Scope.CreateOrLoadBus<DecoderOutput_223>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderNOTInput_5 m_input_NOT_5 = Scope.CreateOrLoadBus<DecoderNOTInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_223.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_NOT_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_224 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_224 output_224 = Scope.CreateOrLoadBus<DecoderOutput_224>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_224.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_225 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_225 output_225 = Scope.CreateOrLoadBus<DecoderOutput_225>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_225.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_226 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_226 output_226 = Scope.CreateOrLoadBus<DecoderOutput_226>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_226.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_227 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_227 output_227 = Scope.CreateOrLoadBus<DecoderOutput_227>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_227.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_228 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_228 output_228 = Scope.CreateOrLoadBus<DecoderOutput_228>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_228.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_229 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_229 output_229 = Scope.CreateOrLoadBus<DecoderOutput_229>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_229.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_230 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_230 output_230 = Scope.CreateOrLoadBus<DecoderOutput_230>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_230.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_231 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_231 output_231 = Scope.CreateOrLoadBus<DecoderOutput_231>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_231.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_232 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_232 output_232 = Scope.CreateOrLoadBus<DecoderOutput_232>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_232.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_233 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_233 output_233 = Scope.CreateOrLoadBus<DecoderOutput_233>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_233.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_234 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_234 output_234 = Scope.CreateOrLoadBus<DecoderOutput_234>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_234.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_235 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_235 output_235 = Scope.CreateOrLoadBus<DecoderOutput_235>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_235.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_236 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_236 output_236 = Scope.CreateOrLoadBus<DecoderOutput_236>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_236.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_237 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_237 output_237 = Scope.CreateOrLoadBus<DecoderOutput_237>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_237.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_238 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_238 output_238 = Scope.CreateOrLoadBus<DecoderOutput_238>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_238.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_239 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_239 output_239 = Scope.CreateOrLoadBus<DecoderOutput_239>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderNOTInput_4 m_input_NOT_4 = Scope.CreateOrLoadBus<DecoderNOTInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_239.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_NOT_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_240 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_240 output_240 = Scope.CreateOrLoadBus<DecoderOutput_240>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_240.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_241 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_241 output_241 = Scope.CreateOrLoadBus<DecoderOutput_241>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_241.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_242 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_242 output_242 = Scope.CreateOrLoadBus<DecoderOutput_242>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_242.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_243 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_243 output_243 = Scope.CreateOrLoadBus<DecoderOutput_243>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_243.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_244 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_244 output_244 = Scope.CreateOrLoadBus<DecoderOutput_244>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_244.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_245 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_245 output_245 = Scope.CreateOrLoadBus<DecoderOutput_245>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_245.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_246 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_246 output_246 = Scope.CreateOrLoadBus<DecoderOutput_246>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_246.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_247 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_247 output_247 = Scope.CreateOrLoadBus<DecoderOutput_247>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderNOTInput_3 m_input_NOT_3 = Scope.CreateOrLoadBus<DecoderNOTInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_247.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_NOT_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_248 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_248 output_248 = Scope.CreateOrLoadBus<DecoderOutput_248>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_248.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_249 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_249 output_249 = Scope.CreateOrLoadBus<DecoderOutput_249>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_249.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_250 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_250 output_250 = Scope.CreateOrLoadBus<DecoderOutput_250>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_250.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_251 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_251 output_251 = Scope.CreateOrLoadBus<DecoderOutput_251>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderNOTInput_2 m_input_NOT_2 = Scope.CreateOrLoadBus<DecoderNOTInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_251.Value = m_input_0.Value && m_input_1.Value && m_input_NOT_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_252 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_252 output_252 = Scope.CreateOrLoadBus<DecoderOutput_252>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_252.Value = m_input_NOT_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_253 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_253 output_253 = Scope.CreateOrLoadBus<DecoderOutput_253>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderNOTInput_1 m_input_NOT_1 = Scope.CreateOrLoadBus<DecoderNOTInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_253.Value = m_input_0.Value && m_input_NOT_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_254 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_254 output_254 = Scope.CreateOrLoadBus<DecoderOutput_254>();

        [InputBus]
        private readonly DecoderNOTInput_0 m_input_NOT_0 = Scope.CreateOrLoadBus<DecoderNOTInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_254.Value = m_input_NOT_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }

    public class ANDGate_255 : SimpleProcess {
        [OutputBus]
        public readonly DecoderOutput_255 output_255 = Scope.CreateOrLoadBus<DecoderOutput_255>();

        [InputBus]
        private readonly DecoderInput_0 m_input_0 = Scope.CreateOrLoadBus<DecoderInput_0>(); 

        [InputBus]
        private readonly DecoderInput_1 m_input_1 = Scope.CreateOrLoadBus<DecoderInput_1>(); 

        [InputBus]
        private readonly DecoderInput_2 m_input_2 = Scope.CreateOrLoadBus<DecoderInput_2>(); 

        [InputBus]
        private readonly DecoderInput_3 m_input_3 = Scope.CreateOrLoadBus<DecoderInput_3>(); 

        [InputBus]
        private readonly DecoderInput_4 m_input_4 = Scope.CreateOrLoadBus<DecoderInput_4>(); 

        [InputBus]
        private readonly DecoderInput_5 m_input_5 = Scope.CreateOrLoadBus<DecoderInput_5>(); 

        [InputBus]
        private readonly DecoderInput_6 m_input_6 = Scope.CreateOrLoadBus<DecoderInput_6>(); 

        [InputBus]
        private readonly DecoderInput_7 m_input_7 = Scope.CreateOrLoadBus<DecoderInput_7>(); 

        protected override void OnTick() {
            output_255.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value && m_input_3.Value && m_input_4.Value && m_input_5.Value && m_input_6.Value && m_input_7.Value ;
        }
    }
}