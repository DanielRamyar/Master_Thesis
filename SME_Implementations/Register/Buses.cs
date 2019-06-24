using System;
using SME;

namespace Register {
    [TopLevelInputBus]
    public interface Read_Register_1 : IBus {
        [InitialValue]
        uint register_number {get; set;}
    }

    [TopLevelInputBus]
    public interface Read_Register_2 : IBus {
        [InitialValue]
        uint register_number {get; set;}
    }

}