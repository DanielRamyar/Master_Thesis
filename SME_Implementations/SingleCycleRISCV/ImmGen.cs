using System;
using SME;

namespace SingleCycleRISCV {
    public class ImmGen : SimpleProcess {
        [InputBus]
        private readonly Instruction m_instruction = Scope.CreateOrLoadBus<Instruction>();
        
        [OutputBus]
		public readonly ImmGen_Out output = Scope.CreateOrLoadBus<ImmGen_Out>();

        long temp0;
        uint temp1, temp2, temp3, temp4;

        protected override void OnTick() {
            uint opcode = m_instruction.current & (uint)127; // Extracts opcode from current instruction

            // Checks if opcode is a B-type branching instruction
            if (opcode == 99) { 
                temp1 = m_instruction.current >> 8   & (uint)15;  // Extracts bit 8-11 from instruction
                temp2 = m_instruction.current >> 25  & (uint)63;  // Extracts bit 25-30
                temp3 = m_instruction.current >> 7   & (uint)1;   // Extracts bit 7 from instruction
                temp4 = m_instruction.current >> 31  & (uint)1;   // Extracts bit 11

                // Creates signextended immediate field for B-type instruction
                temp0 = (long)0 | (long)temp4 << 12
                                | (long)temp3 << 11
                                | (long)temp2 << 5
                                | (long)temp1 << 1;

                output.Immediate = temp0;
            }
            // Checks if opcode is a S-type instruction
            if (opcode == 35) { 
                temp1 = m_instruction.current >> 7   & (uint)31;   // Extracts bit 7-11 from instruction
                temp2 = m_instruction.current >> 25  & (uint)127;  // Extracts bit 25-31 from instruction

                // Creates signextended immediate field for S-type instruction
                temp0 = (long)0 | (long)temp2 << 5
                                | (long)temp1;

                output.Immediate = temp0;
            }


        }
    }

}