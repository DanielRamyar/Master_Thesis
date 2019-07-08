using System;
using SME;

namespace ALU_1_Bit {
    public class ALU : SimpleProcess {
        [OutputBus]
		public readonly Output output = Scope.CreateOrLoadBus<Output>();
        [OutputBus]
		public readonly Zero_out zero_out = Scope.CreateOrLoadBus<Zero_out>();

        [InputBus]
        private readonly OperationCode m_OperationCode = Scope.CreateOrLoadBus<OperationCode>();
        [InputBus]
        private readonly A m_A = Scope.CreateOrLoadBus<A>();
        [InputBus]
        private readonly B m_B = Scope.CreateOrLoadBus<B>();

        protected override void OnTick() {
            uint temp; // Need to use temporary variable as i cant write and do zero test in same clock cycle wihtout it
            switch (m_OperationCode.Value) {
                case 0:
                    temp = m_A.Value & m_B.Value; 
                    output.Value = temp;
                    zero_out.Value = (temp == 0); // Check if output i zero
                    break;
                case 1:
                    temp = m_A.Value | m_B.Value;
                    output.Value = temp;
                    zero_out.Value = (temp == 0); 
                    break;
                case 2:
                    temp = m_A.Value + m_B.Value;
                    output.Value = temp;
                    zero_out.Value = (temp == 0); 
                    break;
                case 3:
                    temp = m_A.Value - m_B.Value;
                    output.Value = temp;
                    zero_out.Value = (temp== 0); 
                    break;

            }
        }
    }

}