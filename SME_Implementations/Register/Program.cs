using System;
using SME;

namespace RegisterNS {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new Register_Simulator();
                var Register = new Register();

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
