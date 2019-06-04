using System;
using SME;

namespace Multiplexer_2_Input {
    public class DecoderSimulator : SimulationProcess {
        [InputBus]
		public readonly ANDOutput_0 output_0 = Scope.CreateOrLoadBus<ANDOutput_0>();
        [InputBus]
		public readonly ANDOutput_1 output_1 = Scope.CreateOrLoadBus<ANDOutput_1>();
        [InputBus]
		public readonly ANDOutput_2 output_2 = Scope.CreateOrLoadBus<ANDOutput_2>();
        [InputBus]
		public readonly ANDOutput_3 output_3 = Scope.CreateOrLoadBus<ANDOutput_3>();


        [OutputBus]
		public readonly Input_0 input_0 = Scope.CreateOrLoadBus<Input_0>();
        [OutputBus]
		public readonly Input_1 input_1 = Scope.CreateOrLoadBus<Input_1>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
               
            input_0.Value = false;
            input_1.Value = false;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input_0.Value} (Input 0) - {input_1.Value} (Input 1)\n");
            Console.WriteLine($"Decoder outputs: {output_0.Value} (Output 0) - {output_1.Value} (Output 1) \n");
            Console.WriteLine($"                 {output_2.Value} (Output 2) - {output_3.Value} (Output 3) \n");

            input_0.Value = true;
            input_1.Value = false;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input_0.Value} (Input 0) - {input_1.Value} (Input 1)\n");
            Console.WriteLine($"Decoder outputs: {output_0.Value} (Output 0) - {output_1.Value} (Output 1) \n");
            Console.WriteLine($"                 {output_2.Value} (Output 2) - {output_3.Value} (Output 3) \n");

            input_0.Value = false;
            input_1.Value = true;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input_0.Value} (Input 0) - {input_1.Value} (Input 1)\n");
            Console.WriteLine($"Decoder outputs: {output_0.Value} (Output 0) - {output_1.Value} (Output 1) \n");
            Console.WriteLine($"                 {output_2.Value} (Output 2) - {output_3.Value} (Output 3) \n");

            input_0.Value = true;
            input_1.Value = true;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input_0.Value} (Input 0) - {input_1.Value} (Input 1)\n");
            Console.WriteLine($"Decoder outputs: {output_0.Value} (Output 0) - {output_1.Value} (Output 1) \n");
            Console.WriteLine($"                 {output_2.Value} (Output 2) - {output_3.Value} (Output 3) \n");

            Console.WriteLine("Done testing!");

        }
    }
}