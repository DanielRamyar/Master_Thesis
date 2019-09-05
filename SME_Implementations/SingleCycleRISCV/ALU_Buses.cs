using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelInputBus]
    public interface OperationCode : IBus {
        [InitialValue]
        byte Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface ALU_Output : IBus {
        [InitialValue]
        int Value {get; set;}
    }

    [TopLevelOutputBus]
    public interface Zero_out : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

}