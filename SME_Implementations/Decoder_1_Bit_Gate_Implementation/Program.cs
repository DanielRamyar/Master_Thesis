using System;
using SME;

namespace Decoder_1_Bit {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new DecoderSimulator();
                var NOTGate_0 = new NOTGate_0();
                var ANDGate_0 = new ANDGate_0();
                var ANDGate_1 = new ANDGate_1();

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
