using System;
using SME;

namespace Program_Counter {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new PC_Simulator();
                var PC = new PC();

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
