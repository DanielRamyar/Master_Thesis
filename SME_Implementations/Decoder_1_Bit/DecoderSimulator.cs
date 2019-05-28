using System;
using SME;

namespace Decoder_1_Bit {
    public class DecoderSimulator : SimulationProcess {
        [InputBus]
		public readonly DecoderOutput output = Scope.CreateOrLoadBus<DecoderOutput>();


        [OutputBus]
		public readonly DecoderInput input = Scope.CreateOrLoadBus<DecoderInput>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
               
            input.in_0 = false;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input.in_0} (Input 0) \n");
            Console.WriteLine($"Decoder outputs: {output.out_0} (Output 0) - {output.out_1} (Output 1) \n");

            input.in_0 = true;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {input.in_0} (Input 0) \n");
            Console.WriteLine($"Decoder outputs: {output.out_0} (Output 0) - {output.out_1} (Output 1) \n");

            Console.WriteLine("Done testing!");

        }
    }
}