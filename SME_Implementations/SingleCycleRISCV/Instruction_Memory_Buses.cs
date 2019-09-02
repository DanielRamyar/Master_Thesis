using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelInputBus]
    public interface IM_Input : IBus {
        [InitialValue]
        uint Address {get; set;}
    }

    [TopLevelOutputBus]
    public interface IM_Output : IBus {
        [InitialValue]
        uint Instruction {get; set;}
    }

}