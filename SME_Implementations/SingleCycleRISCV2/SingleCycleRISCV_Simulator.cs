using System;
using SME;

namespace SingleCycleRISCV {
    public class SingleCycleRISCV_Simulator : SimulationProcess {
        // For debugging
        [OutputBus]
        public readonly PCSel PCSel = Scope.CreateOrLoadBus<PCSel>();
        [OutputBus]
        public readonly GoTo GoTo = Scope.CreateOrLoadBus<GoTo>();
        [OutputBus]
        public readonly ALU_Output ALU_Output = Scope.CreateOrLoadBus<ALU_Output>();

        // Instruction Fetch
        [InputBus]
		public readonly ANDGate_Output ANDGate = Scope.CreateOrLoadBus<ANDGate_Output>();
        [InputBus]
		public readonly Mux1_Output Mux1 = Scope.CreateOrLoadBus<Mux1_Output>();
        [InputBus]
		public readonly PC_Output PC = Scope.CreateOrLoadBus<PC_Output>();
        [InputBus]
		public readonly Next_Output Next = Scope.CreateOrLoadBus<Next_Output>();
        [InputBus]
		public readonly Instruction Instruction = Scope.CreateOrLoadBus<Instruction>();
        [InputBus]
		public readonly Read_Register_1 Read_Register_1 = Scope.CreateOrLoadBus<Read_Register_1>();
        [InputBus]
		public readonly Read_Register_2 Read_Register_2 = Scope.CreateOrLoadBus<Read_Register_2>();
        [InputBus]
		public readonly Write_Register Write_Register = Scope.CreateOrLoadBus<Write_Register>();


        

        // Is cpu running
        [InputBus]
        public readonly CPU CPU = Scope.CreateOrLoadBus<CPU>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            Console.WriteLine($"Is cpu running: {CPU.Running}");
            while (CPU.Running) {
                await ClockAsync();

                Console.WriteLine($"Instruction Fetch Buses \n");
                Console.WriteLine($"ANDGate Output: {ANDGate.Value}");
                Console.WriteLine($"Mux1 Output: {Mux1.Address}");
                Console.WriteLine($"Program Counter Output: {PC.Address}");
                Console.WriteLine($"Next Output: {Next.Address}");
                Console.WriteLine($"Instruction Output: {Instruction.Current}");
                Console.WriteLine($"Read Register 1 Output: {Read_Register_1.Address}");
                Console.WriteLine($"Read Register 2 Output: {Read_Register_2.Address}");
                Console.WriteLine($"Write Register Output: {Write_Register.Address}");
                Console.WriteLine($"CPU running: {CPU.Running}\n");
            }


            Console.WriteLine("Done testing!");

        }
    }
}