
# Q_SYS_secretMenu

## Module Function
This module allows you to create a secret menu, accessible directly from a UCI.

## Setup Instructions

1. **Move Module Directory**
   - Move the parent directory (`Q-SYS_secretMenu`) to `QSC/Q-Sys Designer/Modules`.

2. **Install in Q-SYS Designer**
   - In Q-SYS Designer, install the module (`Q-SYS_secretMenu`) by going to `Tools -> Show Design Resources... -> Available` and clicking the `Install Module` button.

   For help, see [Q-Sys 'External Lua Modules' guide](https://q-syshelp.qsc.com/q-sys_9.7/Content/Control_Scripting/External_Lua_Modules.htm)

5. **Add Controls in UCI**

6. **Initialise the Module in UCI Script**
   - Insert the following Lua code in the UCI Script:
     ```lua
     mutesliders = require('Q-SYS_muteSliders')
     ```

## Additional Information
For more detailed instructions or troubleshooting, please refer to the [official documentation](https://q-syshelp.qsc.com/).
