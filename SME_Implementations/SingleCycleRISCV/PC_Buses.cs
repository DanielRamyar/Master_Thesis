using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelInputBus]
    public interface PC_Input : IBus {
        [InitialValue]
        ulong Address {get; set;}
    }

    [TopLevelOutputBus]
    public interface ProgramCounter_To_InstructionMemory : IBus {
        [InitialValue]
        ulong Address {get; set;}
    }

}