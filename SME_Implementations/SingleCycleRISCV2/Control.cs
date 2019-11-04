using System;
using SME;

namespace SingleCycleRISCV {
    // Control Buses
    public interface PCSel : IBus {
        [InitialValue]
        bool Value {get; set;}
    }
    public interface RegWrite : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }

    public interface ALUSrc1 : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }
    public interface ALUSrc2 : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }
    public interface ALUOP : IBus {
        [InitialValue]
        byte Value {get; set;}
    }
    public interface MemRead : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }
    public interface MemWrite : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }
    public interface BJSIGN : IBus {
        [InitialValue]
        byte Value {get; set;}
    }
    public interface WBSel : IBus {
        [InitialValue]
        byte Value {get; set;}
    }
    public interface SizeAndSign : IBus {
        [InitialValue]
        byte Value {get; set;}
    }

    public class Control : SimpleProcess {
        [InputBus]
        private readonly Instruction m_instruction = Scope.CreateOrLoadBus<Instruction>();

        [OutputBus]
		public readonly PCSel PCSel = Scope.CreateOrLoadBus<PCSel>();
        [OutputBus]
		public readonly RegWrite RegWrite = Scope.CreateOrLoadBus<RegWrite>();
        [OutputBus]
		public readonly ALUSrc1 ALUSrc1 = Scope.CreateOrLoadBus<ALUSrc1>();
        [OutputBus]
		public readonly ALUSrc2 ALUSrc2 = Scope.CreateOrLoadBus<ALUSrc2>();
        [OutputBus]
		public readonly ALUOP ALUOP = Scope.CreateOrLoadBus<ALUOP>();
        [OutputBus]
		public readonly BJSIGN BJSIGN = Scope.CreateOrLoadBus<BJSIGN>();
        [OutputBus]
		public readonly MemRead MemRead = Scope.CreateOrLoadBus<MemRead>();
        [OutputBus]
		public readonly MemWrite MemWrite = Scope.CreateOrLoadBus<MemWrite>();
        [OutputBus]
		public readonly WBSel WBSel = Scope.CreateOrLoadBus<WBSel>();
        [OutputBus]
		public readonly SizeAndSign SizeAndSign = Scope.CreateOrLoadBus<SizeAndSign>();


        protected override void OnTick() {
            uint Opcode = m_instruction.Current       & (uint)0x7F;  // Extracts opcode from current instruction
            uint funct3 = m_instruction.Current >> 12 & (uint)0x7;   // Extracts funct3 from current instruction
            uint funct7 = m_instruction.Current >> 25 & (uint)0x7F;  // Extracts funct7 from current instruction
            
            if (Opcode == 51) {                           // R-format
                PCSel.Value = false;
                RegWrite.Enable = true;
                ALUSrc1.Enable = false;
                ALUSrc2.Enable = false;
                BJSIGN.Value = 0;
                SizeAndSign.Value = 0;
                MemWrite.Enable = false;
                MemRead.Enable = false;
                WBSel.Value = 0;

                if (funct3 == 0 && funct7 == 0) {         // ADD
                    ALUOP.Value = 0;
                }
                else if (funct3 == 0 && funct7 == 32) {   // Subtract
                    ALUOP.Value = 1;
                }
                else if (funct3 == 7 && funct7 == 0) {    // AND
                    ALUOP.Value = 2;
                }
                else if (funct3 == 6 && funct7 == 0) {    // OR
                    ALUOP.Value = 3;
                }
                else if (funct3 == 4 && funct7 == 0) {    // XOR
                    ALUOP.Value = 4;
                }
                else if (funct3 == 1 && funct7 == 0) {    // SLL
                    ALUOP.Value = 5;
                }
                else if (funct3 == 2 && funct7 == 0) {    // SLT
                    ALUOP.Value = 6;
                }
                else if (funct3 == 3 && funct7 == 0) {    // SLT (U)
                    ALUOP.Value = 7;
                }
                else if (funct3 == 5 && funct7 == 0) {    // SRL
                    ALUOP.Value = 8;
                }
                else if (funct3 == 5 && funct7 == 32) {   // SRA
                    ALUOP.Value = 9;
                }
            }
            else if (Opcode == 59) {                      // R-format Word
                PCSel.Value = false;
                RegWrite.Enable = true;
                ALUSrc1.Enable = false;
                ALUSrc2.Enable = false;
                BJSIGN.Value = 0;
                SizeAndSign.Value = 0;
                MemWrite.Enable = false;
                MemRead.Enable = false;
                WBSel.Value = 0;

                if (funct3 == 0 && funct7 == 0) {         // ADD Word
                    ALUOP.Value = 10;
                }
                else if (funct3 == 0 && funct7 == 32) {   // Subtract Word
                    ALUOP.Value = 11;
                }
                else if (funct3 == 1 && funct7 == 0) {    // SLL Word
                    ALUOP.Value = 12;
                }
                else if (funct3 == 5 && funct7 == 0) {    // SRL Word
                    ALUOP.Value = 13;
                }
                else if (funct3 == 5 && funct7 == 32) {   // SRA Word
                    ALUOP.Value = 14;
                }
            }
            else if (Opcode == 19) {                      // I-format
                PCSel.Value = false;
                RegWrite.Enable = true;
                ALUSrc1.Enable = false;
                ALUSrc2.Enable = true;
                BJSIGN.Value = 0;
                SizeAndSign.Value = 0;
                MemWrite.Enable = false;
                MemRead.Enable = false;
                WBSel.Value = 0;

                if (funct3 == 0) {                        // ADDI
                    ALUOP.Value = 0;
                }
                else if (funct3 == 7) {                   // ANDI
                    ALUOP.Value = 2;
                }
                else if (funct3 == 6) {                   // ORI
                    ALUOP.Value = 3;
                }
                else if (funct3 == 4) {                   // XORI
                    ALUOP.Value = 4;
                }
                else if (funct3 == 1 && funct7 == 0) {    // SLLI
                    ALUOP.Value = 5;
                }
                else if (funct3 == 2) {                   // SLTI
                    ALUOP.Value = 6;
                }
                else if (funct3 == 3) {                   // SLT (U)
                    ALUOP.Value = 7;
                }
                else if (funct3 == 5 && funct7 == 0) {    // SRLI
                    ALUOP.Value = 8;
                }
                else if (funct3 == 5 && funct7 == 32) {   // SRAI
                    ALUOP.Value = 9;
                }
            }
            else if (Opcode == 27) {                      // I-format Word
                PCSel.Value = false;
                RegWrite.Enable = true;
                ALUSrc1.Enable = false;
                ALUSrc2.Enable = true;
                BJSIGN.Value = 0;
                SizeAndSign.Value = 0;
                MemWrite.Enable = false;
                MemRead.Enable = false;
                WBSel.Value = 0;

                if (funct3 == 0) {                        // ADDI Word
                    ALUOP.Value = 10;
                }
                else if (funct3 == 1 && funct7 == 0) {    // SLLI Word
                    ALUOP.Value = 12;
                }
                else if (funct3 == 5 && funct7 == 0) {    // SRLI Word
                    ALUOP.Value = 13;
                }
                else if (funct3 == 5 && funct7 == 32) {   // SRAI Word
                    ALUOP.Value = 14;
                }
            }
            else if (Opcode == 3) {                       // LOAD
                PCSel.Value = false;
                RegWrite.Enable = true;
                ALUSrc1.Enable = false;
                ALUSrc2.Enable = true;
                ALUOP.Value = 0;
                BJSIGN.Value = 0;
                MemWrite.Enable = false;
                MemRead.Enable = true;
                WBSel.Value = 1;

                if (funct3 == 0) {                        // LOAD Byte
                    SizeAndSign.Value = 3;
                }
                else if (funct3 == 1) {                   // LOAD Half
                    SizeAndSign.Value = 2;
                }
                else if (funct3 == 2) {                   // LOAD Word
                    SizeAndSign.Value = 1;
                }
                else if (funct3 == 3) {                   // LOAD Double
                    SizeAndSign.Value = 0;
                }
                else if (funct3 == 4) {                   // LOAD Byte (U)
                    SizeAndSign.Value = 4;
                }
                else if (funct3 == 5) {                   // LOAD Half (U)
                    SizeAndSign.Value = 5;
                }
                else if (funct3 == 6) {                   // LOAD Word (U)
                    SizeAndSign.Value = 6;
                }
            }
            else if (Opcode == 103) {                     // JALR
                PCSel.Value = true;
                RegWrite.Enable = true;
                ALUSrc1.Enable = false;
                ALUSrc2.Enable = true;
                ALUOP.Value = 0;
                BJSIGN.Value = 6;
                SizeAndSign.Value = 0;
                MemWrite.Enable = false;
                MemRead.Enable = false;
                WBSel.Value = 2;
            }
            else if (Opcode == 35) {                      // S-Format
                PCSel.Value = false;
                RegWrite.Enable = false;
                ALUSrc1.Enable = false;
                ALUSrc2.Enable = true;
                ALUOP.Value = 0;
                BJSIGN.Value = 0;
                MemWrite.Enable = true;
                MemRead.Enable = false;
                WBSel.Value = 0;

                if (funct3 == 0) {                        // Store Byte
                    SizeAndSign.Value = 3;
                }
                else if (funct3 == 1) {                   // Store Half
                    SizeAndSign.Value = 2;
                }
                else if (funct3 == 2) {                   // Store Word
                    SizeAndSign.Value = 1;
                }
                else if (funct3 == 3) {                   // Store Double
                    SizeAndSign.Value = 0;
                }
            }
            else if (Opcode == 99) {                      // B-Format
                PCSel.Value = true;
                RegWrite.Enable = false;
                ALUSrc1.Enable = true;
                ALUSrc2.Enable = true;
                ALUOP.Value = 0;
                SizeAndSign.Value = 0;
                MemWrite.Enable = false;
                MemRead.Enable = false;
                WBSel.Value = 0;

                if (funct3 == 0) {                        // BEQ
                    BJSIGN.Value = 0;
                }
                else if (funct3 == 1) {                   // BNE
                    BJSIGN.Value = 1;
                }
                else if (funct3 == 4) {                   // BLT
                    BJSIGN.Value = 2;
                }
                else if (funct3 == 5) {                   // BGE
                    BJSIGN.Value = 3;
                }
                else if (funct3 == 6) {                   // BLTU
                    BJSIGN.Value = 4;
                }
                else if (funct3 == 7) {                   // BGEU
                    BJSIGN.Value = 5;
                }
            }
            else if (Opcode == 23) {                      // AUIPC
                PCSel.Value = false;
                RegWrite.Enable = true;
                ALUSrc1.Enable = true;
                ALUSrc2.Enable = true;
                ALUOP.Value = 0;
                BJSIGN.Value = 0;
                SizeAndSign.Value = 0;
                MemWrite.Enable = false;
                MemRead.Enable = false;
                WBSel.Value = 0;
            }
            else if (Opcode == 55) {                      // LUI
                PCSel.Value = false;
                RegWrite.Enable = true;
                ALUSrc1.Enable = false;
                ALUSrc2.Enable = true;
                ALUOP.Value = 15;
                BJSIGN.Value = 0;
                SizeAndSign.Value = 0;
                MemWrite.Enable = false;
                MemRead.Enable = false;
                WBSel.Value = 0;
            }
            else if (Opcode == 111) {                     // JAL
                PCSel.Value = true;
                RegWrite.Enable = true;
                ALUSrc1.Enable = true;
                ALUSrc2.Enable = true;
                ALUOP.Value = 0;
                BJSIGN.Value = 6;
                SizeAndSign.Value = 0;
                MemWrite.Enable = false;
                MemRead.Enable = false;
                WBSel.Value = 2;
            }
        }
    }
}