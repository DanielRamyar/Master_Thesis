using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelOutputBus]
    public interface Instruction : IBus {
        [InitialValue]
        uint current {get; set;}
    }

    [TopLevelOutputBus]
    public interface CPU : IBus {
        [InitialValue(true)]
        bool Running {get; set;}
    }

}