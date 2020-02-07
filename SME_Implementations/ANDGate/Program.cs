using System;
using SME;

namespace ANDGate {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {
                
                var simulator = new ANDGateSimulator();
                var ANDcalculator = new ANDGate(simulator.input);
                
                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
