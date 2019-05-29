using System;
using SME;

namespace Decoder_n_Bit {
    public class DecoderSimulator : SimulationProcess {
        [OutputBus]
		public readonly DecoderInput_0 input_0 = Scope.CreateOrLoadBus<DecoderInput_0>();
        
        [InputBus]
		public readonly DecoderOutput_0 output_0 = Scope.CreateOrLoadBus<DecoderOutput_0>();
        [InputBus]
		public readonly DecoderOutput_1 output_1 = Scope.CreateOrLoadBus<DecoderOutput_1>();
        
        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
 
            input_0.in_Value = False; 

            await ClockAsync();

            System.Diagnostics.Debug.Assert(output_0.out_Value); 
            System.Diagnostics.Debug.Assert(!output_1.out_Value); 
 
            input_0.in_Value = True; 

            await ClockAsync();

            System.Diagnostics.Debug.Assert(!output_0.out_Value); 
            System.Diagnostics.Debug.Assert(output_1.out_Value); 

            Console.WriteLine("Done testing!");

        }
    }
}