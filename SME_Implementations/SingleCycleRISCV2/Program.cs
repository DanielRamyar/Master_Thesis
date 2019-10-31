using System;
using SME;

namespace SingleCycleRISCV {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new SingleCycleRISCV_Simulator();
                
                // Instruction Fetch
                var AND = new ANDGate();
                var Mux1 = new Mux1();
                var PC = new PC();
                var Next = new Next();
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
