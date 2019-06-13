using System;
using SME;

namespace ALU_1_Bit {
    public class ALU_1_Bit_Simulator : SimulationProcess {
        [InputBus]
		public readonly CarryOut output_0 = Scope.CreateOrLoadBus<CarryOut>();
        [InputBus]
		public readonly SUM output_1 = Scope.CreateOrLoadBus<SUM>();
        

        [OutputBus]
		public readonly A A = Scope.CreateOrLoadBus<A>();
        [OutputBus]
		public readonly B B = Scope.CreateOrLoadBus<B>();
        [OutputBus]
		public readonly CarryIn CarryIn = Scope.CreateOrLoadBus<CarryIn>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
               
            A.Value = false;
            B.Value = false;
            CarryIn.Value = false;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {A.Value} (Input 0) - {B.Value} (Input 1) - {CarryIn.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_0.Value} (Output 0) - {output_1.Value} (Output 1) \n");
               
            A.Value = false;
            B.Value = false;
            CarryIn.Value = true;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {A.Value} (Input 0) - {B.Value} (Input 1) - {CarryIn.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_0.Value} (Output 0) - {output_1.Value} (Output 1) \n");
               
            A.Value = false;
            B.Value = true;
            CarryIn.Value = false;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {A.Value} (Input 0) - {B.Value} (Input 1) - {CarryIn.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_0.Value} (Output 0) - {output_1.Value} (Output 1) \n");
               
            A.Value = false;
            B.Value = true;
            CarryIn.Value = true;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {A.Value} (Input 0) - {B.Value} (Input 1) - {CarryIn.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_0.Value} (Output 0) - {output_1.Value} (Output 1) \n");
               
            A.Value = true;
            B.Value = false;
            CarryIn.Value = false;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {A.Value} (Input 0) - {B.Value} (Input 1) - {CarryIn.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_0.Value} (Output 0) - {output_1.Value} (Output 1) \n");
               
            A.Value = true;
            B.Value = false;
            CarryIn.Value = true;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {A.Value} (Input 0) - {B.Value} (Input 1) - {CarryIn.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_0.Value} (Output 0) - {output_1.Value} (Output 1) \n");
               
            A.Value = true;
            B.Value = true;
            CarryIn.Value = false;
            
            await ClockAsync();
            Console.WriteLine($"Decoder input: {A.Value} (Input 0) - {B.Value} (Input 1) - {CarryIn.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_0.Value} (Output 0) - {output_1.Value} (Output 1) \n");

            A.Value = true;
            B.Value = true;
            CarryIn.Value = true;

            await ClockAsync();
            Console.WriteLine($"Decoder input: {A.Value} (Input 0) - {B.Value} (Input 1) - {CarryIn.Value} (Input 2)\n");
            Console.WriteLine($"Decoder outputs: {output_0.Value} (Output 0) - {output_1.Value} (Output 1) \n");

            Console.WriteLine("Done testing!");

        }
    }
}