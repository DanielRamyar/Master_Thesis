using System;
using SME;

namespace SingleCycleRISCV {
    public interface GoTo : IBus {
        [InitialValue(true)]
        bool Value {get; set;}
    }

    public interface PCSel : IBus {
        [InitialValue(false)]
        bool Value {get; set;}
    }

    public interface ALU_Output : IBus {
        [InitialValue(345)]
        ulong Address {get; set;}
    }

}