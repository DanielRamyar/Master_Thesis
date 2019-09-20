using System;
using SME;

namespace SingleCycleRISCV {
    public class BranchUnit : SimpleProcess {
        [InputBus]
        private readonly ImmGen_Out m_branch = Scope.CreateOrLoadBus<ImmGen_Out>();
        [InputBus]
        private readonly ProgramCounter_To_InstructionMemory m_PCtoIM = Scope.CreateOrLoadBus<ProgramCounter_To_InstructionMemory>();

        [OutputBus]
		public readonly BranchUnit_Output output = Scope.CreateOrLoadBus<BranchUnit_Output>();

        long temp0; 
        ulong temp1;

        protected override void OnTick() {
            temp0 = m_branch.Immediate << 1; // We need shift by 1 according to architecture
            temp1 = m_PCtoIM.Address + (ulong)temp0;
            output.Address = temp1;
        }
    }

}