using System;
using SME;

namespace Decoder_2_Bit {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new DecoderSimulator();
                var NOTGate_0 = new NOTGate_0(simulator.input_0);
                var NOTGate_1 = new NOTGate_1(simulator.input_1);

                var ANDGate_0 = new ANDGate_0(NOTGate_0.output_0, NOTGate_1.output_1);
                var ANDGate_1 = new ANDGate_1(simulator.input_0, NOTGate_1.output_1);
                var ANDGate_2 = new ANDGate_2(simulator.input_1, NOTGate_0.output_0);
                var ANDGate_3 = new ANDGate_3(simulator.input_0, simulator.input_1);

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
