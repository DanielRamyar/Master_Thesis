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
            
            switch (Opcode) {
                case 0:                                         // Zero opcode
                    PCSel.Value = false;
                    RegWrite.Enable = false;
                    ALUSrc1.Enable = false;
                    ALUSrc2.Enable = false;
                    ALUOP.Value = 0;
                    BJSIGN.Value = 0;
                    SizeAndSign.Value = 0;
                    MemWrite.Enable = false;
                    MemRead.Enable = false;
                    WBSel.Value = 0;
                    break;
                case 51:                                        // R-format
                    PCSel.Value = false;
                    RegWrite.Enable = true;
                    ALUSrc1.Enable = false;
                    ALUSrc2.Enable = false;
                    BJSIGN.Value = 0;
                    SizeAndSign.Value = 0;
                    MemWrite.Enable = false;
                    MemRead.Enable = false;
                    WBSel.Value = 0;

                    switch (funct3) {
                        case 0:
                            switch (funct7) {
                                case 0:                         // ADD
                                    ALUOP.Value = 0;
                                    break;
                                case 32:                        // Subtract
                                    ALUOP.Value = 1;
                                    break;
                            }
                            break;
                        case 7:                                 // AND
                            ALUOP.Value = 2;
                            break;
                        case 6:                                 // OR
                            ALUOP.Value = 3;
                            break;
                        case 4:                                 // XOR
                            ALUOP.Value = 4;
                            break;
                        case 1:                                 // SLL
                            ALUOP.Value = 5;
                            break;
                        case 2:                                 // SLT
                            ALUOP.Value = 6;
                            break;
                        case 3:                                 // SLT (U)
                            ALUOP.Value = 7;
                            break;
                        case 5:
                            switch (funct7) {
                                case 0:                         //SRL
                                    ALUOP.Value = 8;
                                    break;
                                case 32:                        //SRA
                                    ALUOP.Value = 9;
                                    break;
                            }
                            break;
                        
                    }
                    break;
                case 59:                                        // R-format Word
                    PCSel.Value = false;
                    RegWrite.Enable = true;
                    ALUSrc1.Enable = false;
                    ALUSrc2.Enable = false;
                    BJSIGN.Value = 0;
                    SizeAndSign.Value = 0;
                    MemWrite.Enable = false;
                    MemRead.Enable = false;
                    WBSel.Value = 0;

                    switch (funct3) {
                        case 0:
                            switch (funct7) {
                                case 0:                         // ADD Word
                                    ALUOP.Value = 10;
                                    break;
                                case 32:                        // Subtract Word
                                    ALUOP.Value = 11;
                                    break;
                            }
                            break;
                        case 1:                                 //SLL
                            ALUOP.Value = 12;
                            break;
                        case 5:
                            switch (funct7) {
                                case 0:                         // SRL Word
                                    ALUOP.Value = 13;
                                    break;
                                case 32:                        // SRA Word
                                    ALUOP.Value = 14;
                                    break;
                            }
                            break;
                    }
                    break;
                case 19:                                        // I-format
                    PCSel.Value = false;
                    RegWrite.Enable = true;
                    ALUSrc1.Enable = false;
                    ALUSrc2.Enable = true;
                    BJSIGN.Value = 0;
                    SizeAndSign.Value = 0;
                    MemWrite.Enable = false;
                    MemRead.Enable = false;
                    WBSel.Value = 0;

                    switch (funct3) {
                        case 0:                                 // ADDI                
                            ALUOP.Value = 0;
                            break;
                        case 7:                                 // ANDI
                            ALUOP.Value = 2;
                            break;
                        case 6:                                 // ORI
                            ALUOP.Value = 3;
                            break;
                        case 4:                                 // XORI
                            ALUOP.Value = 4;
                            break;
                        case 1:                                 // SLLI
                            ALUOP.Value = 5;
                            break;
                        case 2:                                 // SLTI
                            ALUOP.Value = 6;
                            break;
                        case 3:                                 // SLTI (U)
                            ALUOP.Value = 7;
                            break;
                        case 5:
                            switch (funct7) {
                                case 0:                         //SRLI
                                    ALUOP.Value = 8;
                                    break;
                                case 32:                        //SRAI
                                    ALUOP.Value = 9;
                                    break;
                            }
                            break;
                    }
                    break;
                case 27:                                        // I-format Word
                    PCSel.Value = false;
                    RegWrite.Enable = true;
                    ALUSrc1.Enable = false;
                    ALUSrc2.Enable = true;
                    BJSIGN.Value = 0;
                    SizeAndSign.Value = 0;
                    MemWrite.Enable = false;
                    MemRead.Enable = false;
                    WBSel.Value = 0;

                    switch (funct3) {
                        case 0:                                 // ADDI Word
                            ALUOP.Value = 10;
                            break;
                        case 1:                                 // SLLI
                            ALUOP.Value = 12;
                            break;
                        case 5:
                            switch (funct7) {
                                case 0:                         // SRLI Word
                                    ALUOP.Value = 13;
                                    break;
                                case 32:                        // SRAI Word
                                    ALUOP.Value = 14;
                                    break;
                            }
                            break;
                    }
                    break;
                case 3:                                         // LOAD
                    PCSel.Value = false;
                    RegWrite.Enable = true;
                    ALUSrc1.Enable = false;
                    ALUSrc2.Enable = true;
                    ALUOP.Value = 0;
                    BJSIGN.Value = 0;
                    MemWrite.Enable = false;
                    MemRead.Enable = true;
                    WBSel.Value = 1;

                    switch (funct3) {
                        case 0:                                 // LOAD Byte
                            SizeAndSign.Value = 3;
                            break;
                        case 1:                                 // LOAD Half
                            SizeAndSign.Value = 2;
                            break;
                        case 2:                                 // LOAD Word
                            SizeAndSign.Value = 1;
                            break;
                        case 3:                                 // LOAD Double
                            SizeAndSign.Value = 0;
                            break;
                        case 4:                                 // LOAD Byte (U)
                            SizeAndSign.Value = 4;
                            break;
                        case 5:                                 // LOAD Half (U)
                            SizeAndSign.Value = 5;
                            break;
                        case 6:                                 // LOAD Word (U)
                            SizeAndSign.Value = 6;
                            break;
                    }
                    break;
                case 103:                                       // JALR
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
                    break;
                case 35:                                        // S-format
                    PCSel.Value = false;
                    RegWrite.Enable = false;
                    ALUSrc1.Enable = false;
                    ALUSrc2.Enable = true;
                    ALUOP.Value = 0;
                    BJSIGN.Value = 0;
                    MemWrite.Enable = true;
                    MemRead.Enable = false;
                    WBSel.Value = 0;

                    switch (funct3) {
                        case 0:                                 // Store Byte
                            SizeAndSign.Value = 3;
                            break;
                        case 1:                                 // Store Half
                            SizeAndSign.Value = 2;
                            break;
                        case 2:                                 // Store Word
                            SizeAndSign.Value = 1;
                            break;
                        case 3:                                 // Store Double
                            SizeAndSign.Value = 0;
                            break;
                    }
                    break;
                case 99:                                        // B-format
                    PCSel.Value = true;
                    RegWrite.Enable = false;
                    ALUSrc1.Enable = true;
                    ALUSrc2.Enable = true;
                    ALUOP.Value = 0;
                    SizeAndSign.Value = 0;
                    MemWrite.Enable = false;
                    MemRead.Enable = false;
                    WBSel.Value = 0;

                    switch (funct3) {
                        case 0:                                 // LOAD Byte
                            BJSIGN.Value = 0;
                            break;
                        case 1:                                 // LOAD Half
                            BJSIGN.Value = 1;
                            break;
                        case 4:                                 // LOAD Word
                            BJSIGN.Value = 2;
                            break;
                        case 5:                                 // LOAD Double
                            BJSIGN.Value = 3;
                            break;
                        case 6:                                 // LOAD Byte (U)
                            BJSIGN.Value = 4;
                            break;
                        case 7:                                 // LOAD Half (U)
                            BJSIGN.Value = 5;
                            break;
                    }
                    break;
                case 23:                                        // AUIPC
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
                    break;
                case 55:                                        // LUI
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
                    break;
                case 111:                                       // JAL
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
                    break;
            }
        }
    }
}