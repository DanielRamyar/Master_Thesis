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
                // Instruction Decode and Register read
                var Reg = new Register();
                var ImmGen = new ImmGen();
                var Control = new Control();
                var WB = new WriteBuffer();
                // Instruction Execute
                var Mux2 = new Mux2();
                var Mux3 = new Mux3();
                var ALU = new ALU();
                var GoTo = new GoTo();
                // Memory access
                var DM = new DM();
                // Write back
                var Mux4 = new Mux4();

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
