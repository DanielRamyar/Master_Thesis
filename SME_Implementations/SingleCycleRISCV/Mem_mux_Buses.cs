using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelOutputBus]
    public interface Mem_Mux_Output : IBus {
        [InitialValue]
        long Data {get; set;}
    }

}