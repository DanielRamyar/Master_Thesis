using System;
using SME;

namespace Program_Counter {
    [TopLevelInputBus]
    public interface PC_Input : IBus {
        [InitialValue]
        uint Address {get; set;}
    }

    [TopLevelInputBus]
    public interface PC_Output : IBus {
        [InitialValue]
        uint Address {get; set;}
    }

}