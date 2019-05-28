using System;
using SME;

namespace LogicGates {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new LogicGateSimulator();
                var ANDcalculator = new ANDGate(simulator.input);
                var ORcalculator = new ORGate(simulator.input);
                var NOTcalculator = new NOTGate(simulator.input);
                var XORcalculator = new XORGate(simulator.input);

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}
