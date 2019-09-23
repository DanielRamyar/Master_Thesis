using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelOutputBus]
    public interface DM_Output : IBus {
        [InitialValue]
        long Data {get; set;}
    }

}