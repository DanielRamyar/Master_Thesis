using System;
using SME;

namespace Data_Memory {
    [TopLevelInputBus]
    public interface MemWrite : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }

    [TopLevelInputBus]
    public interface MemRead : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }

    [TopLevelInputBus]
    public interface DM_input : IBus {
        [InitialValue]
        uint Address {get; set;}
    }

    [TopLevelInputBus]
    public interface DM_Data_input : IBus {
        [InitialValue]
        int Data {get; set;}
    }

    [TopLevelOutputBus]
    public interface DM_Output : IBus {
        [InitialValue]
        int Data {get; set;}
    }

}