using System;
using SME;

namespace Multiplexer_2_Input {
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

    [TopLevelInputBus]
    public interface Input_2 : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface NOTOutput_0 : IBus {
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
    public interface OROutput_0 : IBus {
        [InitialValue]
        bool Value {get; set;}
    }
}