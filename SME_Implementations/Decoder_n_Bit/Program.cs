using System;
using SME;

namespace Decoder_n_Bit {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new DecoderSimulator();
                var calculator = new Decoder(simulator.input);

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
