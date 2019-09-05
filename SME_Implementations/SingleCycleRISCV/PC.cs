using System;
using SME;

namespace SingleCycleRISCV {
    public class PC : SimpleProcess {
        [OutputBus]
		public readonly ProgramCounter_To_InstructionMemory output = Scope.CreateOrLoadBus<ProgramCounter_To_InstructionMemory>();

        [InputBus]
        private readonly PC_Input m_input = Scope.CreateOrLoadBus<PC_Input>();

        uint address_hold;

        protected override void OnTick() {
            address_hold = m_input.Address;
            output.Address = address_hold;
        }
    }

}