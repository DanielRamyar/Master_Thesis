using System;
using SME;

namespace SingleCycleRISCV {
    public interface Immediate : IBus {
        [InitialValue]
        long Immediate {get; set;}
    }

    public class ImmGen : SimpleProcess {
        [InputBus]
        private readonly Instruction m_instruction = Scope.CreateOrLoadBus<Instruction>();
        
        [OutputBus]
		public readonly Immediate output = Scope.CreateOrLoadBus<Immediate>();

        long temp0;
        uint temp1, temp2, temp3, temp4;

        protected override void OnTick() {
            uint Opcode = m_instruction.Current & (uint)0x7F;            // Extracts opcode from current instruction
            uint funct3 = m_instruction.Current >> 12 & (uint)0x7;       // Extracts funct3 from current instruction

            // Checks if opcode is a I-format instruction or I-format Word instruction
            if (Opcode == 19) { 
                if (funct3 == 1 || funct3 == 5) {                        // Check it is a shamt instruction
                    temp1 = m_instruction.Current >> 20 & (uint)0x3F;    // Extracts bit 20-25 from instruction
                    temp0 = (long)temp1;                                 // Creates signextended immediate field for I-format instruction
                    output.Immediate = temp0;
                }
                else {
                    temp1 = m_instruction.Current >> 20 & (uint)0xFFF;   // Extracts bit 20-31 from instruction
                    temp0 = (long)temp1;                                 // Creates signextended immediate field for I-format instruction
                    output.Immediate = temp0;
                }
            }
            // Checks if opcode is a I-format Word instruction
            else if (Opcode == 27) {
                if (funct3 == 1 || funct3 == 5) {                        // Check it is a shamt instruction
                    temp1 = m_instruction.Current >> 20 & (uint)0x1F;    // Extracts bit 20-24 from instruction [0:5]
                    temp2 = m_instruction.Current >> 25 & (uint)0x7F;    // Extracts bit 25-31 from instruction [11:6]
                    if (temp2 != 0) {
                        Console.WriteLine($"The shamt exceded the 5 bit limit error");
                    }
                    temp0 = (long)temp1;                                 // Creates signextended immediate field for I-format word instruction
                    output.Immediate = temp0;
                }
                else {
                    temp1 = m_instruction.Current >> 20 & (uint)0xFFF;   // Extracts bit 20-31 from instruction
                    temp0 = (long)temp1;                                 // Creates signextended immediate field for I-format instruction
                    output.Immediate = temp0;
                }
            }
            // Checks if opcode is a I-format load instruction
            else if (Opcode == 3) {
                temp1 = m_instruction.Current >> 20 & (uint)0xFFF;       // Extracts bit 20-31 from instruction
                temp0 = (long)temp1;                                     // Creates signextended immediate field for I-format instruction
                output.Immediate = temp0;
            }
            // Check if opcode is a S-format instruction
            else if (Opcode == 35) {
                temp1 = m_instruction.Current >> 7 & (uint)0x1F;         // Extracts bit 7-11 from instruction
                temp2 = m_instruction.Current >> 25 & (uint)0x7F;        // Extracts bit 25-31 from instruction

                temp0 = (long)temp2 << 5 | (long)temp1;                  // Creates signextended immediate field for S-format instruction
                output.Immediate = temp0;
            }
            // Check if opcode is a B-format instruction
            else if (Opcode == 99) {
                temp1 = m_instruction.Current >> 8 & (uint)0xF;          // Extracts bit 8-11 from instruction [1-4]
                temp2 = m_instruction.Current >> 25 & (uint)0x3F;        // Extracts bit 25-30 from instruction [5-10]
                temp3 = m_instruction.Current >> 7 & (uint)0x1;          // Extracts bit 7 from instruction [11]
                temp4 = m_instruction.Current >> 31 & (uint)0x1;         // Extracts bit 31 from instruction [12]

                temp0 = (long)temp4 << 12 | (long)temp3 << 11            // Creates signextended immediate field for B-format instruction
                                          | (long)temp2 << 5 
                                          | (long)temp1 << 1;                  
                output.Immediate = temp0;
            }
            // Check if opcode is a U-format instruction
            else if (Opcode == 55 || Opcode == 23) {
                temp1 = m_instruction.Current >> 12 & (uint)0xFFFFF;     // Extracts bit 12-31 from instruction [12-31]
                temp0 = (long)temp1 << 12;                               // Creates signextended immediate field for U-format instruction                
                output.Immediate = temp0;
            }
            // Check if opcode is a J-format instruction
            else if (Opcode == 111) {
                temp1 = m_instruction.Current >> 21 & (uint)0x3FF;       // Extracts bit 21-30 from instruction [1-10]
                temp2 = m_instruction.Current >> 20 & (uint)0x1;         // Extracts bit 20 from instruction [11]
                temp3 = m_instruction.Current >> 12 & (uint)0xFF;        // Extracts bit 12-19 from instruction [12-19]
                temp4 = m_instruction.Current >> 31 & (uint)0x1;         // Extracts bit 31 from instruction [20]

                temp0 = (long)temp4 << 20 | (long)temp3 << 12            // Creates signextended immediate field for J-format instruction
                                          | (long)temp2 << 11 
                                          | (long)temp1 << 1;                  
                output.Immediate = temp0;
            }
            // Immediate not used
            else {
                output.Immediate = 0;
            }
        }
    }
}