using System;
using SME;

namespace Register {
    public class Register_Simulator : SimulationProcess {
        [InputBus]
		public readonly PC_Output output = Scope.CreateOrLoadBus<PC_Output>();
        

        [OutputBus]
        public readonly PC_Input input = Scope.CreateOrLoadBus<PC_Input>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
               
            input.Address = 4;

            await ClockAsync();
            Console.WriteLine($"Program counter input: {input.Address}");
            Console.WriteLine($"Program counter outputs: {output.Address} \n");
               
            input.Address = 10;

            await ClockAsync();
            Console.WriteLine($"Program counter input: {input.Address}");
            Console.WriteLine($"Program counter outputs: {output.Address} \n");

            await ClockAsync();
            Console.WriteLine($"No new input given checks if PC holds old address");
            Console.WriteLine($"Program counter input: {input.Address}");
            Console.WriteLine($"Program counter outputs: {output.Address} \n");

            Console.WriteLine("Done testing!");

        }
    }
}