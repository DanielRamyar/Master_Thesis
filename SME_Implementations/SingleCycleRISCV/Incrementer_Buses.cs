using System;
using SME;

namespace SingleCycleRISCV {
    [TopLevelOutputBus]
    public interface Incrementer_Output : IBus {
        [InitialValue]
        uint Address {get; set;}
    }

}