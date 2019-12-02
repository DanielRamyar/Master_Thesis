using System;
using SME;

namespace SingleCycleRISCV {
    public interface ALU_Output : IBus {
        [InitialValue]
        long Value {get; set;}
    }

    public class ALU : SimpleProcess {
        [InputBus]
        private readonly ALUOP m_ALUOP = Scope.CreateOrLoadBus<ALUOP>();
        [InputBus]
        private readonly Mux2_Output m_ALU_In_1 = Scope.CreateOrLoadBus<Mux2_Output>();
        [InputBus]
        private readonly Mux3_Output m_ALU_In_2 = Scope.CreateOrLoadBus<Mux3_Output>();

        [OutputBus]
		public readonly ALU_Output output = Scope.CreateOrLoadBus<ALU_Output>();

        protected override void OnTick() {
            // Checks ALU opcode for which operation it should peform
            switch (m_ALUOP.Value) {
                case 0:
                    output.Value = m_ALU_In_1.Data + m_ALU_In_2.Data;                           // ADD
                    break;
                case 1:
                    output.Value = m_ALU_In_1.Data - m_ALU_In_2.Data;                           // SUB
                    break;
                case 2:
                    output.Value = m_ALU_In_1.Data & m_ALU_In_2.Data;                           // AND
                    break;
                case 3:
                    output.Value = m_ALU_In_1.Data | m_ALU_In_2.Data;                           // OR
                    break;
                case 4:
                    output.Value = m_ALU_In_1.Data ^ m_ALU_In_2.Data;                           // XOR
                    break;
                case 5:
                    output.Value = m_ALU_In_1.Data << (int)m_ALU_In_2.Data;                     // SLL
                    break;
                case 6:
                    output.Value = (m_ALU_In_1.Data < m_ALU_In_2.Data) ? 1:0;                   // SLT
                    break;
                case 7:
                    output.Value = ((ulong)m_ALU_In_1.Data < (ulong)m_ALU_In_2.Data) ? 1:0;     // SLT (U)
                    break;
                case 8:
                    output.Value = (long)((ulong)m_ALU_In_1.Data >> (int)m_ALU_In_2.Data);      // SRL
                    break;
                case 9:
                    output.Value = m_ALU_In_1.Data >> (int)m_ALU_In_2.Data;                     // SRA
                    break;
                case 10:
                    output.Value = (int)m_ALU_In_1.Data + (int)m_ALU_In_2.Data;                 // ADDW
                    break;
                case 11:
                    output.Value = (int)m_ALU_In_1.Data - (int)m_ALU_In_2.Data;                 // SUBW
                    break;
                case 12:
                    output.Value = (int)m_ALU_In_1.Data << (int)m_ALU_In_2.Data;                // SLLW
                    break;
                case 13:
                    output.Value = (uint)m_ALU_In_1.Data >> (int)m_ALU_In_2.Data;               // SRL
                    break;
                case 14:
                    output.Value = (int)m_ALU_In_1.Data >> (int)m_ALU_In_2.Data;                // SRA
                    break;
                case 15:
                    output.Value = m_ALU_In_2.Data;                                             // LUI
                    break;
            }
        }
    }
}