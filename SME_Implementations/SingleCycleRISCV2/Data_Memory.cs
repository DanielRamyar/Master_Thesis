using System;
using SME;

namespace SingleCycleRISCV {
    public interface DM_Output : IBus {
        [InitialValue]
        long Data {get; set;}
    }

    public class DM : SimpleProcess {
        [InputBus]
        private readonly ALU_Output m_Address = Scope.CreateOrLoadBus<ALU_Output>();
        [InputBus]
        private readonly RS2 m_Data_input = Scope.CreateOrLoadBus<RS2>();
        [InputBus]
        private readonly MemRead m_MemRead = Scope.CreateOrLoadBus<MemRead>();
        [InputBus]
        private readonly MemWrite m_MemWrite = Scope.CreateOrLoadBus<MemWrite>();
        [InputBus]
        private readonly SizeAndSign m_SizeAndSign = Scope.CreateOrLoadBus<SizeAndSign>();

        [OutputBus]
		public readonly DM_Output output = Scope.CreateOrLoadBus<DM_Output>();

        byte[] Data_Memory = new byte[80];

        protected override void OnTick() {
            if (m_MemRead.Enable) {
                long temp0 = 0;
                int temp1 = 0;
                int temp2 = 0;
                switch (m_SizeAndSign.Value) {
                    case 0: // load long 
                        temp1 = Data_Memory[m_Address.Value] | Data_Memory[m_Address.Value + 1] << 8
                                                             | Data_Memory[m_Address.Value + 2] << 16
                                                             | Data_Memory[m_Address.Value + 3] << 24; 

                        temp2 = Data_Memory[m_Address.Value + 4] | Data_Memory[m_Address.Value + 5] << 8
                                                                 | Data_Memory[m_Address.Value + 6] << 16
                                                                 | Data_Memory[m_Address.Value + 7] << 24;

                        temp0 = temp1 | (long)temp2 << 32;
                        break;
                    case 1: // load word
                        temp0 = Data_Memory[m_Address.Value] | Data_Memory[m_Address.Value + 1] << 8
                                                             | Data_Memory[m_Address.Value + 2] << 16
                                                             | (sbyte)Data_Memory[m_Address.Value + 3] << 24; // Casting to signed byte here to preserve sign
                        break;
                    case 2: // load short
                        temp0 = Data_Memory[m_Address.Value] | (sbyte)Data_Memory[m_Address.Value + 1] << 8; // Casting to signed byte here to preserve sign
                        break;
                    case 3: // load byte
                        temp0 = (sbyte)Data_Memory[m_Address.Value]; // Casting to signed byte here to preserve sign
                        break;
                    case 4: // load ubyte
                        temp0 = Data_Memory[m_Address.Value]; 
                        break;
                    case 5: // load ushort
                        temp0 = Data_Memory[m_Address.Value] | Data_Memory[m_Address.Value + 1] << 8; 
                        break;
                    case 6: // load uword 
                        temp0 = (uint)Data_Memory[m_Address.Value] | (uint)Data_Memory[m_Address.Value + 1] << 8
                                                                   | (uint)Data_Memory[m_Address.Value + 2] << 16
                                                                   | (uint)Data_Memory[m_Address.Value + 3] << 24;
                        break;
                }
                output.Data = temp0;
            }
            else if (m_MemWrite.Enable) {
                switch (m_SizeAndSign.Value) {
                    case 0:
                        Data_Memory[m_Address.Value]     = (byte)(m_Data_input.Data       & 0xFF); // Take first byte and store to byte array
                        Data_Memory[m_Address.Value + 1] = (byte)(m_Data_input.Data >> 8  & 0xFF); // Take second byte and store to byte array and increment address with correct offset
                        Data_Memory[m_Address.Value + 2] = (byte)(m_Data_input.Data >> 16 & 0xFF); // Take third byte and store to byte array with correct offset
                        Data_Memory[m_Address.Value + 3] = (byte)(m_Data_input.Data >> 24 & 0xFF); // Take fourth byte and store to byte array with correct offset
                        Data_Memory[m_Address.Value + 4] = (byte)(m_Data_input.Data >> 32 & 0xFF); // Take fifth byte and store to byte array with correct offset
                        Data_Memory[m_Address.Value + 5] = (byte)(m_Data_input.Data >> 40 & 0xFF); // Take sixth byte and store to byte array with correct offset
                        Data_Memory[m_Address.Value + 6] = (byte)(m_Data_input.Data >> 48 & 0xFF); // Take seventh byte and store to byte array with correct offset
                        Data_Memory[m_Address.Value + 7] = (byte)(m_Data_input.Data >> 56 & 0xFF); // Take eigth byte and store to byte array with correct offset
                        break;
                    case 1:
                        Data_Memory[m_Address.Value]     = (byte)(m_Data_input.Data       & 0xFF); // Take first byte and store to byte array
                        Data_Memory[m_Address.Value + 1] = (byte)(m_Data_input.Data >> 8  & 0xFF); // Take second byte and store to byte array with correct offset
                        Data_Memory[m_Address.Value + 2] = (byte)(m_Data_input.Data >> 16 & 0xFF); // Take third byte and store to byte array with correct offset
                        Data_Memory[m_Address.Value + 3] = (byte)(m_Data_input.Data >> 24 & 0xFF); // Take fourth byte and store to byte array with correct offset
                        break;
                    case 2:
                        Data_Memory[m_Address.Value]     = (byte)(m_Data_input.Data      & 0xFF); // Take first byte and store to byte array
                        Data_Memory[m_Address.Value + 1] = (byte)(m_Data_input.Data >> 8 & 0xFF); // Take second byte and store to byte array with correct offset
                        break;
                    case 3:
                        Data_Memory[m_Address.Value] = (byte)(m_Data_input.Data & 0xFF); // Take first byte and store to byte array
                        break;
                }
            }
            else {
                output.Data = 0;
            }
            // Console.WriteLine($"Data Memory: [{string.Join(", ", Data_Memory)}]"); // Using this to print whole memory

            // Using this to print whole memory with | delimiter every 8 byts for debugging
            for (int c = 0; c < Data_Memory.Length; c++) {
                if (c == 0) {
                    Console.Write($"Data Memory: [{Data_Memory[c]}");
                }
                else if (c == Data_Memory.Length - 1) {
                    Console.Write($", {Data_Memory[c]}]\n");
                }
                else if ((c + 1) % 8 == 0) {
                    Console.Write($", {Data_Memory[c]}|");
                }
                else if ((c + 1) % 8 == 1) {
                    Console.Write($" {Data_Memory[c]}");
                }
                else {
                    Console.Write($", {Data_Memory[c]}");
                }
            }

        }
    }

}