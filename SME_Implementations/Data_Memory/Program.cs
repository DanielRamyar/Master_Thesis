using System;
using SME;

namespace Data_Memory {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new Instruction_Memory_Simulator();
                var DM = new DM();

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
