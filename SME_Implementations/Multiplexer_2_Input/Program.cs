using System;
using SME;

namespace Multiplexer_2_Input {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new MultiplexerSimulator();
                var NOTGate_0 = new NOTGate_0();

                var ANDGate_0 = new ANDGate_0();
                var ANDGate_1 = new ANDGate_1();

                var ORGate_0 = new ORGate_0();

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
