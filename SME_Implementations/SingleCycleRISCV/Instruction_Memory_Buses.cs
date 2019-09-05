using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelOutputBus]
    public interface IM_To_Reg : IBus {
        [InitialValue]
        uint Instruction {get; set;}
    }

}