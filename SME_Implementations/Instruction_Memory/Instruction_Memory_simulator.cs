using System;
using SME;

namespace Instruction_Memory {
    public class Instruction_Memory_Simulator : SimulationProcess {
        [InputBus]
		public readonly IM_Output output = Scope.CreateOrLoadBus<IM_Output>();
        

        [OutputBus]
        public readonly IM_Input input = Scope.CreateOrLoadBus<IM_Input>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
               
            input.Address = 4;

            await ClockAsync();
            Console.WriteLine($"Fetch instruction: {input.Address}");
            Console.WriteLine($"Instruction memory output: {output.Instruction} \n");
               
            input.Address = 6;

            await ClockAsync();
            Console.WriteLine($"Fetch instruction: {input.Address}");
            Console.WriteLine($"Instruction memory output: {output.Instruction} \n");

            await ClockAsync();

            Console.WriteLine("Done testing!");

        }
    }
}