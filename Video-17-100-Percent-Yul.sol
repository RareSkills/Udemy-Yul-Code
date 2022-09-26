// SPDX-License-Identifier: GPL-3.0

/** 
    To Learn

    1. constructor
    2. yul doesn't have to respect call data
    3. how to compile yul
    4. how to interact with yul
    5. custom code in the constructor

**/

object "Simple" {
    code {
        datacopy(0, dataoffset("runtime"), datasize("runtime"))
        return(0, datasize("runtime"))        
    }

    object "runtime" {
        
        code {
            mstore(0x00, 2)
            return(0x00, 0x20)
        }
    }
}