using System;
using SME;

namespace SingleCycleRISCV {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new SingleCycleRISCV_Simulator();
                var PC = new PC();
                var Incre = new Incrementer();
                var incmux = new Inc_mux();
                var IM = new IM();
                var Reg = new Register();
                var mALU = new ALU();
                var regmux = new Reg_mux();
                var memmux = new Mem_mux();
                var WB = new WriteBuffer();

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
