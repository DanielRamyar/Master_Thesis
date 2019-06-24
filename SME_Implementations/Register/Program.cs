using System;
using SME;

namespace Register {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new Register_Simulator();
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
