using System;
using SME;

namespace Instruction_Memory {
    public class IM : SimpleProcess {
        [OutputBus]
		public readonly IM_Output output = Scope.CreateOrLoadBus<IM_Output>();

        [InputBus]
        private readonly IM_Input m_input = Scope.CreateOrLoadBus<IM_Input>();

        uint[] Instruction_Memory = {3, 7, 9, 8, 11, 4, 97};

        protected override void OnTick() {
            output.Instruction = Instruction_Memory[m_input.Address];
        }
    }

}