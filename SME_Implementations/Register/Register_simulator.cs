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
            write_control.Enable = true;
            write_input.address = 4;
            write_data.Data = 297;

            read_input_1.address = 0;
            read_input_2.address = 4;

            await ClockAsync();
            await ClockAsync();
            Console.WriteLine($"Register input: {write_control.Enable}, {write_input.address}, {write_data.Data}");
            Console.WriteLine($"Program counter outputs: {output_1.Data} and {output_2.Data} \n");
               

            await ClockAsync();
            Console.WriteLine($"placeholder");


            Console.WriteLine("Done testing!");

        }
    }
}