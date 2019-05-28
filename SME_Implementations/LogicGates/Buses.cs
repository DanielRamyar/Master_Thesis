using System;
using SME;

namespace LogicGates {
    [TopLevelInputBus]
    public interface GateInputs : IBus {
        bool in_1 {get; set;}
        bool in_2 {get; set;}
    }

    [TopLevelOutputBus]
    public interface GateOutput : IBus {
        [InitialValue]
        bool out_AND {get; set;}
        [InitialValue]
        bool out_OR {get; set;}
    }
}