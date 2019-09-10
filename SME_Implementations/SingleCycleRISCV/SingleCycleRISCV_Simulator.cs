using System;
using SME;

namespace SingleCycleRISCV {
    public class SingleCycleRISCV_Simulator : SimulationProcess {
        // Program counter buses
        [InputBus]
		public readonly ProgramCounter_To_InstructionMemory PC_output = Scope.CreateOrLoadBus<ProgramCounter_To_InstructionMemory>();

        [OutputBus]
        public readonly PC_Input PC_input = Scope.CreateOrLoadBus<PC_Input>();

        // Incrementer buses
        [InputBus]
		public readonly Incrementer_Output incrementer_output = Scope.CreateOrLoadBus<Incrementer_Output>();

        // Instruction memory buses
        [InputBus]
        private readonly Read_Register_1 m_read_1 = Scope.CreateOrLoadBus<Read_Register_1>();
        [InputBus]
        private readonly Read_Register_2 m_read_2 = Scope.CreateOrLoadBus<Read_Register_2>();
        [InputBus]
        private readonly Write_Register m_write = Scope.CreateOrLoadBus<Write_Register>();
        [InputBus]
        private readonly Write_Data m_write_data = Scope.CreateOrLoadBus<Write_Data>();
        [InputBus]
        private readonly Write_Control m_write_control = Scope.CreateOrLoadBus<Write_Control>();

        // Register Output
        [InputBus]
		public readonly Reg1_To_ALU Register_output_1 = Scope.CreateOrLoadBus<Reg1_To_ALU>();
        [InputBus]
		public readonly Reg2_To_Mux Register_output_2 = Scope.CreateOrLoadBus<Reg2_To_Mux>();

        // ALU Output
        [InputBus]
		public readonly ALU_Output ALU_output = Scope.CreateOrLoadBus<ALU_Output>();

        // Mem mux output
        [InputBus]
        public readonly Mem_Mux_Output Mux_out = Scope.CreateOrLoadBus<Mem_Mux_Output>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
               
            PC_input.Address = 0;

            await ClockAsync();
            Console.WriteLine($"Program counter PC_input: {PC_input.Address}");
            Console.WriteLine($"Program counter output: {PC_output.Address}");
            Console.WriteLine($"Incrementer output: {incrementer_output.Address}");
            Console.WriteLine($"Instruction memory input: {PC_output.Address}");
            Console.WriteLine($"Register input 1: {m_read_1.address}");
            Console.WriteLine($"Register input 2: {m_read_2.address}");
            Console.WriteLine($"Register Address: {m_write.address}");
            Console.WriteLine($"Register Write Data: {m_write_data.Data}");
            Console.WriteLine($"Register Control: {m_write_control.Enable}");
            Console.WriteLine($"Register Output 1: {Register_output_1.Data}");
            Console.WriteLine($"Register Output 2: {Register_output_2.Data}");
            Console.WriteLine($"ALU Output: {ALU_output.Value} ");
            Console.WriteLine($"Memmux Output: {Mux_out.Data} \n");

            await ClockAsync();

            Console.WriteLine("Done testing!");

        }
    }
}