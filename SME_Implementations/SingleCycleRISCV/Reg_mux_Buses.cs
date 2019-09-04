using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelOutputBus]
    public interface Reg_Mux_Output : IBus {
        [InitialValue]
        int Data {get; set;}
    }

}