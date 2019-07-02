using System;
using SME;

namespace Instruction_Memory {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new Instruction_Memory_Simulator();
                var IM = new IM();

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
