using System;
using SME;

namespace SingleCycleRISCV {
    public class splitter : SimpleProcess {
        [InputBus]
        private readonly IM_Output m_input = Scope.CreateOrLoadBus<IM_Output>();

        protected override void OnTick() {
            
        }
    }

}