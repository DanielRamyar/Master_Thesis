using System;
using SME;

namespace Decoder_n_Bit {
    
    [TopLevelInputBus]
    public interface DecoderInput_0 : IBus {
        [InitialValue]
        bool in_Value {get; set;}
    }
        
    [TopLevelOutputBus]
    public interface DecoderOutput_0 : IBus {
        [InitialValue]
        bool out_Value {get; set;}
    }
    
    [TopLevelOutputBus]
    public interface DecoderOutput_1 : IBus {
        [InitialValue]
        bool out_Value {get; set;}
    }
    
}