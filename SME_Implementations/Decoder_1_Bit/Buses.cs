using System;
using SME;

namespace Decoder_1_Bit {
    [TopLevelInputBus]
    public interface DecoderInput : IBus {
        [InitialValue]
        bool in_0 {get; set;}

    }

    [TopLevelOutputBus]
    public interface DecoderOutput : IBus {
        [InitialValue]
        bool out_0 {get; set;}
        [InitialValue]
        bool out_1 {get; set;}

    }
}