using System;
using SME;

namespace SingleCycleRISCV {
    public class splitter : SimpleProcess {
        [InputBus]
        private readonly IM_Output m_input = Scope.CreateOrLoadBus<IM_Output>();

        [OutputBus]
        private readonly Read_Register_1 m_read_1 = Scope.CreateOrLoadBus<Read_Register_1>();
        [OutputBus]
        private readonly Read_Register_2 m_read_2 = Scope.CreateOrLoadBus<Read_Register_2>();
        [OutputBus]
        private readonly Write_Register m_write = Scope.CreateOrLoadBus<Write_Register>();
        [OutputBus]
        private readonly Write_Data m_write_data = Scope.CreateOrLoadBus<Write_Data>();
        [OutputBus]
        private readonly Write_Control m_write_control = Scope.CreateOrLoadBus<Write_Control>();

        protected override void OnTick() {
            uint temp_instruction = m_input.Instruction;

            m_read_1.address = (uint)temp_instruction >> 15 & (uint)31;
            m_read_2.address = (uint)temp_instruction >> 20 & (uint)31;
            m_write.address = (uint)temp_instruction >> 7 & (uint)31;
            m_write_data.Data = 44;
            m_write_control.Enable = false;

        }
    }

}