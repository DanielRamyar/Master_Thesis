﻿using System;
using SME;

namespace SingleCycleRISCV {
    class Program {
        static void Main(string[] args) {
            using(var sim = new Simulation()) {

                var simulator = new SingleCycleRISCV_Simulator();
                var PC = new PC();

                sim
                    .BuildCSVFile()
                    .BuildGraph()
                    .BuildVHDL()
    			    .Run();
            }
        }
    }
}