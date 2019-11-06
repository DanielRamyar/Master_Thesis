using System;
using SME;

namespace SingleCycleRISCV {
    public interface GoTo_Output : IBus {
        [InitialValue]
        bool Value {get; set;}
    }

    public class GoTo : SimpleProcess {
        [InputBus]
        private readonly RS1 m_RS1 = Scope.CreateOrLoadBus<RS1>();
        [InputBus]
        private readonly RS2 m_RS2 = Scope.CreateOrLoadBus<RS2>();
        [InputBus]
        private readonly BJSIGN m_BJSIGN = Scope.CreateOrLoadBus<BJSIGN>();

        [OutputBus]
		public readonly GoTo_Output output = Scope.CreateOrLoadBus<GoTo_Output>();

        protected override void OnTick() {
            // Checks BJSIGN Value for which operation it should peform
            switch (m_BJSIGN.Value) {
                case 0:
                    output.Value = (m_RS1.Data == m_RS2.Data) ? true:false;                  // BEQ
                    break;
                case 1:
                    output.Value = (m_RS1.Data != m_RS2.Data) ? true:false;                  // BNE
                    break;
                case 2:
                    output.Value = (m_RS1.Data < m_RS2.Data) ? true:false;                   // BLT
                    break;
                case 3:
                    output.Value = (m_RS1.Data >= m_RS2.Data) ? true:false;                  // BGE
                    break;
                case 4:
                    output.Value = ((ulong)m_RS1.Data < (ulong)m_RS2.Data) ? true:false;     // BLTU
                    break;
                case 5:
                    output.Value = ((ulong)m_RS1.Data >= (ulong)m_RS2.Data) ? true:false;    // BGEU
                    break;
                case 6:
                    output.Value = true;                                                     // JAL or JALR
                    break;
            }
        }
    }
}