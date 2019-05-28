using System;
using SME;

namespace LogicGates {
    public class LogicGateSimulator : SimulationProcess {
        [OutputBus]
		public readonly GateInputs input = Scope.CreateOrLoadBus<GateInputs>();

        [InputBus]
		public readonly GateOutput output = Scope.CreateOrLoadBus<GateOutput>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
               
            input.in_1 = false;
            input.in_2 = false;

            
            await ClockAsync();
            Console.WriteLine($"Gate input: {input.in_1} - {input.in_2}\n");
            Console.WriteLine($"AND gate output: {output.out_AND}");
            Console.WriteLine($"OR gate output: {output.out_OR} \n");

            input.in_1 = true;
            input.in_2 = false;

            await ClockAsync();
            Console.WriteLine($"Gate input: {input.in_1} - {input.in_2}\n");
            Console.WriteLine($"AND gate output: {output.out_AND}");
            Console.WriteLine($"OR gate output: {output.out_OR} \n");

            
            input.in_1 = false;
            input.in_2 = true;

            await ClockAsync();
            Console.WriteLine($"Gate input: {input.in_1} - {input.in_2}\n");
            Console.WriteLine($"AND gate output: {output.out_AND}");
            Console.WriteLine($"OR gate output: {output.out_OR} \n");

            
            input.in_1 = true;
            input.in_2 = true;

            await ClockAsync();
            Console.WriteLine($"Gate input: {input.in_1} - {input.in_2}\n");
            Console.WriteLine($"AND gate output: {output.out_AND}");
            Console.WriteLine($"OR gate output: {output.out_OR} \n");

            Console.WriteLine("Done testing!");

        }
    }
}