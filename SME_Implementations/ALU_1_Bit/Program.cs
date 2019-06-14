using System;
using SME;

namespace ALU_1_Bit {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new ALU_1_Bit_Simulator();
                var ALU = new ALU();

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
