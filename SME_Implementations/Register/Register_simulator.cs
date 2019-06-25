using System;
using SME;

namespace RegisterNS {
    public class Register_Simulator : SimulationProcess {
        [InputBus]
		public readonly Read_Output_1 output_1 = Scope.CreateOrLoadBus<Read_Output_1>();
        [InputBus]
		public readonly Read_Output_2 output_2 = Scope.CreateOrLoadBus<Read_Output_2>();

        [OutputBus]
        public readonly Read_Register_1 read_input_1 = Scope.CreateOrLoadBus<Read_Register_1>();
        [OutputBus]
        public readonly Read_Register_2 read_input_2 = Scope.CreateOrLoadBus<Read_Register_2>();
        [OutputBus]
        public readonly Write_Register write_input = Scope.CreateOrLoadBus<Write_Register>();
        [OutputBus]
        public readonly Write_Data write_data = Scope.CreateOrLoadBus<Write_Data>();
        [OutputBus]
        public readonly Write_Control write_control = Scope.CreateOrLoadBus<Write_Control>();

        public async override System.Threading.Tasks.Task Run() {

            Console.WriteLine("Starting test!\n");
            await ClockAsync();
            // write to register 4 and read register 0 and 4
            write_control.Enable = true;
            write_input.address = 4;
            write_data.Data = 297;

            read_input_1.address = 0;
            read_input_2.address = 4;

            await ClockAsync();
            // deassert write signal and try to write register 6 should not write
            write_control.Enable = false;
            write_input.address = 6;
            write_data.Data = 27;

            await ClockAsync();
            Console.WriteLine($"Register input: {write_control.Enable}, {write_input.address}, {write_data.Data}");
            Console.WriteLine($"Program counter outputs: {output_1.Data} and {output_2.Data} \n");
            
            // Write all registers, note it is not possible to write to register 0 or above register 31
            for (uint i = 1; i < 32; i++) {
                write_control.Enable = true;
                write_input.address = i;
                write_data.Data = 87 + (int)i;

                await ClockAsync();
            }

            for (uint i = 1; i < 32; i++) {
                write_control.Enable = false;
                read_input_1.address = i-1;
                read_input_2.address = i;

                await ClockAsync();
                Console.WriteLine($"Register {i-1} and {i}: {output_1.Data} and {output_2.Data} \n");
            }
            await ClockAsync();

            Console.WriteLine("Done testing!");

        }
    }
}