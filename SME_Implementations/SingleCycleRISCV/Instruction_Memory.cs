using System;
using SME;

namespace SingleCycleRISCV {
    public class IM : SimpleProcess {
        [OutputBus]
		public readonly IM_Output output = Scope.CreateOrLoadBus<IM_Output>();

        [InputBus]
        private readonly PC_Output m_input = Scope.CreateOrLoadBus<PC_Output>();

        uint[] Instruction_Memory = {3, 7, 9, 8, 11, 4, 97};

        protected override void OnTick() {
            output.Instruction = Instruction_Memory[m_input.Address];
        }
    }

}