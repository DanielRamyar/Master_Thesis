using System;
using SME;

namespace SingleCycleRISCV {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new SingleCycleRISCV_Simulator();
                var PC = new PC();
                var IM = new IM();
                // var Split = new splitter();
                // var Reg = new Register();
                // var mALU = new ALU();
                // var regmux = new Reg_mux();
                // var memmux = new Mem_mux();

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
