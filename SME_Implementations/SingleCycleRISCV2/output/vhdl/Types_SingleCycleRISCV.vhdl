
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- library SYSTEM_TYPES;
use work.SYSTEM_TYPES.ALL;

-- User defined packages here
-- #### USER-DATA-IMPORTS-START
-- #### USER-DATA-IMPORTS-END

package CUSTOM_TYPES is

-- User defined types here
-- #### USER-DATA-CORETYPES-START
-- #### USER-DATA-CORETYPES-END

    subtype IM_Instruction_Memory_type is T_SYSTEM_UINT8_ARRAY(0 to 159);
    subtype vhdl_Register_m_register_type is T_SYSTEM_INT64_ARRAY(0 to 31);
    subtype DM_Data_Memory_type is T_SYSTEM_UINT8_ARRAY(0 to 1999);






-- User defined types here
-- #### USER-DATA-TRAILTYPES-START
-- #### USER-DATA-TRAILTYPES-END


end CUSTOM_TYPES;

