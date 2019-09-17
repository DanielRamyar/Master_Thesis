using System;
using SME;

namespace SingleCycleRISCV {
    public class ALU_Control : SimpleProcess {
        [InputBus]
		public readonly ALU1 m_ALUOp1 = Scope.CreateOrLoadBus<ALU1>();
        [InputBus]
		public readonly ALU0 m_ALUOp0 = Scope.CreateOrLoadBus<ALU0>();
        [InputBus]
		public readonly Instruction m_Instruction = Scope.CreateOrLoadBus<Instruction>();
        [OutputBus]
		public readonly OperationCode m_ALUOp_out = Scope.CreateOrLoadBus<OperationCode>();

        uint Op0; uint Op1; uint Op2; uint Op3;
        bool A; bool B; bool C; bool D; bool E; bool F;
        bool G; bool H; bool I; bool J; bool K; bool L;
        bool temp1; bool temp2; bool temp3; bool temp4;
        protected override void OnTick() {
            uint instruction = m_Instruction.current;
            A = (instruction >> 12 & (uint)1) != 0;
            B = (instruction >> 13 & (uint)1) != 0;
            C = (instruction >> 14 & (uint)1) != 0;
            D = (instruction >> 25 & (uint)1) != 0;
            E = (instruction >> 26 & (uint)1) != 0;
            F = (instruction >> 27 & (uint)1) != 0;
            G = (instruction >> 28 & (uint)1) != 0;
            H = (instruction >> 29 & (uint)1) != 0;
            I = (instruction >> 30 & (uint)1) != 0;
            J = (instruction >> 31 & (uint)1) != 0;
            K = m_ALUOp0.Enable;
            L = m_ALUOp1.Enable;

            // All the logic is calculated by hand from logic table
            temp1 = (L && !J && !I && !H && !G && !F && !E && !D && C && B && !A);
            temp2 = (L && !J &&  I && !H && !G && !F && !E && !D && !C && !B && !A);
            temp3 = (L && !J && !I && !H && !G && !F && !E && !D && !C && !B && !A);
            temp4 = (!L && !K || K);

            Op0 = temp1 ? (uint)1 : (uint)0;
            Op1 = temp4 || temp3 || temp2 ? (uint)1 : (uint)0;
            Op2 = (K || temp2) ? (uint)1 : (uint)0;
            Op3 = (false) ? (uint)1 : (uint)0;

            // Creating the ALU opcode here
            m_ALUOp_out.Value = (byte)(0u | Op3 << 3 | Op2 << 2 | Op1 << 1 | Op0);

        }
    }

}