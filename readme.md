
# Q_SYS_secretMenu

## Module Function
A script for Q-SYS Designer which uses UCI control elements to create a (likely invisible) 'PIN pad', requiring the added controls to be pressed sequentially, within a certain amount of time.

## Usage Instructions
1. **Add controls to the UCI**
   - In the 'UCI Layout' tab, add your trigger buttons. Name them appropriately (e.g. secretMenu_button_1...2...3...etc).
2. **Initialise the Module**
   - In the 'UCI Script' tab, declare a secretMenu instance:
   ```lua 
   secretMenu = require('Q-Sys_secretMenu')
   ```
3. **Add the buttons to the 'secretMenu' instance**
   - In the 'UCI Script' tab, call the .addButton(control) function for each of your buttons, passing it their name. __The order in which you add them will be the order in which they need to be pressed.__
   ```lua
   secretMenu.addButton(Controls.secretMenu_button_1)
   secretMenu.addButton(Controls.secretMenu_button_2)
   secretMenu.addButton(Controls.secretMenu_button_3)
   ```
   
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
