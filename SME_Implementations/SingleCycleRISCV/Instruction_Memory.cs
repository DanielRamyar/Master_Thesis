using System;
using SME;

namespace SingleCycleRISCV {
    public class IM : SimpleProcess {
        [OutputBus]
		public readonly IM_Output output = Scope.CreateOrLoadBus<IM_Output>();

        [InputBus]
        private readonly PC_Output m_input = Scope.CreateOrLoadBus<PC_Output>();

        byte[] Instruction_Memory = {1, 8, 137, 51};

        protected override void OnTick() {
            output.Instruction = 0u | (uint)Instruction_Memory[m_input.Address]     << 24
                                    | (uint)Instruction_Memory[m_input.Address + 1] << 16
                                    | (uint)Instruction_Memory[m_input.Address + 2] << 8
                                    | (uint)Instruction_Memory[m_input.Address + 3];
        }
    }

}