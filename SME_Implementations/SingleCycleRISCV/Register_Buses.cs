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

    [TopLevelOutputBus]
    public interface Reg1_To_ALU : IBus {
        [InitialValue]
        int Data {get; set;}
    }

    [TopLevelOutputBus]
    public interface Reg2_To_Mux : IBus {
        [InitialValue]
        int Data {get; set;}
    }

}