using System;
using SME;

namespace Decoder_n_Bit {
    public class DecoderSimulator : SimulationProcess {
        [OutputBus]
		public readonly DecoderInput_0 input_0 = Scope.CreateOrLoadBus<DecoderInput_0>();
        [OutputBus]
		public readonly DecoderInput_1 input_1 = Scope.CreateOrLoadBus<DecoderInput_1>();
        
        [InputBus]
		public readonly DecoderOutput_0 output_0 = Scope.CreateOrLoadBus<DecoderOutput_0>();
        [InputBus]
		public readonly DecoderOutput_1 output_1 = Scope.CreateOrLoadBus<DecoderOutput_1>();
        [InputBus]
		public readonly DecoderOutput_2 output_2 = Scope.CreateOrLoadBus<DecoderOutput_2>();
        [InputBus]
		public readonly DecoderOutput_3 output_3 = Scope.CreateOrLoadBus<DecoderOutput_3>();
        
        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
 
            input_0.Value = false;  
            input_1.Value = false; 
            await ClockAsync();

            System.Diagnostics.Debug.Assert(output_0.Value); 
            System.Diagnostics.Debug.Assert(!output_1.Value); 
            System.Diagnostics.Debug.Assert(!output_2.Value); 
            System.Diagnostics.Debug.Assert(!output_3.Value); 
 
            input_0.Value = true;  
            input_1.Value = false; 
            await ClockAsync();

            System.Diagnostics.Debug.Assert(!output_0.Value); 
            System.Diagnostics.Debug.Assert(output_1.Value); 
            System.Diagnostics.Debug.Assert(!output_2.Value); 
            System.Diagnostics.Debug.Assert(!output_3.Value); 
 
            input_0.Value = false;  
            input_1.Value = true; 
            await ClockAsync();

            System.Diagnostics.Debug.Assert(!output_0.Value); 
            System.Diagnostics.Debug.Assert(!output_1.Value); 
            System.Diagnostics.Debug.Assert(output_2.Value); 
            System.Diagnostics.Debug.Assert(!output_3.Value); 
 
            input_0.Value = true;  
            input_1.Value = true; 
            await ClockAsync();

            System.Diagnostics.Debug.Assert(!output_0.Value); 
            System.Diagnostics.Debug.Assert(!output_1.Value); 
            System.Diagnostics.Debug.Assert(!output_2.Value); 
            System.Diagnostics.Debug.Assert(output_3.Value); 

            Console.WriteLine("Done testing!");

        }
    }
}