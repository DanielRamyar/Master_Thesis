using System;
using SME;

namespace SingleCycleRISCV {
    public class Incrementer : SimpleProcess {
        [InputBus]
        private readonly ProgramCounter_To_InstructionMemory m_input = Scope.CreateOrLoadBus<ProgramCounter_To_InstructionMemory>();

        [OutputBus]
		public readonly Incrementer_Output output = Scope.CreateOrLoadBus<Incrementer_Output>();

        ulong temp;

        protected override void OnTick() {
            temp = m_input.Address + 4;
            output.Address = temp;
        }
    }

}