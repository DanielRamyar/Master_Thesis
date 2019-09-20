using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelOutputBus]
    public interface WB_Data : IBus {
        [InitialValue]
        long Data {get; set;}
    }
    [TopLevelOutputBus]
    public interface WB_RegisterWrite : IBus {
        [InitialValue]
        uint address {get; set;}
    }
    [TopLevelOutputBus]
    public interface WB_WriteControl : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }
}