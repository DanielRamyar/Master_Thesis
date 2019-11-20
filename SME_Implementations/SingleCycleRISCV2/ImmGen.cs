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

            switch(Opcode) {
                case 0:                                         // Immediate not used
                    output.Immediate = 0;
                    break;
                case 51:                                        // Immediate not used                                
                    output.Immediate = 0;
                    break;
                case 59:                                        // Immediate not used
                    output.Immediate = 0;
                    break;
                case 19:                                        // I-format
                    switch (funct3) {
                        case 1:                                                  // Check if it is a shamt instruction
                            temp1 = m_instruction.Current >> 20 & (uint)0x3F;    // Extracts bit 20-25 from instruction
                            temp0 = (long)temp1;                                 // Creates signextended immediate field for I-format instruction
                            output.Immediate = temp0;
                            break;
                        case 5:                                                  // Check if it is a shamt instruction
                            temp1 = m_instruction.Current >> 20 & (uint)0x3F;    // Extracts bit 20-25 from instruction
                            temp0 = (long)temp1;                                 // Creates signextended immediate field for I-format instruction
                            output.Immediate = temp0;
                            break;
                        default:
                            temp1 = m_instruction.Current >> 20 & (uint)0xFFF;   // Extracts bit 20-31 from instruction
                            short temp5 = (short)((short)(temp1 << 4) >> 4);     // Little hack to retain sign bit of a 12 bit number 
                            temp0 = (long)temp5;                                 // Creates signextended immediate field for I-format instruction
                            output.Immediate = temp5;
                            break;
                    }
                    break;
                case 27:                                        // I-format Word
                    switch (funct3) {
                        case 1:                                                  // Check if it is a shamt instruction
                            temp1 = m_instruction.Current >> 20 & (uint)0x1F;    // Extracts bit 20-24 from instruction [0:4]
                            temp2 = m_instruction.Current >> 25 & (uint)0x7F;    // Extracts bit 25-31 from instruction [11:5]
                            if (temp2 != 0) {
                                Console.WriteLine($"The shamt exceded the 5 bit limit error");
                            }
                            temp0 = (long)temp1;                                 // Creates signextended immediate field for I-format word instruction
                            output.Immediate = temp0;
                            break;
                        case 5:                                                  // Check if it is a shamt instruction
                            temp1 = m_instruction.Current >> 20 & (uint)0x1F;    // Extracts bit 20-24 from instruction [0:4]
                            temp2 = m_instruction.Current >> 25 & (uint)0x7F;    // Extracts bit 25-31 from instruction [11:5]
                            if (temp2 != 0) {
                                Console.WriteLine($"The shamt exceded the 5 bit limit error");
                            }
                            temp0 = (long)temp1;                                 // Creates signextended immediate field for I-format word instruction
                            output.Immediate = temp0;
                            break;
                        default:
                            temp1 = m_instruction.Current >> 20 & (uint)0xFFF;   // Extracts bit 20-31 from instruction
                            short temp5 = (short)((short)(temp1 << 4) >> 4);     // Little hack to retain sign bit of a 12 bit number 
                            temp0 = (long)temp5;                                 // Creates signextended immediate field for I-format instruction
                            output.Immediate = temp0;
                            break;
                    }
                    break;
                case 3:                                         // LOAD
                    temp1 = m_instruction.Current >> 20 & (uint)0xFFF;       // Extracts bit 20-31 from instruction
                    temp0 = (long)temp1;                                     // Creates signextended immediate field for I-format instruction
                    output.Immediate = temp0;
                    break;
                case 103:                                       // JALR
                    temp1 = m_instruction.Current >> 20 & (uint)0xFFF;   // Extracts bit 20-31 from instruction
                    temp0 = (long)temp1;                                 // Creates signextended immediate field for I-format instruction
                    output.Immediate = temp0;
                    break;
                case 35:                                        // S-format
                    temp1 = m_instruction.Current >> 7 & (uint)0x1F;         // Extracts bit 7-11 from instruction
                    temp2 = m_instruction.Current >> 25 & (uint)0x7F;        // Extracts bit 25-31 from instruction
       
                    temp0 = (long)temp2 << 5 | (long)temp1;                  // Creates signextended immediate field for S-format instruction
                    temp0 = (temp0 << 52) >> 52;                             // Little hack to retain sign bit of a 12 bit number 
                    output.Immediate = temp0;
                    break;
                case 99:                                        // B-format
                    temp1 = m_instruction.Current >> 8 & (uint)0xF;          // Extracts bit 8-11 from instruction [1-4]
                    temp2 = m_instruction.Current >> 25 & (uint)0x3F;        // Extracts bit 25-30 from instruction [5-10]
                    temp3 = m_instruction.Current >> 7 & (uint)0x1;          // Extracts bit 7 from instruction [11]
                    temp4 = m_instruction.Current >> 31 & (uint)0x1;         // Extracts bit 31 from instruction [12]

                    temp0 = (long)temp4 << 12 | (long)temp3 << 11            // Creates signextended immediate field for B-format instruction
                                              | (long)temp2 << 5 
                                              | (long)temp1 << 1;                  
                    output.Immediate = temp0;
                    break;
                case 23:                                        // AUIPC
                    temp1 = m_instruction.Current >> 12 & (uint)0xFFFFF;     // Extracts bit 12-31 from instruction [12-31]
                    temp0 = (long)temp1 << 12;                               // Creates signextended immediate field for U-format instruction                
                    output.Immediate = temp0;
                    break;
                case 55:                                        // LUI
                    temp1 = m_instruction.Current >> 12 & (uint)0xFFFFF;     // Extracts bit 12-31 from instruction [12-31]
                    temp0 = (long)temp1 << 12;                               // Creates signextended immediate field for U-format instruction                
                    output.Immediate = temp0;
                    break;
                case 111:                                       // JAL
                    temp1 = m_instruction.Current >> 21 & (uint)0x3FF;       // Extracts bit 21-30 from instruction [1-10]
                    temp2 = m_instruction.Current >> 20 & (uint)0x1;         // Extracts bit 20 from instruction [11]
                    temp3 = m_instruction.Current >> 12 & (uint)0xFF;        // Extracts bit 12-19 from instruction [12-19]
                    temp4 = m_instruction.Current >> 31 & (uint)0x1;         // Extracts bit 31 from instruction [20]

                    temp0 = (long)temp4 << 20 | (long)temp3 << 12            // Creates signextended immediate field for J-format instruction
                                            | (long)temp2 << 11 
                                            | (long)temp1 << 1;                  
                    output.Immediate = temp0;
                    break;
            }
        }
    }
}