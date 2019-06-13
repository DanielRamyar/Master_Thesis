using System;
using SME;

namespace ALU_1_Bit {
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
    public interface OperationCode : IBus {
        [InitialValue]
        byte Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface Output : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

}