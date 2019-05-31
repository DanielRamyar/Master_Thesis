
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;

--library SYSTEM_TYPES;
use work.SYSTEM_TYPES.ALL;

--library CUSTOM_TYPES;
use work.CUSTOM_TYPES.ALL;

use work.csv_util.all;

-- User defined packages here
-- #### USER-DATA-IMPORTS-START
-- #### USER-DATA-IMPORTS-END

entity Decoder_n_Bit_tb is
end;

architecture TestBench of Decoder_n_Bit_tb is

  signal CLOCK : Std_logic;
  signal StopClock : BOOLEAN;
  signal RESET : Std_logic;
  signal ENABLE : Std_logic;

  signal DecoderInput_0_Value : T_SYSTEM_BOOL;
  signal DecoderNOTInput_0_Value : T_SYSTEM_BOOL;
  signal DecoderInput_1_Value : T_SYSTEM_BOOL;
  signal DecoderNOTInput_1_Value : T_SYSTEM_BOOL;
  signal DecoderInput_2_Value : T_SYSTEM_BOOL;
  signal DecoderNOTInput_2_Value : T_SYSTEM_BOOL;
  signal DecoderInput_3_Value : T_SYSTEM_BOOL;
  signal DecoderNOTInput_3_Value : T_SYSTEM_BOOL;
  signal DecoderInput_4_Value : T_SYSTEM_BOOL;
  signal DecoderNOTInput_4_Value : T_SYSTEM_BOOL;
  signal DecoderInput_5_Value : T_SYSTEM_BOOL;
  signal DecoderNOTInput_5_Value : T_SYSTEM_BOOL;
  signal DecoderInput_6_Value : T_SYSTEM_BOOL;
  signal DecoderNOTInput_6_Value : T_SYSTEM_BOOL;
  signal DecoderInput_7_Value : T_SYSTEM_BOOL;
  signal DecoderNOTInput_7_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_0_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_1_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_2_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_3_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_4_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_5_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_6_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_7_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_8_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_9_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_10_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_11_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_12_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_13_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_14_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_15_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_16_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_17_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_18_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_19_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_20_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_21_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_22_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_23_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_24_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_25_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_26_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_27_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_28_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_29_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_30_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_31_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_32_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_33_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_34_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_35_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_36_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_37_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_38_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_39_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_40_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_41_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_42_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_43_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_44_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_45_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_46_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_47_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_48_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_49_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_50_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_51_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_52_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_53_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_54_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_55_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_56_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_57_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_58_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_59_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_60_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_61_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_62_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_63_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_64_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_65_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_66_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_67_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_68_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_69_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_70_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_71_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_72_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_73_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_74_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_75_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_76_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_77_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_78_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_79_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_80_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_81_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_82_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_83_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_84_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_85_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_86_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_87_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_88_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_89_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_90_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_91_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_92_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_93_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_94_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_95_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_96_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_97_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_98_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_99_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_100_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_101_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_102_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_103_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_104_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_105_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_106_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_107_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_108_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_109_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_110_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_111_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_112_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_113_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_114_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_115_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_116_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_117_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_118_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_119_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_120_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_121_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_122_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_123_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_124_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_125_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_126_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_127_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_128_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_129_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_130_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_131_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_132_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_133_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_134_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_135_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_136_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_137_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_138_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_139_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_140_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_141_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_142_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_143_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_144_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_145_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_146_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_147_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_148_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_149_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_150_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_151_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_152_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_153_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_154_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_155_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_156_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_157_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_158_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_159_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_160_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_161_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_162_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_163_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_164_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_165_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_166_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_167_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_168_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_169_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_170_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_171_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_172_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_173_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_174_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_175_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_176_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_177_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_178_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_179_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_180_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_181_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_182_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_183_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_184_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_185_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_186_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_187_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_188_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_189_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_190_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_191_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_192_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_193_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_194_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_195_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_196_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_197_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_198_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_199_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_200_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_201_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_202_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_203_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_204_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_205_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_206_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_207_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_208_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_209_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_210_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_211_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_212_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_213_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_214_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_215_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_216_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_217_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_218_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_219_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_220_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_221_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_222_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_223_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_224_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_225_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_226_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_227_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_228_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_229_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_230_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_231_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_232_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_233_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_234_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_235_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_236_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_237_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_238_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_239_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_240_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_241_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_242_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_243_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_244_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_245_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_246_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_247_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_248_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_249_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_250_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_251_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_252_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_253_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_254_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_255_Value : T_SYSTEM_BOOL;

