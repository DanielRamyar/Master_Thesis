using System;
using SME;

namespace SingleCycleRISCV {
    public class IM : SimpleProcess {
        [OutputBus]
		public readonly IM_Output output = Scope.CreateOrLoadBus<IM_Output>();

        [InputBus]
        private readonly PC_Output m_input = Scope.CreateOrLoadBus<PC_Output>();

        private readonly byte[] Instruction_Memory = {1, 8, 137, 51};

        protected override void OnTick() {
            uint temp_address = m_input.Address;

            output.Instruction = 0u | (uint)Instruction_Memory[temp_address]     << 24
                                    | (uint)Instruction_Memory[temp_address + 1] << 16
                                    | (uint)Instruction_Memory[temp_address + 2] << 8
                                    | (uint)Instruction_Memory[temp_address + 3];
        }
    }

}