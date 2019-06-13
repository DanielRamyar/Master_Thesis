using System;
using SME;

namespace ALU_1_Bit {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new ALU_1_Bit_Simulator();
                var NOT_A = new Invert_A();
                var NOT_B = new Invert_B();
                var NOT_CarryIn = new Invert_CarryIn();

                var ANDGate_0 = new ANDGate_0();
                var ANDGate_1 = new ANDGate_1();
                var ANDGate_2 = new ANDGate_2();
                var ANDGate_3 = new ANDGate_3();
                var ANDGate_4 = new ANDGate_4();
                var ANDGate_5 = new ANDGate_5();
                var ANDGate_6 = new ANDGate_6();

                var ORGate_0 = new ORGate_0();
                var ORGate_1 = new ORGate_1();

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
