//
//  main.c
//  imagesegmentation
//
//  Created by Daniel Ramyar on 14/04/2020.
//  Copyright © 2020 Daniel Ramyar. All rights reserved.
//
#include <time.h>
#include <stdio.h>

int main(int argc, const char * argv[]) {
    clock_t start = clock();
    // Import data
    int data[] = { 176,  46,  16,   9,   7,   8,  16,  15,  11,  12,  13,  15,  15,  17,  12,  24,  43,  55, 120, 246, 255, 252, 175
    };
//    uint8_t data[690];
//    data[0]  = 255; data[1]  = 255; data[2]  = 255; data[3]  = 255;  data[4] = 255; data[5]  = 255; data[6]  = 255; data[7]  = 255; data[8]  = 255; data[9]  = 253;
//    data[10] = 241; data[11] = 220; data[12] = 243; data[13] = 198; data[14] = 132; data[15] = 210; data[16] = 255; data[17] = 255; data[18] = 255; data[19] = 255;
//    data[20] = 255; data[21] = 255; data[22] = 255; data[23] = 255; data[24] = 255; data[25] = 255; data[26] = 255; data[27] = 255; data[28] = 255; data[29] = 231;
//    data[30] = 187; data[31] = 193; data[32] = 158; data[33] = 81; data[34] = 53; data[35] = 72; data[36] = 70; data[37] = 28; data[38] = 80; data[39] = 195;
//    data[40] = 226; data[41] = 249; data[42] = 255; data[43] = 255; data[44] = 255; data[45] = 255; data[46] = 255; data[47] = 255; data[48] = 255; data[49] = 255;
//    data[50] = 255; data[51] = 207; data[52] = 83; data[53] = 39; data[54] = 37; data[55] = 33; data[56] = 34; data[57] = 38; data[58] = 30; data[59] = 26;
//    data[60] = 20; data[61] = 16; data[62] = 25; data[63] = 40; data[64] = 172; data[65] = 234; data[66] = 252; data[67] = 255; data[68] = 255; data[69] = 255;
//    data[70] = 255; data[71] = 255; data[72] = 250; data[73] = 183; data[74] = 81; data[75] = 16; data[76] = 24; data[77] = 23; data[78] = 31; data[79] = 37;
//    data[80] = 25; data[81] = 19; data[82] = 18; data[83] = 15; data[84] = 15; data[85] = 18; data[86] = 16; data[87] = 77; data[88] = 109; data[89] = 157;
//    data[90] = 227; data[91] = 255; data[92] = 255; data[93] = 255; data[94] = 254; data[95] = 176; data[96] = 46; data[97] = 16; data[98] = 9; data[99] = 7;
//
//    data[100] = 8; data[101] = 16; data[102] = 15; data[103] = 11; data[104] = 12; data[105] = 13; data[106] = 15; data[107] = 15; data[108] = 17; data[109] = 12;
//    data[110] = 24; data[111] = 43; data[112] = 55; data[113] = 120; data[114] = 246; data[115] = 255; data[116] = 252; data[117] = 175; data[118] = 49; data[119] = 7;
//    data[120] = 14; data[121] = 11; data[122] = 9; data[123] = 7; data[124] = 8; data[125] = 7; data[126] = 8; data[127] = 9; data[128] = 12; data[129] = 18;
//    data[130] = 15; data[131] = 7; data[132] = 13; data[133] = 26; data[134] = 35; data[135] = 38; data[136] = 106; data[137] = 244; data[138] = 255; data[139] = 194;
//    data[140] = 40; data[141] = 9; data[142] = 13; data[143] = 13; data[144] = 23; data[145] = 25; data[146] = 20; data[147] = 15; data[148] = 11; data[149] = 10;
//    data[150] = 19; data[151] = 27; data[152] = 52; data[153] = 71; data[154] = 48; data[155] = 19; data[156] = 11; data[157] = 18; data[158] = 27; data[159] = 152;
//    data[160] = 247; data[161] = 245; data[162] = 76; data[163] = 10; data[164] = 16; data[165] = 11; data[166] = 14; data[167] = 16; data[168] = 18; data[169] = 22;
//    data[170] = 33; data[171] = 45; data[172] = 55; data[173] = 82; data[174] = 113; data[175] = 147; data[176] = 172; data[177] = 161; data[178] = 116; data[179] = 69;
//    data[180] = 30; data[181] = 5; data[182] = 132; data[183] = 247; data[184] = 219; data[185] = 23; data[186] = 13; data[187] = 9; data[188] = 8; data[189] = 10;
//    data[190] = 10; data[191] = 8; data[192] = 8; data[193] = 61; data[194] = 135; data[195] = 151; data[196] = 160; data[197] = 188; data[198] = 199; data[199] = 196;
//
//    data[200] = 199; data[201] = 196; data[202] = 178; data[203] = 140; data[204] = 47; data[205] = 100; data[206] = 248; data[207] = 151; data[208] = 25; data[209] = 15;
//    data[210] = 8; data[211] = 9; data[212] = 8; data[213] = 10; data[214] = 15; data[215] = 21; data[216] = 84; data[217] = 182; data[218] = 205; data[219] = 198;
//    data[220] = 201; data[221] = 205; data[222] = 203; data[223] = 197; data[224] = 194; data[225] = 191; data[226] = 195; data[227] = 143; data[228] = 41; data[229] = 202;
//    data[230] = 112; data[231] = 25; data[232] = 18; data[233] = 9; data[234] = 9; data[235] = 10; data[236] = 12; data[237] = 30; data[238] = 46; data[239] = 69;
//    data[240] = 139; data[241] = 192; data[242] = 198; data[243] = 206; data[244] = 217; data[245] = 220; data[246] = 213; data[247] = 202; data[248] = 191; data[249] = 185;
//    data[250] = 189; data[251] = 93; data[252] = 165; data[253] = 186; data[254] = 23; data[255] = 19; data[256] = 8; data[257] = 10; data[258] = 17; data[259] = 22;
//    data[260] = 31; data[261] = 37; data[262] = 52; data[263] = 114; data[264] = 167; data[265] = 186; data[266] = 192; data[267] = 172; data[268] = 151; data[269] = 160;
//    data[270] = 187; data[271] = 194; data[272] = 189; data[273] = 194; data[274] = 138; data[275] = 161; data[276] = 235; data[277] = 23; data[278] = 13; data[279] = 9;
//    data[280] = 11; data[281] = 19; data[282] = 25; data[283] = 22; data[284] = 16; data[285] = 69; data[286] = 147; data[287] = 171; data[288] = 175; data[289] = 149;
//    data[290] = 125; data[291] = 124; data[292] = 119; data[293] = 147; data[294] = 180; data[295] = 198; data[296] = 164; data[297] = 80; data[298] = 212; data[299] = 243;
//
//    data[300] = 52; data[301] = 7; data[302] = 6; data[303] = 6; data[304] = 16; data[305] = 20; data[306] = 10; data[307] = 25; data[308] = 120; data[309] = 187;
//    data[310] = 182; data[311] = 177; data[312] = 184; data[313] = 197; data[314] = 200; data[315] = 177; data[316] = 145; data[317] = 159; data[318] = 178; data[319] = 141;
//    data[320] = 136; data[321] = 241; data[322] = 249; data[323] = 113; data[324] = 16; data[325] = 57; data[326] = 38; data[327] = 10; data[328] = 12; data[329] = 10;
//    data[330] = 65; data[331] = 168; data[332] = 193; data[333] = 185; data[334] = 183; data[335] = 178; data[336] = 171; data[337] = 126; data[338] = 90; data[339] = 114;
//    data[340] = 164; data[341] = 139; data[342] = 131; data[343] = 144; data[344] = 241; data[345] = 253; data[346] = 160; data[347] = 53; data[348] = 127; data[349] = 113;
//    data[350] = 53; data[351] = 19; data[352] = 26; data[353] = 93; data[354] = 173; data[355] = 187; data[356] = 191; data[357] = 188; data[358] = 158; data[359] = 165;
//    data[360] = 118; data[361] = 81; data[362] = 157; data[363] = 213; data[364] = 151; data[365] = 146; data[366] = 117; data[367] = 245; data[368] = 255; data[369] = 206;
//    data[370] = 62; data[371] = 165; data[372] = 136; data[373] = 96; data[374] = 84; data[375] = 42; data[376] = 80; data[377] = 161; data[378] = 186; data[379] = 191;
//    data[380] = 201; data[381] = 197; data[382] = 160; data[383] = 124; data[384] = 159; data[385] = 210; data[386] = 224; data[387] = 189; data[388] = 138; data[389] = 127;
//    data[390] = 244; data[391] = 255; data[392] = 240; data[393] = 84; data[394] = 158; data[395] = 124; data[396] = 110; data[397] = 142; data[398] = 51; data[399] = 70;
//
//    data[400] = 162; data[401] = 179; data[402] = 185; data[403] = 198; data[404] = 206; data[405] = 189; data[406] = 177; data[407] = 198; data[408] = 207; data[409] = 211;
//    data[410] = 205; data[411] = 154; data[412] = 150; data[413] = 241; data[414] = 255; data[415] = 255; data[416] = 182; data[417] = 110; data[418] = 192; data[419] = 167;
//    data[420] = 149; data[421] = 63; data[422] = 67; data[423] = 148; data[424] = 168; data[425] = 171; data[426] = 185; data[427] = 198; data[428] = 207; data[429] = 204;
//    data[430] = 196; data[431] = 200; data[432] = 208; data[433] = 211; data[434] = 196; data[435] = 189; data[436] = 241; data[437] = 255; data[438] = 255; data[439] = 222;
//    data[440] = 40; data[441] = 166; data[442] = 208; data[443] = 151; data[444] = 65; data[445] = 44; data[446] = 112; data[447] = 152; data[448] = 155; data[449] = 167;
//    data[450] = 182; data[451] = 184; data[452] = 181; data[453] = 177; data[454] = 172; data[455] = 172; data[456] = 178; data[457] = 172; data[458] = 176; data[459] = 233;
//    data[460] = 255; data[461] = 255; data[462] = 233; data[463] = 42; data[464] = 33; data[465] = 126; data[466] = 133; data[467] = 87; data[468] = 65; data[469] = 101;
//    data[470] = 129; data[471] = 135; data[472] = 144; data[473] = 155; data[474] = 157; data[475] = 169; data[476] = 187; data[477] = 141; data[478] = 80; data[479] = 81;
//    data[480] = 132; data[481] = 165; data[482] = 243; data[483] = 255; data[484] = 255; data[485] = 238; data[486] = 88; data[487] = 37; data[488] = 80; data[489] = 108;
//    data[490] = 118; data[491] = 113; data[492] = 120; data[493] = 111; data[494] = 109; data[495] = 120; data[496] = 119; data[497] = 129; data[498] = 164; data[499] = 195;
//
//    data[500] = 195; data[501] = 163; data[502] = 131; data[503] = 143; data[504] = 218; data[505] = 255; data[506] = 255; data[507] = 255; data[508] = 251; data[509] = 208;
//    data[510] = 194; data[511] = 184; data[512] = 112; data[513] = 115; data[514] = 114; data[515] = 117; data[516] = 111; data[517] = 123; data[518] = 131; data[519] = 139;
//    data[520] = 173; data[521] = 193; data[522] = 196; data[523] = 180; data[524] = 164; data[525] = 152; data[526] = 240; data[527] = 255; data[528] = 255; data[529] = 255;
//    data[530] = 255; data[531] = 255; data[532] = 255; data[533] = 241; data[534] = 150; data[535] = 109; data[536] = 99; data[537] = 102; data[538] = 126; data[539] = 143;
//    data[540] = 147; data[541] = 156; data[542] = 137; data[543] = 124; data[544] = 109; data[545] = 71; data[546] = 52; data[547] = 94; data[548] = 198; data[549] = 254;
//    data[550] = 255; data[551] = 255; data[552] = 255; data[553] = 255; data[554] = 255; data[555] = 255; data[556] = 255; data[557] = 210; data[558] = 114; data[559] = 99;
//    data[560] = 96; data[561] = 119; data[562] = 144; data[563] = 145; data[564] = 147; data[565] = 140; data[566] = 119; data[567] = 62; data[568] = 19; data[569] = 21;
//    data[570] = 133; data[571] = 244; data[572] = 255; data[573] = 255; data[574] = 255; data[575] = 255; data[576] = 255; data[577] = 255; data[578] = 255; data[579] = 255;
//    data[580] = 240; data[581] = 157; data[582] = 108; data[583] = 112; data[584] = 119; data[585] = 125; data[586] = 127; data[587] = 152; data[588] = 164; data[589] = 138;
//    data[590] = 119; data[591] = 101; data[592] = 95; data[593] = 183; data[594] = 253; data[595] = 255; data[596] = 255; data[597] = 255; data[598] = 255; data[599] = 255;
//
//    data[600] = 255; data[601] = 255; data[602] = 255; data[603] = 255; data[604] = 231; data[605] = 152; data[606] = 123; data[607] = 125; data[608] = 124; data[609] = 131;
//    data[610] = 160; data[611] = 147; data[612] = 106; data[613] = 111; data[614] = 133; data[615] = 138; data[616] = 218; data[617] = 255; data[618] = 255; data[619] = 255;
//    data[620] = 255; data[621] = 255; data[622] = 255; data[623] = 255; data[624] = 255; data[625] = 255; data[626] = 255; data[627] = 255; data[628] = 234; data[629] = 158;
//    data[630] = 115; data[631] = 119; data[632] = 124; data[633] = 138; data[634] = 146; data[635] = 106; data[636] = 80; data[637] = 96; data[638] = 148; data[639] = 232;
//    data[640] = 255; data[641] = 255; data[642] = 255; data[643] = 255; data[644] = 255; data[645] = 255; data[646] = 255; data[647] = 255; data[648] = 255; data[649] = 255;
//    data[650] = 255; data[651] = 255; data[652] = 243; data[653] = 171; data[654] = 107; data[655] = 100; data[656] = 98; data[657] = 134; data[658] = 135; data[659] = 103;
//    data[660] = 113; data[661] = 191; data[662] = 255; data[663] = 255; data[664] = 255; data[665] = 255; data[666] = 255; data[667] = 255; data[668] = 255; data[669] = 255;
//    data[670] = 255; data[671] = 255; data[672] = 255; data[673] = 255; data[674] = 255; data[675] = 255; data[676] = 253; data[677] = 246; data[678] = 207; data[679] = 118;
//    data[680] = 89; data[681] = 116; data[682] = 144; data[683] = 204; data[684] = 254; data[685] = 255; data[686] = 255; data[687] = 255; data[688] = 255;
    
    // Get array size of Data
    const int sizeData = sizeof(data) / sizeof(data[0]);
    
    // Allocate data for new array
    int newData[sizeData];
    
    
    // Do image segmenting
    for (int i = 0; i < sizeData; i++) {
        newData[i] = data[i] < 100 ? data[i] : 255;
    }
    
    
    clock_t stop = clock();
    double elapsed = (double)(stop - start) * 1000.0 / CLOCKS_PER_SEC;
    printf("Time elapsed in ms: %f", elapsed);
    
    FILE *f = fopen("/Users/danielramyar/Desktop/Thesis/random/imagesegmentation/imagesegmentation/newData.txt", "w");
//    fwrite(&newData, sizeof(int), sizeof(newData), f);
    
    for(int i = 0; i < sizeData; i++) {
        fprintf(f, "%d ", newData[i]);
    }
    
    
    fclose(f);
    
    return 0;
}
