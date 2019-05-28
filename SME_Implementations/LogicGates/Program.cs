using System;
using SME;

namespace LogicGates {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {
                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run(new ANDGate(),
                         new LogicGateSimulator());
            }
        }
    }
}
