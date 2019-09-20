using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelOutputBus]
    public interface Reg_Mux_Output : IBus {
        [InitialValue]
        long Data {get; set;}
    }

}