begin

  uut: entity work.Decoder_n_Bit
  port map (

    DecoderInput_0_Value => DecoderInput_0_Value,
    DecoderNOTInput_0_Value => DecoderNOTInput_0_Value,
    DecoderInput_1_Value => DecoderInput_1_Value,
    DecoderNOTInput_1_Value => DecoderNOTInput_1_Value,
    DecoderInput_2_Value => DecoderInput_2_Value,
    DecoderNOTInput_2_Value => DecoderNOTInput_2_Value,
    DecoderInput_3_Value => DecoderInput_3_Value,
    DecoderNOTInput_3_Value => DecoderNOTInput_3_Value,
    DecoderInput_4_Value => DecoderInput_4_Value,
    DecoderNOTInput_4_Value => DecoderNOTInput_4_Value,
    DecoderInput_5_Value => DecoderInput_5_Value,
    DecoderNOTInput_5_Value => DecoderNOTInput_5_Value,
    DecoderInput_6_Value => DecoderInput_6_Value,
    DecoderNOTInput_6_Value => DecoderNOTInput_6_Value,
    DecoderInput_7_Value => DecoderInput_7_Value,
    DecoderNOTInput_7_Value => DecoderNOTInput_7_Value,
    DecoderOutput_0_Value => DecoderOutput_0_Value,
    DecoderOutput_1_Value => DecoderOutput_1_Value,
    DecoderOutput_2_Value => DecoderOutput_2_Value,
    DecoderOutput_3_Value => DecoderOutput_3_Value,
    DecoderOutput_4_Value => DecoderOutput_4_Value,
    DecoderOutput_5_Value => DecoderOutput_5_Value,
    DecoderOutput_6_Value => DecoderOutput_6_Value,
    DecoderOutput_7_Value => DecoderOutput_7_Value,
    DecoderOutput_8_Value => DecoderOutput_8_Value,
    DecoderOutput_9_Value => DecoderOutput_9_Value,
    DecoderOutput_10_Value => DecoderOutput_10_Value,
    DecoderOutput_11_Value => DecoderOutput_11_Value,
    DecoderOutput_12_Value => DecoderOutput_12_Value,
    DecoderOutput_13_Value => DecoderOutput_13_Value,
    DecoderOutput_14_Value => DecoderOutput_14_Value,
    DecoderOutput_15_Value => DecoderOutput_15_Value,
    DecoderOutput_16_Value => DecoderOutput_16_Value,
    DecoderOutput_17_Value => DecoderOutput_17_Value,
    DecoderOutput_18_Value => DecoderOutput_18_Value,
    DecoderOutput_19_Value => DecoderOutput_19_Value,
    DecoderOutput_20_Value => DecoderOutput_20_Value,
    DecoderOutput_21_Value => DecoderOutput_21_Value,
    DecoderOutput_22_Value => DecoderOutput_22_Value,
    DecoderOutput_23_Value => DecoderOutput_23_Value,
    DecoderOutput_24_Value => DecoderOutput_24_Value,
    DecoderOutput_25_Value => DecoderOutput_25_Value,
    DecoderOutput_26_Value => DecoderOutput_26_Value,
    DecoderOutput_27_Value => DecoderOutput_27_Value,
    DecoderOutput_28_Value => DecoderOutput_28_Value,
    DecoderOutput_29_Value => DecoderOutput_29_Value,
    DecoderOutput_30_Value => DecoderOutput_30_Value,
    DecoderOutput_31_Value => DecoderOutput_31_Value,
    DecoderOutput_32_Value => DecoderOutput_32_Value,
    DecoderOutput_33_Value => DecoderOutput_33_Value,
    DecoderOutput_34_Value => DecoderOutput_34_Value,
    DecoderOutput_35_Value => DecoderOutput_35_Value,
    DecoderOutput_36_Value => DecoderOutput_36_Value,
    DecoderOutput_37_Value => DecoderOutput_37_Value,
    DecoderOutput_38_Value => DecoderOutput_38_Value,
    DecoderOutput_39_Value => DecoderOutput_39_Value,
    DecoderOutput_40_Value => DecoderOutput_40_Value,
    DecoderOutput_41_Value => DecoderOutput_41_Value,
    DecoderOutput_42_Value => DecoderOutput_42_Value,
    DecoderOutput_43_Value => DecoderOutput_43_Value,
    DecoderOutput_44_Value => DecoderOutput_44_Value,
    DecoderOutput_45_Value => DecoderOutput_45_Value,
    DecoderOutput_46_Value => DecoderOutput_46_Value,
    DecoderOutput_47_Value => DecoderOutput_47_Value,
    DecoderOutput_48_Value => DecoderOutput_48_Value,
    DecoderOutput_49_Value => DecoderOutput_49_Value,
    DecoderOutput_50_Value => DecoderOutput_50_Value,
    DecoderOutput_51_Value => DecoderOutput_51_Value,
    DecoderOutput_52_Value => DecoderOutput_52_Value,
    DecoderOutput_53_Value => DecoderOutput_53_Value,
    DecoderOutput_54_Value => DecoderOutput_54_Value,
    DecoderOutput_55_Value => DecoderOutput_55_Value,
    DecoderOutput_56_Value => DecoderOutput_56_Value,
    DecoderOutput_57_Value => DecoderOutput_57_Value,
    DecoderOutput_58_Value => DecoderOutput_58_Value,
    DecoderOutput_59_Value => DecoderOutput_59_Value,
    DecoderOutput_60_Value => DecoderOutput_60_Value,
    DecoderOutput_61_Value => DecoderOutput_61_Value,
    DecoderOutput_62_Value => DecoderOutput_62_Value,
    DecoderOutput_63_Value => DecoderOutput_63_Value,
    DecoderOutput_64_Value => DecoderOutput_64_Value,
    DecoderOutput_65_Value => DecoderOutput_65_Value,
    DecoderOutput_66_Value => DecoderOutput_66_Value,
    DecoderOutput_67_Value => DecoderOutput_67_Value,
    DecoderOutput_68_Value => DecoderOutput_68_Value,
    DecoderOutput_69_Value => DecoderOutput_69_Value,
    DecoderOutput_70_Value => DecoderOutput_70_Value,
    DecoderOutput_71_Value => DecoderOutput_71_Value,
    DecoderOutput_72_Value => DecoderOutput_72_Value,
    DecoderOutput_73_Value => DecoderOutput_73_Value,
    DecoderOutput_74_Value => DecoderOutput_74_Value,
    DecoderOutput_75_Value => DecoderOutput_75_Value,
    DecoderOutput_76_Value => DecoderOutput_76_Value,
    DecoderOutput_77_Value => DecoderOutput_77_Value,
    DecoderOutput_78_Value => DecoderOutput_78_Value,
    DecoderOutput_79_Value => DecoderOutput_79_Value,
    DecoderOutput_80_Value => DecoderOutput_80_Value,
    DecoderOutput_81_Value => DecoderOutput_81_Value,
    DecoderOutput_82_Value => DecoderOutput_82_Value,
    DecoderOutput_83_Value => DecoderOutput_83_Value,
    DecoderOutput_84_Value => DecoderOutput_84_Value,
    DecoderOutput_85_Value => DecoderOutput_85_Value,
    DecoderOutput_86_Value => DecoderOutput_86_Value,
    DecoderOutput_87_Value => DecoderOutput_87_Value,
    DecoderOutput_88_Value => DecoderOutput_88_Value,
    DecoderOutput_89_Value => DecoderOutput_89_Value,
    DecoderOutput_90_Value => DecoderOutput_90_Value,
    DecoderOutput_91_Value => DecoderOutput_91_Value,
    DecoderOutput_92_Value => DecoderOutput_92_Value,
    DecoderOutput_93_Value => DecoderOutput_93_Value,
    DecoderOutput_94_Value => DecoderOutput_94_Value,
    DecoderOutput_95_Value => DecoderOutput_95_Value,
    DecoderOutput_96_Value => DecoderOutput_96_Value,
    DecoderOutput_97_Value => DecoderOutput_97_Value,
    DecoderOutput_98_Value => DecoderOutput_98_Value,
    DecoderOutput_99_Value => DecoderOutput_99_Value,
    DecoderOutput_100_Value => DecoderOutput_100_Value,
    DecoderOutput_101_Value => DecoderOutput_101_Value,
    DecoderOutput_102_Value => DecoderOutput_102_Value,
    DecoderOutput_103_Value => DecoderOutput_103_Value,
    DecoderOutput_104_Value => DecoderOutput_104_Value,
    DecoderOutput_105_Value => DecoderOutput_105_Value,
    DecoderOutput_106_Value => DecoderOutput_106_Value,
    DecoderOutput_107_Value => DecoderOutput_107_Value,
    DecoderOutput_108_Value => DecoderOutput_108_Value,
    DecoderOutput_109_Value => DecoderOutput_109_Value,
    DecoderOutput_110_Value => DecoderOutput_110_Value,
    DecoderOutput_111_Value => DecoderOutput_111_Value,
    DecoderOutput_112_Value => DecoderOutput_112_Value,
    DecoderOutput_113_Value => DecoderOutput_113_Value,
    DecoderOutput_114_Value => DecoderOutput_114_Value,
    DecoderOutput_115_Value => DecoderOutput_115_Value,
    DecoderOutput_116_Value => DecoderOutput_116_Value,
    DecoderOutput_117_Value => DecoderOutput_117_Value,
    DecoderOutput_118_Value => DecoderOutput_118_Value,
    DecoderOutput_119_Value => DecoderOutput_119_Value,
    DecoderOutput_120_Value => DecoderOutput_120_Value,
    DecoderOutput_121_Value => DecoderOutput_121_Value,
    DecoderOutput_122_Value => DecoderOutput_122_Value,
    DecoderOutput_123_Value => DecoderOutput_123_Value,
    DecoderOutput_124_Value => DecoderOutput_124_Value,
    DecoderOutput_125_Value => DecoderOutput_125_Value,
    DecoderOutput_126_Value => DecoderOutput_126_Value,
    DecoderOutput_127_Value => DecoderOutput_127_Value,
    DecoderOutput_128_Value => DecoderOutput_128_Value,
    DecoderOutput_129_Value => DecoderOutput_129_Value,
    DecoderOutput_130_Value => DecoderOutput_130_Value,
    DecoderOutput_131_Value => DecoderOutput_131_Value,
    DecoderOutput_132_Value => DecoderOutput_132_Value,
    DecoderOutput_133_Value => DecoderOutput_133_Value,
    DecoderOutput_134_Value => DecoderOutput_134_Value,
    DecoderOutput_135_Value => DecoderOutput_135_Value,
    DecoderOutput_136_Value => DecoderOutput_136_Value,
    DecoderOutput_137_Value => DecoderOutput_137_Value,
    DecoderOutput_138_Value => DecoderOutput_138_Value,
    DecoderOutput_139_Value => DecoderOutput_139_Value,
    DecoderOutput_140_Value => DecoderOutput_140_Value,
    DecoderOutput_141_Value => DecoderOutput_141_Value,
    DecoderOutput_142_Value => DecoderOutput_142_Value,
    DecoderOutput_143_Value => DecoderOutput_143_Value,
    DecoderOutput_144_Value => DecoderOutput_144_Value,
    DecoderOutput_145_Value => DecoderOutput_145_Value,
    DecoderOutput_146_Value => DecoderOutput_146_Value,
    DecoderOutput_147_Value => DecoderOutput_147_Value,
    DecoderOutput_148_Value => DecoderOutput_148_Value,
    DecoderOutput_149_Value => DecoderOutput_149_Value,
    DecoderOutput_150_Value => DecoderOutput_150_Value,
    DecoderOutput_151_Value => DecoderOutput_151_Value,
    DecoderOutput_152_Value => DecoderOutput_152_Value,
    DecoderOutput_153_Value => DecoderOutput_153_Value,
    DecoderOutput_154_Value => DecoderOutput_154_Value,
    DecoderOutput_155_Value => DecoderOutput_155_Value,
    DecoderOutput_156_Value => DecoderOutput_156_Value,
    DecoderOutput_157_Value => DecoderOutput_157_Value,
    DecoderOutput_158_Value => DecoderOutput_158_Value,
    DecoderOutput_159_Value => DecoderOutput_159_Value,
    DecoderOutput_160_Value => DecoderOutput_160_Value,
    DecoderOutput_161_Value => DecoderOutput_161_Value,
    DecoderOutput_162_Value => DecoderOutput_162_Value,
    DecoderOutput_163_Value => DecoderOutput_163_Value,
    DecoderOutput_164_Value => DecoderOutput_164_Value,
    DecoderOutput_165_Value => DecoderOutput_165_Value,
    DecoderOutput_166_Value => DecoderOutput_166_Value,
    DecoderOutput_167_Value => DecoderOutput_167_Value,
    DecoderOutput_168_Value => DecoderOutput_168_Value,
    DecoderOutput_169_Value => DecoderOutput_169_Value,
    DecoderOutput_170_Value => DecoderOutput_170_Value,
    DecoderOutput_171_Value => DecoderOutput_171_Value,
    DecoderOutput_172_Value => DecoderOutput_172_Value,
    DecoderOutput_173_Value => DecoderOutput_173_Value,
    DecoderOutput_174_Value => DecoderOutput_174_Value,
    DecoderOutput_175_Value => DecoderOutput_175_Value,
    DecoderOutput_176_Value => DecoderOutput_176_Value,
    DecoderOutput_177_Value => DecoderOutput_177_Value,
    DecoderOutput_178_Value => DecoderOutput_178_Value,
    DecoderOutput_179_Value => DecoderOutput_179_Value,
    DecoderOutput_180_Value => DecoderOutput_180_Value,
    DecoderOutput_181_Value => DecoderOutput_181_Value,
    DecoderOutput_182_Value => DecoderOutput_182_Value,
    DecoderOutput_183_Value => DecoderOutput_183_Value,
    DecoderOutput_184_Value => DecoderOutput_184_Value,
    DecoderOutput_185_Value => DecoderOutput_185_Value,
    DecoderOutput_186_Value => DecoderOutput_186_Value,
    DecoderOutput_187_Value => DecoderOutput_187_Value,
    DecoderOutput_188_Value => DecoderOutput_188_Value,
    DecoderOutput_189_Value => DecoderOutput_189_Value,
    DecoderOutput_190_Value => DecoderOutput_190_Value,
    DecoderOutput_191_Value => DecoderOutput_191_Value,
    DecoderOutput_192_Value => DecoderOutput_192_Value,
    DecoderOutput_193_Value => DecoderOutput_193_Value,
    DecoderOutput_194_Value => DecoderOutput_194_Value,
    DecoderOutput_195_Value => DecoderOutput_195_Value,
    DecoderOutput_196_Value => DecoderOutput_196_Value,
    DecoderOutput_197_Value => DecoderOutput_197_Value,
    DecoderOutput_198_Value => DecoderOutput_198_Value,
    DecoderOutput_199_Value => DecoderOutput_199_Value,
    DecoderOutput_200_Value => DecoderOutput_200_Value,
    DecoderOutput_201_Value => DecoderOutput_201_Value,
    DecoderOutput_202_Value => DecoderOutput_202_Value,
    DecoderOutput_203_Value => DecoderOutput_203_Value,
    DecoderOutput_204_Value => DecoderOutput_204_Value,
    DecoderOutput_205_Value => DecoderOutput_205_Value,
    DecoderOutput_206_Value => DecoderOutput_206_Value,
    DecoderOutput_207_Value => DecoderOutput_207_Value,
    DecoderOutput_208_Value => DecoderOutput_208_Value,
    DecoderOutput_209_Value => DecoderOutput_209_Value,
    DecoderOutput_210_Value => DecoderOutput_210_Value,
    DecoderOutput_211_Value => DecoderOutput_211_Value,
    DecoderOutput_212_Value => DecoderOutput_212_Value,
    DecoderOutput_213_Value => DecoderOutput_213_Value,
    DecoderOutput_214_Value => DecoderOutput_214_Value,
    DecoderOutput_215_Value => DecoderOutput_215_Value,
    DecoderOutput_216_Value => DecoderOutput_216_Value,
    DecoderOutput_217_Value => DecoderOutput_217_Value,
    DecoderOutput_218_Value => DecoderOutput_218_Value,
    DecoderOutput_219_Value => DecoderOutput_219_Value,
    DecoderOutput_220_Value => DecoderOutput_220_Value,
    DecoderOutput_221_Value => DecoderOutput_221_Value,
    DecoderOutput_222_Value => DecoderOutput_222_Value,
    DecoderOutput_223_Value => DecoderOutput_223_Value,
    DecoderOutput_224_Value => DecoderOutput_224_Value,
    DecoderOutput_225_Value => DecoderOutput_225_Value,
    DecoderOutput_226_Value => DecoderOutput_226_Value,
    DecoderOutput_227_Value => DecoderOutput_227_Value,
    DecoderOutput_228_Value => DecoderOutput_228_Value,
    DecoderOutput_229_Value => DecoderOutput_229_Value,
    DecoderOutput_230_Value => DecoderOutput_230_Value,
    DecoderOutput_231_Value => DecoderOutput_231_Value,
    DecoderOutput_232_Value => DecoderOutput_232_Value,
    DecoderOutput_233_Value => DecoderOutput_233_Value,
    DecoderOutput_234_Value => DecoderOutput_234_Value,
    DecoderOutput_235_Value => DecoderOutput_235_Value,
    DecoderOutput_236_Value => DecoderOutput_236_Value,
    DecoderOutput_237_Value => DecoderOutput_237_Value,
    DecoderOutput_238_Value => DecoderOutput_238_Value,
    DecoderOutput_239_Value => DecoderOutput_239_Value,
    DecoderOutput_240_Value => DecoderOutput_240_Value,
    DecoderOutput_241_Value => DecoderOutput_241_Value,
    DecoderOutput_242_Value => DecoderOutput_242_Value,
    DecoderOutput_243_Value => DecoderOutput_243_Value,
    DecoderOutput_244_Value => DecoderOutput_244_Value,
    DecoderOutput_245_Value => DecoderOutput_245_Value,
    DecoderOutput_246_Value => DecoderOutput_246_Value,
    DecoderOutput_247_Value => DecoderOutput_247_Value,
    DecoderOutput_248_Value => DecoderOutput_248_Value,
    DecoderOutput_249_Value => DecoderOutput_249_Value,
    DecoderOutput_250_Value => DecoderOutput_250_Value,
    DecoderOutput_251_Value => DecoderOutput_251_Value,
    DecoderOutput_252_Value => DecoderOutput_252_Value,
    DecoderOutput_253_Value => DecoderOutput_253_Value,
    DecoderOutput_254_Value => DecoderOutput_254_Value,
    DecoderOutput_255_Value => DecoderOutput_255_Value,

    ENB => ENABLE,
    RST => RESET,
    CLK => CLOCK
  );

  Clk: process
  begin
    while not StopClock loop
      CLOCK <= '1';
      wait for 5 NS;
      CLOCK <= '0';
      wait for 5 NS;
    end loop;
    wait;
  end process;


