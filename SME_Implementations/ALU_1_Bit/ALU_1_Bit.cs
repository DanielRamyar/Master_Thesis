using System;
using SME;

namespace ALU_1_Bit {
    public class ALU : SimpleProcess {
        [OutputBus]
		public readonly Output output = Scope.CreateOrLoadBus<Output>();

        [InputBus]
        private readonly OperationCode m_OperationCode = Scope.CreateOrLoadBus<OperationCode>();
        [InputBus]
        private readonly A m_A = Scope.CreateOrLoadBus<A>();
        [InputBus]
        private readonly B m_B = Scope.CreateOrLoadBus<B>();

        protected override void OnTick() {
            switch (m_OperationCode.Value) {
                case 0:
                    output.Value = m_A.Value & m_B.Value;
                    break;
                case 1:
                    output.Value = m_A.Value | m_B.Value;
                    break;
                case 2:
                    output.Value = m_A.Value + m_B.Value;
                    break;
                case 3:
                    output.Value = m_A.Value - m_B.Value;
                    break;

            }
        }
    }

}