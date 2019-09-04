using System;
using SME;

namespace SingleCycleRISCV {
    public class SingleCycleRISCV_Simulator : SimulationProcess {
        // Program counter buses
        [InputBus]
		public readonly PC_Output PC_output = Scope.CreateOrLoadBus<PC_Output>();

        [OutputBus]
        public readonly PC_Input PC_input = Scope.CreateOrLoadBus<PC_Input>();

        // Instruction memory buses
        [InputBus]
		public readonly IM_Output IM_output = Scope.CreateOrLoadBus<IM_Output>();
        
        [OutputBus]
        public readonly IM_Input IM_input = Scope.CreateOrLoadBus<IM_Input>();

        // Register Output
        [InputBus]
		public readonly Read_Output_1 Register_output_1 = Scope.CreateOrLoadBus<Read_Output_1>();
        [InputBus]
		public readonly Read_Output_2 Register_output_2 = Scope.CreateOrLoadBus<Read_Output_2>();

        // ALU Output
        [InputBus]
		public readonly ALU_Output ALU_output = Scope.CreateOrLoadBus<ALU_Output>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
               
            PC_input.Address = 0;

            await ClockAsync();
            Console.WriteLine($"Program counter PC_input: {PC_input.Address}");
            Console.WriteLine($"Program counter outputs: {PC_output.Address}");
            Console.WriteLine($"Instrcution memory input: {PC_output.Address}");
            Console.WriteLine($"Instrcution memory output: {IM_output.Instruction}");
            Console.WriteLine($"Register Output 1: {Register_output_1.Data}");
            Console.WriteLine($"Register Output 2: {Register_output_2.Data}");
            Console.WriteLine($"ALU Output: {ALU_output.Value} \n");

            await ClockAsync();
            Console.WriteLine($"Program counter PC_input: {PC_input.Address}");
            Console.WriteLine($"Program counter outputs: {PC_output.Address}");
            Console.WriteLine($"Instrcution memory input: {PC_output.Address}");
            Console.WriteLine($"Instrcution memory output: {IM_output.Instruction} \n");

            Console.WriteLine("Done testing!");

        }
    }
}