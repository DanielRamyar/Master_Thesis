using System;
using SME;

namespace Multiplexer_2_Input {
    public class MultiplexerSimulator : SimulationProcess {
        [InputBus]
		public readonly ANDOutput_0 output_0 = Scope.CreateOrLoadBus<ANDOutput_0>();
        [InputBus]
		public readonly ANDOutput_1 output_1 = Scope.CreateOrLoadBus<ANDOutput_1>();
        [InputBus]
		public readonly OROutput_0 output_2 = Scope.CreateOrLoadBus<OROutput_0>();


        [OutputBus]
		public readonly Input_0 input_0 = Scope.CreateOrLoadBus<Input_0>();
        [OutputBus]
		public readonly Input_1 input_1 = Scope.CreateOrLoadBus<Input_1>();
        [OutputBus]
		public readonly Input_2 input_2 = Scope.CreateOrLoadBus<Input_2>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
               
            input_0.Value = false;
            input_1.Value = false;
            input_2.Value = false;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input_0.Value} (Input 0) - {input_1.Value} (Input 1) - {input_2.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_2.Value} (Output 0) \n");
               
            input_0.Value = false;
            input_1.Value = true;
            input_2.Value = false;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input_0.Value} (Input 0) - {input_1.Value} (Input 1) - {input_2.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_2.Value} (Output 0) \n");
               
            input_0.Value = true;
            input_1.Value = false;
            input_2.Value = false;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input_0.Value} (Input 0) - {input_1.Value} (Input 1) - {input_2.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_2.Value} (Output 0) \n");
               
            input_0.Value = true;
            input_1.Value = true;
            input_2.Value = false;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input_0.Value} (Input 0) - {input_1.Value} (Input 1) - {input_2.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_2.Value} (Output 0) \n");
               
            input_0.Value = false;
            input_1.Value = true;
            input_2.Value = true;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input_0.Value} (Input 0) - {input_1.Value} (Input 1) - {input_2.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_2.Value} (Output 0) \n");
               
            input_0.Value = true;
            input_1.Value = false;
            input_2.Value = true;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input_0.Value} (Input 0) - {input_1.Value} (Input 1) - {input_2.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_2.Value} (Output 0) \n");
               
            input_0.Value = true;
            input_1.Value = true;
            input_2.Value = true;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input_0.Value} (Input 0) - {input_1.Value} (Input 1) - {input_2.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_2.Value} (Output 0) \n");

            Console.WriteLine("Done testing!");

        }
    }
}