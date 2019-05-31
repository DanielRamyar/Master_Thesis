using System;
using SME;

namespace Decoder_2_Bit {
    [TopLevelInputBus]
    public interface Input_0 : IBus {
        [InitialValue]
        bool Value {get; set;}
    }
    [TopLevelInputBus]
    public interface Input_1 : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface NOTOutput_0 : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface NOTOutput_1 : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface ANDOutput_0 : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface ANDOutput_1 : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface ANDOutput_2 : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface ANDOutput_3 : IBus {
        [InitialValue]
        bool Value {get; set;}
    }
}