using System;
using SME;

namespace SingleCycleRISCV {
    public class Control : SimpleProcess {
        [InputBus]
        private readonly Control_Input m_input = Scope.CreateOrLoadBus<Control_Input>();
        [OutputBus]
		public readonly ALUSrc ALUSrc_out = Scope.CreateOrLoadBus<ALUSrc>();
        [OutputBus]
		public readonly MemtoReg MemtoReg_out = Scope.CreateOrLoadBus<MemtoReg>();
        [OutputBus]
		public readonly RegWrite RegWrite_out = Scope.CreateOrLoadBus<RegWrite>();
        [OutputBus]
		public readonly MemRead MemRead_out = Scope.CreateOrLoadBus<MemRead>();
        [OutputBus]
		public readonly MemWrite MemWrite_out = Scope.CreateOrLoadBus<MemWrite>();
        [OutputBus]
		public readonly Branch Branch_out = Scope.CreateOrLoadBus<Branch>();
        [OutputBus]
		public readonly ALU1 ALU1_out = Scope.CreateOrLoadBus<ALU1>();
        [OutputBus]
		public readonly ALU0 ALU0_out = Scope.CreateOrLoadBus<ALU0>();
        
        uint Opcode;
        bool Op0;
        bool Op1;
        bool Op2;
        bool Op3;
        bool Op4;
        bool Op5;
        bool Op6;
        bool A;
        bool B;
        bool C;
        bool D;

        protected override void OnTick() {
            Opcode = m_input.Opcode;
            Op0 = (Opcode >> 0 & (uint)1) != 0;
            Op1 = (Opcode >> 1 & (uint)1) != 0;
            Op2 = (Opcode >> 2 & (uint)1) != 0;
            Op3 = (Opcode >> 3 & (uint)1) != 0;
            Op4 = (Opcode >> 4 & (uint)1) != 0;
            Op5 = (Opcode >> 5 & (uint)1) != 0;
            Op6 = (Opcode >> 6 & (uint)1) != 0;

            // All the logic is manually calculated 
            A = (!Op6 && Op5 && !Op4 && !Op3 && !Op2 && Op1 && Op0);
            B = (!Op6 && !Op5 && !Op4 && !Op3 && !Op2 && Op1 && Op0);
            C = (!Op6 && Op5 && Op4 && !Op3 && !Op2 && Op1 && Op0);
            D = (Op6 && Op5 && !Op4 && !Op3 && !Op2 && Op1 && Op0);


            ALUSrc_out.Enable = A || B;
            MemtoReg_out.Enable = B;
            RegWrite_out.Enable = B || C;
            MemRead_out.Enable = B;
            MemWrite_out.Enable = A;
            Branch_out.Enable = D;
            ALU1_out.Enable = C;
            ALU0_out.Enable = D;

        }
    }

}