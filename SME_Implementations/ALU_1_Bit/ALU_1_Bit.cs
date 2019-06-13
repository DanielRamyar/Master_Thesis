using System;
using SME;

namespace ALU_1_Bit {
    public class Invert_A : SimpleProcess {
        [OutputBus]
		public readonly NOT_A output_0 = Scope.CreateOrLoadBus<NOT_A>();

        [InputBus]
        private readonly A m_input = Scope.CreateOrLoadBus<A>();

        protected override void OnTick() {
            output_0.Value = !m_input.Value;
        }
    }

    public class Invert_B : SimpleProcess {
        [OutputBus]
		public readonly NOT_B output_0 = Scope.CreateOrLoadBus<NOT_B>();

        [InputBus]
        private readonly B m_input = Scope.CreateOrLoadBus<B>();

        protected override void OnTick() {
            output_0.Value = !m_input.Value;
        }
    }

    public class Invert_CarryIn : SimpleProcess {
        [OutputBus]
		public readonly NOT_CarryIn output_0 = Scope.CreateOrLoadBus<NOT_CarryIn>();

        [InputBus]
        private readonly CarryIn m_input = Scope.CreateOrLoadBus<CarryIn>();

        protected override void OnTick() {
            output_0.Value = !m_input.Value;
        }
    }

    public class ANDGate_0 : SimpleProcess {
        [OutputBus]
        public readonly ANDOutput_0 output_0 = Scope.CreateOrLoadBus<ANDOutput_0>();

        [InputBus]
        private readonly NOT_A m_input_0 = Scope.CreateOrLoadBus<NOT_A>();
        [InputBus]
        private readonly NOT_B m_input_1 = Scope.CreateOrLoadBus<NOT_B>();
        [InputBus]
        private readonly CarryIn m_input_2 = Scope.CreateOrLoadBus<CarryIn>();

        protected override void OnTick() {
            output_0.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value;
        }
    }

    public class ANDGate_1 : SimpleProcess {
        [OutputBus]
        public readonly ANDOutput_1 output_0 = Scope.CreateOrLoadBus<ANDOutput_1>();

        [InputBus]
        private readonly NOT_A m_input_0 = Scope.CreateOrLoadBus<NOT_A>();
        [InputBus]
        private readonly B m_input_1 = Scope.CreateOrLoadBus<B>();
        [InputBus]
        private readonly NOT_CarryIn m_input_2 = Scope.CreateOrLoadBus<NOT_CarryIn>();

        protected override void OnTick() {
            output_0.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value;
        }
    }

    public class ANDGate_2 : SimpleProcess {
        [OutputBus]
        public readonly ANDOutput_2 output_0 = Scope.CreateOrLoadBus<ANDOutput_2>();

        [InputBus]
        private readonly A m_input_0 = Scope.CreateOrLoadBus<A>();
        [InputBus]
        private readonly NOT_B m_input_1 = Scope.CreateOrLoadBus<NOT_B>();
        [InputBus]
        private readonly NOT_CarryIn m_input_2 = Scope.CreateOrLoadBus<NOT_CarryIn>();

        protected override void OnTick() {
            output_0.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value;
        }
    }

    public class ANDGate_3 : SimpleProcess {
        [OutputBus]
        public readonly ANDOutput_3 output_0 = Scope.CreateOrLoadBus<ANDOutput_3>();

        [InputBus]
        private readonly A m_input_0 = Scope.CreateOrLoadBus<A>();
        [InputBus]
        private readonly B m_input_1 = Scope.CreateOrLoadBus<B>();
        [InputBus]
        private readonly CarryIn m_input_2 = Scope.CreateOrLoadBus<CarryIn>();

        protected override void OnTick() {
            output_0.Value = m_input_0.Value && m_input_1.Value && m_input_2.Value;
        }
    }

    public class ANDGate_4 : SimpleProcess {
        [OutputBus]
        public readonly ANDOutput_4 output_0 = Scope.CreateOrLoadBus<ANDOutput_4>();

        [InputBus]
        private readonly A m_input_0 = Scope.CreateOrLoadBus<A>();
        [InputBus]
        private readonly CarryIn m_input_1 = Scope.CreateOrLoadBus<CarryIn>();

        protected override void OnTick() {
            output_0.Value = m_input_0.Value && m_input_1.Value;
        }
    }

    public class ANDGate_5 : SimpleProcess {
        [OutputBus]
        public readonly ANDOutput_5 output_0 = Scope.CreateOrLoadBus<ANDOutput_5>();

        [InputBus]
        private readonly B m_input_0 = Scope.CreateOrLoadBus<B>();
        [InputBus]
        private readonly CarryIn m_input_1 = Scope.CreateOrLoadBus<CarryIn>();

        protected override void OnTick() {
            output_0.Value = m_input_0.Value && m_input_1.Value;
        }
    }

    public class ANDGate_6 : SimpleProcess {
        [OutputBus]
        public readonly ANDOutput_6 output_0 = Scope.CreateOrLoadBus<ANDOutput_6>();

        [InputBus]
        private readonly A m_input_0 = Scope.CreateOrLoadBus<A>();
        [InputBus]
        private readonly B m_input_1 = Scope.CreateOrLoadBus<B>();

        protected override void OnTick() {
            output_0.Value = m_input_0.Value && m_input_1.Value;
        }
    }

    public class ORGate_0 : SimpleProcess {
        [OutputBus]
        public readonly SUM output_1 = Scope.CreateOrLoadBus<SUM>();

        [InputBus]
        public readonly ANDOutput_0 m_input_0 = Scope.CreateOrLoadBus<ANDOutput_0>();
        [InputBus]
        public readonly ANDOutput_1 m_input_1 = Scope.CreateOrLoadBus<ANDOutput_1>();
        [InputBus]
        public readonly ANDOutput_2 m_input_2 = Scope.CreateOrLoadBus<ANDOutput_2>();
        [InputBus]
        public readonly ANDOutput_3 m_input_3 = Scope.CreateOrLoadBus<ANDOutput_3>();

        protected override void OnTick() {
            output_1.Value = m_input_0.Value || m_input_1.Value || m_input_2.Value || m_input_3.Value;
        }
    }

    public class ORGate_1 : SimpleProcess {
        [OutputBus]
        public readonly CarryOut output_1 = Scope.CreateOrLoadBus<CarryOut>();

        [InputBus]
        public readonly ANDOutput_4 m_input_0 = Scope.CreateOrLoadBus<ANDOutput_4>();
        [InputBus]
        public readonly ANDOutput_5 m_input_1 = Scope.CreateOrLoadBus<ANDOutput_5>();
        [InputBus]
        public readonly ANDOutput_6 m_input_2 = Scope.CreateOrLoadBus<ANDOutput_6>();

        protected override void OnTick() {
            output_1.Value = m_input_0.Value || m_input_1.Value || m_input_2.Value;
        }
    }

    

}