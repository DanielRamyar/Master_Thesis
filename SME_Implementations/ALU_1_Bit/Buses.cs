using System;
using SME;

namespace ALU_1_Bit {
    [TopLevelInputBus]
    public interface A : IBus {
        [InitialValue]
        uint Value {get; set;}
    }

    [TopLevelInputBus]
    public interface B : IBus {
        [InitialValue]
        uint Value {get; set;}
    }

    [TopLevelInputBus]
    public interface OperationCode : IBus {
        [InitialValue]
        byte Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface Output : IBus {
        [InitialValue]
        uint Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface Zero_out : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

}