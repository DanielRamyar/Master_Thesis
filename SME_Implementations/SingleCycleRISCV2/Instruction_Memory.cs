using System;
using SME;

namespace SingleCycleRISCV {
    public interface Instruction : IBus {
        [InitialValue]
        uint Current {get; set;}
    }
    public interface CPU : IBus {
        [InitialValue(true)]
        bool Running {get; set;}
    }
    public interface Read_Register_1 : IBus {
        [InitialValue]
        uint Address {get; set;}
    }
    public interface Read_Register_2 : IBus {
        [InitialValue]
        uint Address {get; set;}
    }
    public interface Write_Register : IBus {
        [InitialValue]
        uint Address {get; set;}
    }

    public class IM : SimpleProcess {
        [InputBus]
        private readonly PC_Output m_input = Scope.CreateOrLoadBus<PC_Output>();

        [OutputBus]
        private readonly Read_Register_1 m_read_1 = Scope.CreateOrLoadBus<Read_Register_1>();
        [OutputBus]
        private readonly Read_Register_2 m_read_2 = Scope.CreateOrLoadBus<Read_Register_2>();
        [OutputBus]
        private readonly Write_Register m_write = Scope.CreateOrLoadBus<Write_Register>();
        [OutputBus]
        private readonly Instruction m_Instruction = Scope.CreateOrLoadBus<Instruction>();
        [OutputBus]
        private readonly CPU m_CPU = Scope.CreateOrLoadBus<CPU>();

        private readonly byte[] Instruction_Memory = System.IO.File.ReadAllBytes("/Users/danielramyar/Desktop/Thesis/SME_Implementations/SingleCycleRISCV2/RISCVTESTERS/fibonacci/fibowitharray.bin");      
        // private readonly byte[] Instruction_Memory = {0x00, 0x80, 0x08, 0x13,       // addi x16, x0, 8
        //                                               0x00, 0x70, 0x08, 0x93,       // addi x17, x0, 7
        //                                               0x01, 0x08, 0x89, 0x33};      // add x18, x17, x1     

        protected override void OnTick() {
            ulong temp_address = m_input.Address;
            uint temp_instruction;

            if (temp_address >= 0 && temp_address < (uint)Instruction_Memory.Length) {
                temp_instruction = 0u | (uint)Instruction_Memory[temp_address]     << 24
                                      | (uint)Instruction_Memory[temp_address + 1] << 16
                                      | (uint)Instruction_Memory[temp_address + 2] << 8
                                      | (uint)Instruction_Memory[temp_address + 3];

                m_Instruction.Current = temp_instruction;                         // Full instruction
                m_read_1.Address       = (uint)temp_instruction >> 15 & (uint)31; // Takes out bit number 15 to 19 from instruction
                m_read_2.Address       = (uint)temp_instruction >> 20 & (uint)31; // Takes out bit number 20 to 24 from instruction
                m_write.Address        = (uint)temp_instruction >> 7  & (uint)31; // Takes out bit number 7 to 11 from instruction

                m_CPU.Running = true; // Keep CPU running
            }
            else {
                temp_instruction = 0u; // No Instruction

                m_Instruction.Current = temp_instruction;                         // Full instruction
                m_read_1.Address       = (uint)temp_instruction >> 15 & (uint)31; // Takes out bit number 15 to 19 from instruction
                m_read_2.Address       = (uint)temp_instruction >> 20 & (uint)31; // Takes out bit number 20 to 24 from instruction
                m_write.Address        = (uint)temp_instruction >> 7  & (uint)31; // Takes out bit number 7 to 11 from instruction

                m_CPU.Running = false; // Turn of cpu no more instructions
            }

            

        }
    }

}