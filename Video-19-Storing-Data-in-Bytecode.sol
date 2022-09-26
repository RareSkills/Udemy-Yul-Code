// SPDX-License-Identifier: GPL-3.0

object "Simple" {
    code {
        datacopy(0, dataoffset("runtime"), datasize("runtime"))
        return(0, datasize("runtime"))        
    }

    object "runtime" {
        
        code {
            datacopy(0x00, dataoffset("Message"), datasize("Message"))
            return(0x00, datasize("Message"))
        }

        data "Message" "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt"
    }
}