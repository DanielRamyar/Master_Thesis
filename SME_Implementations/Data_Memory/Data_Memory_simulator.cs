using System;
using SME;

namespace Data_Memory {
    public class Instruction_Memory_Simulator : SimulationProcess {
        [InputBus]
		public readonly DM_Output Output = Scope.CreateOrLoadBus<DM_Output>();
        

        [OutputBus]
        public readonly DM_input Address_input = Scope.CreateOrLoadBus<DM_input>();
        [OutputBus]
        public readonly DM_Data_input Data_input = Scope.CreateOrLoadBus<DM_Data_input>();
        [OutputBus]
        public readonly MemRead MemRead_input = Scope.CreateOrLoadBus<MemRead>();
        [OutputBus]
        public readonly MemWrite MemWrite_input = Scope.CreateOrLoadBus<MemWrite>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
            // Read whole memory
            for (uint i = 1; i < 100; i++) {
                MemRead_input.Enable = true;
                MemWrite_input.Enable = false;
                Address_input.Address = i;

                await ClockAsync();
                Console.WriteLine($"Memory address {i}: {Output.Data}\n");
            }
            
            await ClockAsync();
            // Write to memory address 4 
            MemRead_input.Enable = false;
            MemWrite_input.Enable = true;
            Address_input.Address = 4;
            Data_input.Data = 297;
            
            await ClockAsync();
            // Remember to deasses write signal to read
            MemRead_input.Enable = true;
            MemWrite_input.Enable = false;
            Address_input.Address = 4;

            await ClockAsync();
            Console.WriteLine($"Write Data: {Data_input.Data}");
            Console.WriteLine($"Read memory output: {Output.Data} \n");
            // deassert write signal and try to write address 6 should not write
            MemRead_input.Enable = false;
            MemWrite_input.Enable = false;
            Address_input.Address = 6;
            Data_input.Data = 1200;

            await ClockAsync();
            MemRead_input.Enable = true;
            MemWrite_input.Enable = false;

            await ClockAsync();
            Console.WriteLine($"Write Data: {Data_input.Data}");
            Console.WriteLine($"Read memory output: {Output.Data} \n");

            // Write whole memory
            for (uint i = 0; i < 100; i++) {
                MemRead_input.Enable = false;
                MemWrite_input.Enable = true;
                Address_input.Address = i;
                Data_input.Data  = 87 + (int)i;

                await ClockAsync();
            }
            // Read whole memory
            for (uint i = 1; i < 100; i++) {
                MemRead_input.Enable = true;
                MemWrite_input.Enable = false;
                Address_input.Address = i;

                await ClockAsync();
                Console.WriteLine($"Memory address {i}: {Output.Data}\n");
            }

            await ClockAsync();
            Console.WriteLine("Done testing!");

        }
    }
}