TraceFileTester: process
    file F: TEXT;
    variable L: LINE;
    variable Status: FILE_OPEN_STATUS;
    constant filename : string := "./trace.csv";
    variable clockcycle : integer := 0;
    variable tmp : CSV_LINE_T;
    variable readOK : boolean;
    variable fieldno : integer := 0;
    variable failures : integer := 0;
    variable newfailures: integer := 0;
    variable first_failure_tick : integer := -1;
    variable first_round : boolean := true;

begin

    -- #### USER-DATA-CONDITONING-START
    -- #### USER-DATA-CONDITONING-END

    FILE_OPEN(Status, F, filename, READ_MODE);
    if Status /= OPEN_OK then
        report "Failed to open CSV trace file" severity Failure;
    else
        -- Verify the headers
        READLINE(F, L);

        fieldno := 0;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderInput_0.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderInput_0.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderInput_1.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderInput_1.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderInput_2.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderInput_2.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderInput_3.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderInput_3.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderInput_4.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderInput_4.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderInput_5.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderInput_5.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderInput_6.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderInput_6.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderInput_7.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderInput_7.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderNOTInput_0.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderNOTInput_0.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderNOTInput_1.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderNOTInput_1.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderNOTInput_2.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderNOTInput_2.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderNOTInput_3.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderNOTInput_3.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderNOTInput_4.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderNOTInput_4.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderNOTInput_5.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderNOTInput_5.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderNOTInput_6.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderNOTInput_6.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderNOTInput_7.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderNOTInput_7.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_0.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_0.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_1.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_1.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_10.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_10.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_100.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_100.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_101.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_101.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_102.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_102.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_103.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_103.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_104.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_104.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_105.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_105.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_106.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_106.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_107.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_107.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_108.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_108.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_109.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_109.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_11.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_11.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_110.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_110.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_111.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_111.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_112.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_112.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_113.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_113.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_114.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_114.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_115.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_115.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_116.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_116.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_117.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_117.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_118.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_118.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_119.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_119.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_12.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_12.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_120.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_120.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_121.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_121.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_122.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_122.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_123.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_123.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_124.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_124.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_125.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_125.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_126.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_126.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_127.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_127.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_128.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_128.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_129.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_129.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_13.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_13.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_130.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_130.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_131.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_131.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_132.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_132.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_133.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_133.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_134.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_134.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_135.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_135.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_136.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_136.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_137.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_137.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_138.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_138.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_139.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_139.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_14.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_14.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_140.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_140.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_141.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_141.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_142.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_142.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_143.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_143.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_144.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_144.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_145.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_145.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_146.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_146.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_147.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_147.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_148.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_148.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_149.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_149.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_15.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_15.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_150.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_150.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_151.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_151.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_152.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_152.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_153.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_153.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_154.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_154.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_155.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_155.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_156.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_156.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_157.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_157.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_158.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_158.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_159.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_159.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_16.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_16.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_160.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_160.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_161.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_161.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_162.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_162.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_163.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_163.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_164.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_164.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_165.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_165.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_166.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_166.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_167.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_167.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_168.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_168.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_169.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_169.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_17.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_17.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_170.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_170.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_171.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_171.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_172.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_172.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_173.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_173.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_174.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_174.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_175.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_175.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_176.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_176.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_177.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_177.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_178.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_178.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_179.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_179.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_18.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_18.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_180.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_180.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_181.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_181.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_182.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_182.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_183.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_183.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_184.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_184.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_185.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_185.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_186.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_186.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_187.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_187.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_188.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_188.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_189.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_189.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_19.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_19.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_190.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_190.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_191.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_191.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_192.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_192.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_193.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_193.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_194.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_194.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_195.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_195.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_196.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_196.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_197.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_197.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_198.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_198.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_199.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_199.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_2.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_2.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_20.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_20.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_200.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_200.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_201.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_201.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_202.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_202.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_203.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_203.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_204.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_204.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_205.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_205.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_206.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_206.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_207.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_207.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_208.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_208.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_209.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_209.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_21.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_21.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_210.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_210.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_211.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_211.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_212.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_212.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_213.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_213.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_214.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_214.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_215.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_215.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_216.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_216.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_217.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_217.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_218.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_218.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_219.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_219.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_22.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_22.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_220.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_220.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_221.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_221.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_222.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_222.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_223.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_223.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_224.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_224.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_225.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_225.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_226.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_226.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_227.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_227.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_228.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_228.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_229.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_229.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_23.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_23.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_230.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_230.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_231.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_231.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_232.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_232.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_233.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_233.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_234.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_234.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_235.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_235.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_236.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_236.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_237.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_237.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_238.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_238.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_239.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_239.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_24.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_24.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_240.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_240.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_241.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_241.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_242.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_242.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_243.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_243.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_244.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_244.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_245.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_245.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_246.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_246.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_247.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_247.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_248.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_248.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_249.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_249.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_25.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_25.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_250.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_250.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_251.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_251.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_252.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_252.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_253.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_253.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_254.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_254.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_255.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_255.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_26.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_26.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_27.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_27.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_28.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_28.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_29.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_29.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_3.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_3.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_30.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_30.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_31.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_31.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_32.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_32.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_33.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_33.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_34.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_34.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_35.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_35.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_36.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_36.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_37.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_37.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_38.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_38.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_39.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_39.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_4.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_4.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_40.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_40.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_41.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_41.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_42.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_42.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_43.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_43.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_44.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_44.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_45.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_45.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_46.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_46.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_47.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_47.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_48.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_48.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_49.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_49.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_5.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_5.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_50.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_50.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_51.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_51.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_52.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_52.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_53.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_53.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_54.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_54.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_55.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_55.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_56.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_56.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_57.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_57.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_58.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_58.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_59.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_59.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_6.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_6.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_60.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_60.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_61.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_61.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_62.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_62.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_63.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_63.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_64.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_64.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_65.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_65.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_66.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_66.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_67.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_67.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_68.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_68.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_69.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_69.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_7.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_7.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_70.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_70.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_71.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_71.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_72.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_72.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_73.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_73.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_74.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_74.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_75.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_75.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_76.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_76.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_77.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_77.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_78.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_78.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_79.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_79.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_8.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_8.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_80.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_80.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_81.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_81.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_82.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_82.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_83.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_83.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_84.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_84.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_85.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_85.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_86.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_86.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_87.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_87.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_88.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_88.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_89.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_89.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_9.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_9.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_90.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_90.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_91.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_91.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_92.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_92.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_93.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_93.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_94.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_94.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_95.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_95.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_96.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_96.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_97.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_97.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_98.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_98.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_99.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_99.Value" severity Failure;
        fieldno := fieldno + 1;

        RESET <= '1';
        ENABLE <= '0';
        wait for 5 NS;
        RESET <= '0';
        ENABLE <= '1';

        -- Read a line each clock
        while not ENDFILE(F) loop
            READLINE(F, L);

            fieldno := 0;
            newfailures := 0;

            -- Write all driver signals out on the clock edge,
            -- except on the first round, where we make sure the reset
            -- values are propagated _before_ the initial clock edge
            if not first_round then
                wait until rising_edge(CLOCK);
            end if;

            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                DecoderInput_0_Value <= 'U';
            else
                DecoderInput_0_Value <= to_std_logic(truncate(tmp));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                DecoderInput_1_Value <= 'U';
            else
                DecoderInput_1_Value <= to_std_logic(truncate(tmp));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                DecoderInput_2_Value <= 'U';
            else
                DecoderInput_2_Value <= to_std_logic(truncate(tmp));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                DecoderInput_3_Value <= 'U';
            else
                DecoderInput_3_Value <= to_std_logic(truncate(tmp));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                DecoderInput_4_Value <= 'U';
            else
                DecoderInput_4_Value <= to_std_logic(truncate(tmp));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                DecoderInput_5_Value <= 'U';
            else
                DecoderInput_5_Value <= to_std_logic(truncate(tmp));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                DecoderInput_6_Value <= 'U';
            else
                DecoderInput_6_Value <= to_std_logic(truncate(tmp));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                DecoderInput_7_Value <= 'U';
            else
                DecoderInput_7_Value <= to_std_logic(truncate(tmp));
            end if;
            fieldno := fieldno + 1;

            if first_round then
                wait until rising_edge(CLOCK);
                first_round := false;
            end if;

            -- Wait until the signals are settled before veriying the results
            wait until falling_edge(CLOCK);

            -- Compare each signal with the value in the CSV file
	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderNOTInput_0_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderNOTInput_0_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderNOTInput_0_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderNOTInput_1_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderNOTInput_1_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderNOTInput_1_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderNOTInput_2_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderNOTInput_2_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderNOTInput_2_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderNOTInput_3_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderNOTInput_3_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderNOTInput_3_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderNOTInput_4_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderNOTInput_4_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderNOTInput_4_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderNOTInput_5_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderNOTInput_5_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderNOTInput_5_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderNOTInput_6_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderNOTInput_6_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderNOTInput_6_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderNOTInput_7_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderNOTInput_7_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderNOTInput_7_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_0_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_0_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_0_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_1_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_1_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_1_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_10_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_10_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_10_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_100_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_100_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_100_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_101_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_101_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_101_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_102_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_102_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_102_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_103_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_103_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_103_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_104_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_104_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_104_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_105_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_105_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_105_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_106_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_106_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_106_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_107_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_107_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_107_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_108_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_108_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_108_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_109_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_109_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_109_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_11_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_11_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_11_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_110_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_110_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_110_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_111_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_111_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_111_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_112_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_112_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_112_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_113_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_113_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_113_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_114_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_114_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_114_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_115_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_115_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_115_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_116_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_116_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_116_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_117_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_117_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_117_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_118_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_118_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_118_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_119_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_119_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_119_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_12_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_12_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_12_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_120_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_120_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_120_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_121_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_121_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_121_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_122_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_122_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_122_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_123_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_123_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_123_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_124_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_124_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_124_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_125_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_125_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_125_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_126_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_126_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_126_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_127_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_127_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_127_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_128_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_128_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_128_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_129_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_129_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_129_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_13_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_13_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_13_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_130_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_130_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_130_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_131_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_131_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_131_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_132_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_132_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_132_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_133_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_133_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_133_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_134_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_134_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_134_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_135_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_135_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_135_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_136_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_136_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_136_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_137_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_137_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_137_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_138_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_138_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_138_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_139_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_139_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_139_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_14_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_14_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_14_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_140_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_140_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_140_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_141_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_141_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_141_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_142_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_142_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_142_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_143_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_143_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_143_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_144_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_144_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_144_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_145_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_145_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_145_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_146_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_146_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_146_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_147_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_147_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_147_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_148_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_148_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_148_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_149_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_149_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_149_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_15_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_15_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_15_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_150_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_150_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_150_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_151_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_151_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_151_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_152_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_152_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_152_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_153_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_153_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_153_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_154_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_154_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_154_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_155_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_155_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_155_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_156_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_156_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_156_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_157_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_157_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_157_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_158_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_158_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_158_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_159_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_159_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_159_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_16_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_16_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_16_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_160_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_160_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_160_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_161_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_161_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_161_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_162_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_162_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_162_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_163_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_163_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_163_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_164_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_164_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_164_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_165_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_165_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_165_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_166_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_166_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_166_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_167_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_167_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_167_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_168_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_168_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_168_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_169_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_169_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_169_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_17_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_17_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_17_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_170_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_170_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_170_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_171_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_171_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_171_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_172_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_172_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_172_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_173_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_173_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_173_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_174_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_174_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_174_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_175_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_175_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_175_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_176_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_176_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_176_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_177_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_177_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_177_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_178_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_178_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_178_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_179_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_179_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_179_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_18_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_18_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_18_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_180_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_180_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_180_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_181_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_181_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_181_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_182_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_182_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_182_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_183_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_183_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_183_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_184_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_184_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_184_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_185_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_185_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_185_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_186_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_186_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_186_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_187_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_187_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_187_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_188_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_188_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_188_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_189_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_189_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_189_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_19_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_19_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_19_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_190_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_190_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_190_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_191_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_191_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_191_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_192_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_192_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_192_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_193_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_193_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_193_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_194_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_194_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_194_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_195_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_195_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_195_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_196_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_196_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_196_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_197_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_197_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_197_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_198_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_198_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_198_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_199_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_199_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_199_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_2_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_2_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_2_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_20_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_20_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_20_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_200_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_200_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_200_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_201_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_201_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_201_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_202_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_202_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_202_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_203_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_203_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_203_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_204_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_204_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_204_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_205_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_205_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_205_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_206_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_206_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_206_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_207_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_207_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_207_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_208_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_208_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_208_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_209_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_209_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_209_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_21_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_21_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_21_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_210_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_210_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_210_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_211_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_211_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_211_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_212_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_212_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_212_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_213_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_213_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_213_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_214_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_214_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_214_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_215_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_215_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_215_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_216_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_216_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_216_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_217_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_217_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_217_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_218_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_218_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_218_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_219_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_219_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_219_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_22_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_22_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_22_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_220_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_220_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_220_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_221_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_221_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_221_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_222_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_222_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_222_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_223_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_223_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_223_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_224_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_224_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_224_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_225_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_225_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_225_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_226_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_226_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_226_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_227_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_227_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_227_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_228_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_228_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_228_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_229_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_229_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_229_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_23_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_23_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_23_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_230_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_230_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_230_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_231_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_231_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_231_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_232_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_232_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_232_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_233_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_233_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_233_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_234_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_234_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_234_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_235_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_235_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_235_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_236_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_236_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_236_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_237_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_237_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_237_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_238_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_238_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_238_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_239_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_239_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_239_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_24_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_24_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_24_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_240_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_240_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_240_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_241_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_241_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_241_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_242_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_242_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_242_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_243_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_243_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_243_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_244_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_244_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_244_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_245_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_245_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_245_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_246_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_246_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_246_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_247_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_247_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_247_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_248_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_248_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_248_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_249_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_249_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_249_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_25_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_25_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_25_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_250_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_250_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_250_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_251_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_251_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_251_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_252_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_252_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_252_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_253_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_253_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_253_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_254_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_254_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_254_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_255_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_255_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_255_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_26_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_26_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_26_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_27_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_27_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_27_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_28_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_28_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_28_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_29_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_29_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_29_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_3_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_3_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_3_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_30_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_30_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_30_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_31_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_31_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_31_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_32_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_32_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_32_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_33_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_33_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_33_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_34_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_34_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_34_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_35_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_35_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_35_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_36_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_36_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_36_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_37_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_37_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_37_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_38_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_38_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_38_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_39_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_39_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_39_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_4_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_4_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_4_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_40_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_40_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_40_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_41_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_41_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_41_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_42_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_42_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_42_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_43_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_43_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_43_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_44_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_44_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_44_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_45_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_45_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_45_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_46_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_46_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_46_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_47_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_47_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_47_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_48_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_48_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_48_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_49_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_49_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_49_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_5_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_5_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_5_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_50_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_50_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_50_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_51_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_51_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_51_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_52_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_52_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_52_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_53_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_53_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_53_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_54_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_54_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_54_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_55_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_55_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_55_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_56_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_56_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_56_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_57_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_57_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_57_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_58_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_58_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_58_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_59_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_59_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_59_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_6_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_6_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_6_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_60_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_60_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_60_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_61_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_61_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_61_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_62_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_62_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_62_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_63_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_63_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_63_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_64_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_64_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_64_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_65_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_65_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_65_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_66_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_66_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_66_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_67_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_67_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_67_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_68_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_68_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_68_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_69_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_69_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_69_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_7_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_7_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_7_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_70_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_70_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_70_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_71_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_71_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_71_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_72_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_72_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_72_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_73_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_73_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_73_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_74_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_74_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_74_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_75_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_75_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_75_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_76_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_76_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_76_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_77_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_77_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_77_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_78_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_78_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_78_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_79_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_79_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_79_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_8_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_8_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_8_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_80_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_80_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_80_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_81_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_81_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_81_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_82_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_82_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_82_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_83_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_83_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_83_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_84_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_84_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_84_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_85_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_85_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_85_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_86_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_86_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_86_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_87_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_87_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_87_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_88_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_88_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_88_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_89_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_89_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_89_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_9_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_9_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_9_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_90_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_90_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_90_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_91_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_91_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_91_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_92_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_92_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_92_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_93_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_93_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_93_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_94_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_94_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_94_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_95_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_95_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_95_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_96_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_96_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_96_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_97_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_97_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_97_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_98_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_98_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_98_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_99_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_99_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_99_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

            failures := failures + newfailures;
            if newfailures = 0 then
                first_failure_tick := -1;
            elsif first_failure_tick = -1 then
                first_failure_tick := clockcycle;
            else
                if clockcycle - first_failure_tick >= 5 then
                    report "Stopping simulation due to five consecutive failed cycles" severity error;
                    StopClock <= true;
                elsif failures > 20 then
                    report "Stopping simulation after 20 failures" severity error;
                    StopClock <= true;
                end if;
            end if;

            clockcycle := clockcycle + 1;
        end loop;

        FILE_CLOSE(F);
    end if;

    if failures = 0 then
        report "completed successfully after " & integer'image(clockcycle) & " clockcycles";
    else
        report "completed with " & integer'image(failures) & " error(s) after " & integer'image(clockcycle) & " clockcycle(s)";
    end if;
    StopClock <= true;

    wait;
end process;
end architecture TestBench;