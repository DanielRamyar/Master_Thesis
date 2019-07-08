using System;
using SME;

namespace ALU_1_Bit {
    public class ALU_1_Bit_Simulator : SimulationProcess {
        [InputBus]
		public readonly Output output = Scope.CreateOrLoadBus<Output>();
        [InputBus]
		public readonly Zero_out zero_out = Scope.CreateOrLoadBus<Zero_out>();
        

        [OutputBus]
        public readonly OperationCode OperationCode = Scope.CreateOrLoadBus<OperationCode>();
        [OutputBus]
        public readonly A A = Scope.CreateOrLoadBus<A>();
        [OutputBus]
        public readonly B B = Scope.CreateOrLoadBus<B>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();

            A.Value = 4;
            B.Value = 4;
            OperationCode.Value = 0; // AND

            await ClockAsync();
            Console.WriteLine($"ALU input: {A.Value} (Input 0) - {B.Value} (Input 1) - {OperationCode.Value} (Input 2)\n");
            Console.WriteLine($"ALU output: {output.Value} (Output 0) \n");
            Console.WriteLine($"ALU zero output: {zero_out.Value} (Output 1) \n");
               
            A.Value = 6;
            B.Value = 3;
            OperationCode.Value = 1; // OR

            await ClockAsync();
            Console.WriteLine($"ALU input: {A.Value} (Input 0) - {B.Value} (Input 1) - {OperationCode.Value} (Input 2)\n");
            Console.WriteLine($"ALU output: {output.Value} (Output 0) \n");
            Console.WriteLine($"ALU zero output: {zero_out.Value} (Output 1) \n");
               
            A.Value = 5;
            B.Value = 5;
            OperationCode.Value = 2; // Sum

            await ClockAsync();
            Console.WriteLine($"ALU input: {A.Value} (Input 0) - {B.Value} (Input 1) - {OperationCode.Value} (Input 2)\n");
            Console.WriteLine($"ALU output: {output.Value} (Output 0) \n");
            Console.WriteLine($"ALU zero output: {zero_out.Value} (Output 1) \n");
               
            A.Value = 10;
            B.Value = 10;
            OperationCode.Value = 3;

            await ClockAsync();
            Console.WriteLine($"ALU input: {A.Value} (Input 0) - {B.Value} (Input 1) - {OperationCode.Value} (Input 2)\n");
            Console.WriteLine($"ALU output: {output.Value} (Output 0) \n");
            Console.WriteLine($"ALU zero output: {zero_out.Value} (Output 1) \n");

            Console.WriteLine("Done testing!");

        }
    }
}