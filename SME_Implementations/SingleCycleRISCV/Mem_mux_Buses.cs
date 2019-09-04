using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelOutputBus]
    public interface Mem_Mux_Output : IBus {
        [InitialValue]
        int Data {get; set;}
    }

}