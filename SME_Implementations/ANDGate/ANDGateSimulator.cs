using System;
using SME;

namespace ANDGate {
    public class ANDGateSimulator : SimulationProcess {
        [InputBus]
		public readonly GateOutput output = Scope.CreateOrLoadBus<GateOutput>();

        [OutputBus]
		public readonly GateInputs input = Scope.CreateOrLoadBus<GateInputs>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
            
            input.in_1 = false;
            input.in_2 = false;
            
            await ClockAsync();
            Console.WriteLine($"Gate input: {input.in_1} (Input 1) - {input.in_2} (Input 2)\n");
            Console.WriteLine($"AND gate output: {output.out_AND} \n");

            input.in_1 = true;
            input.in_2 = false;

            await ClockAsync();
            Console.WriteLine($"Gate input: {input.in_1} (Input 1) - {input.in_2} (Input 2)\n");
            Console.WriteLine($"AND gate output: {output.out_AND} \n");

            
            input.in_1 = false;
            input.in_2 = true;

            await ClockAsync();
            Console.WriteLine($"Gate input: {input.in_1} (Input 1) - {input.in_2} (Input 2)\n");
            Console.WriteLine($"AND gate output: {output.out_AND} \n");

            input.in_1 = true;
            input.in_2 = true;

            await ClockAsync();
            Console.WriteLine($"Gate input: {input.in_1} (Input 1) - {input.in_2} (Input 2)\n");
            Console.WriteLine($"AND gate output: {output.out_AND} \n");

            Console.WriteLine("Done testing!");
        }
    }
}