using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelInputBus]
    public interface ImmGen_Out : IBus {
        [InitialValue]
        long Immediate {get; set;}
    }

}