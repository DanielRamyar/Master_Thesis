using System;
using SME;

namespace SingleCycleRISCV {
    public class SingleCycleRISCV_Simulator : SimulationProcess {

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

        // Instruction decode
        [InputBus]
		public readonly RS1 m_RS1 = Scope.CreateOrLoadBus<RS1>(); 
        [InputBus]
		public readonly RS2 m_RS2 = Scope.CreateOrLoadBus<RS2>(); 
        [InputBus]
		public readonly Immediate m_Immediate = Scope.CreateOrLoadBus<Immediate>(); 
        [InputBus]
		public readonly WB_WriteRegister m_WB_WriteRegister = Scope.CreateOrLoadBus<WB_WriteRegister>();
        [InputBus]
		public readonly WB_Data m_WB_Data = Scope.CreateOrLoadBus<WB_Data>();
        [InputBus]
		public readonly WB_WriteControl m_WB_WriteControl = Scope.CreateOrLoadBus<WB_WriteControl>();
        // Instruction Execute
        [InputBus]
		public readonly Mux2_Output m_Mux2_Output = Scope.CreateOrLoadBus<Mux2_Output>();    
        [InputBus]
		public readonly Mux3_Output m_Mux3_Output = Scope.CreateOrLoadBus<Mux3_Output>();    
        [InputBus]
		public readonly ALU_Output m_ALU_Output = Scope.CreateOrLoadBus<ALU_Output>();
        [InputBus]
		public readonly GoTo_Output m_GoTo_Output = Scope.CreateOrLoadBus<GoTo_Output>();
        // Data Memory Access
        [InputBus]
		public readonly DM_Output m_DM_Output = Scope.CreateOrLoadBus<DM_Output>();
        // Write Back
        [InputBus]
		public readonly Mux4_Output m_Mux4_Output = Scope.CreateOrLoadBus<Mux4_Output>();


        

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
                Console.WriteLine($"Write Register Output: {Write_Register.Address}\n");

                Console.WriteLine($"Instruction Decode Buses \n");
                Console.WriteLine($"Register 1 Output: {m_RS1.Data}");
                Console.WriteLine($"Register 2 Output: {m_RS2.Data}");
                Console.WriteLine($"Immediate Generator Output: {m_Immediate.Immediate}");
                Console.WriteLine($"Write Back Register Output: {m_WB_WriteRegister.Address}");
                Console.WriteLine($"Write Back Data Output: {m_WB_Data.Data}");
                Console.WriteLine($"Write Back Control Output: {m_WB_WriteControl.Enable}\n");

                Console.WriteLine($"Instruction Execute Buses \n");
                Console.WriteLine($"Mux2 Output: {m_Mux2_Output.Data}");
                Console.WriteLine($"Mux3 Output: {m_Mux3_Output.Data}");
                Console.WriteLine($"ALU Output: {m_ALU_Output.Value}");
                Console.WriteLine($"Goto Output: {m_GoTo_Output.Value}");
                Console.WriteLine($"DM Output: {m_DM_Output.Data}\n");

                Console.WriteLine($"Instruction Execute Buses \n");
                Console.WriteLine($"Mux4 Output: {m_Mux4_Output.Data}");

                Console.WriteLine($"CPU running: {CPU.Running}\n");
            }


            Console.WriteLine("Done testing!");

        }
    }
}