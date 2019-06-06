using System;
using SME;

namespace FullAdder_2_Bit {
    [TopLevelInputBus]
    public interface A : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelInputBus]
    public interface B : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelInputBus]
    public interface CarryIn : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface NOT_A : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface NOT_B : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface NOT_CarryIn : IBus {
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

    [TopLevelOutputBus]
    public interface ANDOutput_4 : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface ANDOutput_5 : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface ANDOutput_6 : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface SUM : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface CarryOut : IBus {
        [InitialValue]
        bool Value {get; set;}
    }
}