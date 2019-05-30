using System;
using SME;

namespace Decoder_1_Bit {
    public class DecoderSimulator : SimulationProcess {
        [InputBus]
		public readonly DecoderOutput_0 output_0 = Scope.CreateOrLoadBus<DecoderOutput_0>();
        [InputBus]
		public readonly DecoderOutput_1 output_1 = Scope.CreateOrLoadBus<DecoderOutput_1>();


        [OutputBus]
		public readonly DecoderInput_0 input_0 = Scope.CreateOrLoadBus<DecoderInput_0>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
               
            input_0.in_Value = false;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input_0.in_Value} (Input 0) \n");
            Console.WriteLine($"Decoder outputs: {output_0.out_Value} (Output 0) - {output_1.out_Value} (Output 1) \n");

            input_0.in_Value = true;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input_0.in_Value} (Input 0) \n");
            Console.WriteLine($"Decoder outputs: {output_0.out_Value} (Output 0) - {output_1.out_Value} (Output 1) \n");

            Console.WriteLine("Done testing!");

        }
    }
}