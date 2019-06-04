using System;
using SME;

namespace Multiplexer_2_Input {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new DecoderSimulator();
                var NOTGate_0 = new NOTGate_0();
                var NOTGate_1 = new NOTGate_1();

                var ANDGate_0 = new ANDGate_0();
                var ANDGate_1 = new ANDGate_1();
                var ANDGate_2 = new ANDGate_2();
                var ANDGate_3 = new ANDGate_3();

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
