using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelOutputBus]
    public interface BranchUnit_Output : IBus {
        [InitialValue]
        ulong Address {get; set;}
    }

}