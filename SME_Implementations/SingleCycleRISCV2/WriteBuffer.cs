using System;
using SME;

namespace SingleCycleRISCV {
    public interface WB_Data : IBus {
        [InitialValue]
        long Data {get; set;}
    }
    public interface WB_WriteRegister : IBus {
        [InitialValue]
        uint Address {get; set;}
    }
    public interface WB_WriteControl : IBus {
        [InitialValue]
        bool Enable {get; set;}
    }

    [ClockedProcess]
    public class WriteBuffer : SimpleProcess {
        [InputBus]
        private readonly Write_Data m_write_data = Scope.CreateOrLoadBus<Write_Data>();
        [InputBus]
        private readonly Write_Register m_write_register = Scope.CreateOrLoadBus<Write_Register>();
        [InputBus]
        private readonly RegWrite m_write_control = Scope.CreateOrLoadBus<RegWrite>();

        [OutputBus]
        public readonly WB_Data m_WB_Data = Scope.CreateOrLoadBus<WB_Data>();
        [OutputBus]
        public readonly WB_WriteRegister m_WB_WriteRegister = Scope.CreateOrLoadBus<WB_WriteRegister>();
        [OutputBus]
        public readonly WB_WriteControl m_WB_WriteControl = Scope.CreateOrLoadBus<WB_WriteControl>();

        long WB_Data_Hold;
        uint WB_RegisterWrite_Hold;
        bool WB_WriteControl_Hold;

        protected override void OnTick() {
            WB_Data_Hold = m_write_data.Data;
            WB_RegisterWrite_Hold = m_write_register.Address;
            WB_WriteControl_Hold = m_write_control.Enable;

            m_WB_Data.Data = WB_Data_Hold;
            m_WB_WriteRegister.Address = WB_RegisterWrite_Hold;
            m_WB_WriteControl.Enable = WB_WriteControl_Hold;

        }
    }

}