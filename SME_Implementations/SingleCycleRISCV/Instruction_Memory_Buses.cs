using System;
using SME;

namespace Instruction_Memory {
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