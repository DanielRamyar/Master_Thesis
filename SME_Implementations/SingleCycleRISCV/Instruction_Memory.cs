using System;
using SME;

namespace SingleCycleRISCV {
    public class IM : SimpleProcess {
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

        [InputBus]
        private readonly ProgramCounter_To_InstructionMemory m_input = Scope.CreateOrLoadBus<ProgramCounter_To_InstructionMemory>();

        private readonly byte[] Instruction_Memory = {1, 8, 137, 51};

        protected override void OnTick() {
            uint temp_address = m_input.Address;
            uint temp_instruction;

            temp_instruction = 0u | (uint)Instruction_Memory[temp_address]     << 24
                                  | (uint)Instruction_Memory[temp_address + 1] << 16
                                  | (uint)Instruction_Memory[temp_address + 2] << 8
                                  | (uint)Instruction_Memory[temp_address + 3];

            m_read_1.address       = (uint)temp_instruction >> 15 & (uint)31; // Takes out bit number 15 to 19 from instruction
            m_read_2.address       = (uint)temp_instruction >> 20 & (uint)31; // Takes out bit number 20 to 24 from instruction
            m_write.address        = (uint)temp_instruction >> 7  & (uint)31; // Takes out bit number 7 to 11 from instruction
            m_write_data.Data      = 44;    // testing purposes
            m_write_control.Enable = false; // testing purposes
        }
    }

}