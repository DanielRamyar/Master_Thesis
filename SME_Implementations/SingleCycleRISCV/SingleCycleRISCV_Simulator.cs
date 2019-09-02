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
        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
               
            PC_input.Address = 0;

            await ClockAsync();
            Console.WriteLine($"Program counter PC_input: {PC_input.Address}");
            Console.WriteLine($"Program counter outputs: {PC_output.Address}");
            Console.WriteLine($"Instrcution memory input: {PC_output.Address}");
            Console.WriteLine($"Instrcution memory output: {IM_output.Instruction} \n");

            await ClockAsync();
            Console.WriteLine($"Program counter PC_input: {PC_input.Address}");
            Console.WriteLine($"Program counter outputs: {PC_output.Address}");
            Console.WriteLine($"Instrcution memory input: {PC_output.Address}");
            Console.WriteLine($"Instrcution memory output: {IM_output.Instruction} \n");

            Console.WriteLine("Done testing!");

        }
    }
}