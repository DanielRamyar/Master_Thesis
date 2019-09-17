using System;
using SME;

namespace SingleCycleRISCV {
    public class ALU : SimpleProcess {
        [OutputBus]
		public readonly ALU_Output output = Scope.CreateOrLoadBus<ALU_Output>();
        [OutputBus]
		public readonly Zero_out zero_out = Scope.CreateOrLoadBus<Zero_out>();

        [InputBus]
        private readonly OperationCode m_OperationCode = Scope.CreateOrLoadBus<OperationCode>();
        [InputBus]
        private readonly Reg1_To_ALU m_ALU_In_1 = Scope.CreateOrLoadBus<Reg1_To_ALU>();
        [InputBus]
        private readonly Reg_Mux_Output m_ALU_In_2 = Scope.CreateOrLoadBus<Reg_Mux_Output>();

        protected override void OnTick() {
            int temp; // Need to use temporary variable as i cant write and do zero test in same clock cycle wihtout it
            switch (m_OperationCode.Value) {
                case 0:
                    temp = m_ALU_In_1.Data & m_ALU_In_2.Data; 
                    output.Value = temp;
                    zero_out.Value = (temp == 0); // Check if output is zero
                    break;
                case 1:
                    temp = m_ALU_In_1.Data | m_ALU_In_2.Data;
                    output.Value = temp;
                    zero_out.Value = (temp == 0); 
                    break;
                case 2:
                    temp = m_ALU_In_1.Data + m_ALU_In_2.Data;
                    output.Value = temp;
                    zero_out.Value = (temp == 0); 
                    break;
                case 6:
                    temp = m_ALU_In_1.Data - m_ALU_In_2.Data;
                    output.Value = temp;
                    zero_out.Value = (temp== 0); 
                    break;

            }
        }
    }

}