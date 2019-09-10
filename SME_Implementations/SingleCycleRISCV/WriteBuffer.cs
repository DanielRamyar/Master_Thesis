using System;
using SME;

namespace SingleCycleRISCV {
    [ClockedProcess]
    public class WriteBuffer : SimpleProcess {
        [InputBus]
        private readonly Write_Data m_write_data = Scope.CreateOrLoadBus<Write_Data>();
        [InputBus]
        private readonly Write_Register m_write = Scope.CreateOrLoadBus<Write_Register>();
        [InputBus]
        private readonly Write_Control m_write_control = Scope.CreateOrLoadBus<Write_Control>();

        [OutputBus]
        public readonly WB_Data m_WB_Data = Scope.CreateOrLoadBus<WB_Data>();
        [OutputBus]
        public readonly WB_RegisterWrite m_WB_RegisterWrite = Scope.CreateOrLoadBus<WB_RegisterWrite>();
        [OutputBus]
        public readonly WB_WriteControl m_WB_WriteControl = Scope.CreateOrLoadBus<WB_WriteControl>();

        int WB_Data_Hold;
        uint WB_RegisterWrite_Hold;
        bool WB_WriteControl_Hold;

        protected override void OnTick() {
            WB_Data_Hold = m_write_data.Data;
            WB_RegisterWrite_Hold = m_write.address;
            WB_WriteControl_Hold = m_write_control.Enable;

            m_WB_Data.Data = WB_Data_Hold;
            m_WB_RegisterWrite.address = WB_RegisterWrite_Hold;
            m_WB_WriteControl.Enable = WB_WriteControl_Hold;

        }
    }

}