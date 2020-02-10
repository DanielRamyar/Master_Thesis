using System;
using SME;

namespace ANDGate {
    [TopLevelInputBus]
    public interface GateInputs : IBus {
        [InitialValue]
        bool in_1 {get; set;}
        [InitialValue]
        bool in_2 {get; set;}
    }

    [TopLevelOutputBus]
    public interface GateOutput : IBus {
        [InitialValue]
        bool out_AND {get; set;}
    }
}