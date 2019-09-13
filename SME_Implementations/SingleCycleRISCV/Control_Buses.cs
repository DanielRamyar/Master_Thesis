using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelInputBus]
    public interface Control_Input : IBus {
        [InitialValue]
        uint Opcode {get; set;}
    }

    [TopLevelOutputBus]
    public interface ALUSrc : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }

    [TopLevelOutputBus]
    public interface MemtoReg : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }

    [TopLevelOutputBus]
    public interface RegWrite : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }

    [TopLevelOutputBus]
    public interface MemRead : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }

    [TopLevelOutputBus]
    public interface MemWrite : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }

    [TopLevelOutputBus]
    public interface Branch : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }

    [TopLevelOutputBus]
    public interface ALU1 : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }

    [TopLevelOutputBus]
    public interface ALU0 : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }

}