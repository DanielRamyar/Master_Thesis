using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelInputBus]
    public interface Read_Register_1 : IBus {
        [InitialValue]
        uint address {get; set;}
    }

    [TopLevelInputBus]
    public interface Read_Register_2 : IBus {
        [InitialValue]
        uint address {get; set;}
    }

    [TopLevelInputBus]
    public interface Write_Register : IBus {
        [InitialValue]
        uint address {get; set;}
    }

    [TopLevelInputBus]
    public interface Write_Data : IBus {
        [InitialValue]
        int Data {get; set;}
    }

    [TopLevelInputBus]
    public interface Write_Control : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }

    [TopLevelOutputBus]
    public interface Read_Output_1 : IBus {
        [InitialValue]
        int Data {get; set;}
    }

    [TopLevelOutputBus]
    public interface Read_Output_2 : IBus {
        [InitialValue]
        int Data {get; set;}
    }

}