# These bitand and bitor functions gotta be taken from somewhere :D
import std/bitops

# This allows to access members ONLY using `module.member` syntax
from nimNx/libnx/hid/HidNpadStyleTag import nil
from nimNx/libnx/hid/HidNpadButton import nil
import nimNx/libnx


proc main() :int {.raises: [].}=

  # Let cannot be used for chainging (or later-initialized) objects
  var
    pad: PadState
    kDown: HidNpadButton.HidNpadButton

  # Open console
  consoleInit(nil)

  # Echo works correctly!
  echo "Hello from nim!"
  echo "Press + (PLUS) button to exit"

  # Set possible button layouts
  # Use this module + const name to emulate enum syntax
  padConfigureInput(1, HidNpadStyleTag.HidNpadStyleSet_NpadStandard)

  # To supply `&pad` we use `pad`'s memory `addr`
  padInitializeDefault(addr pad)

  # Run main loop
  while (appletMainLoop()):

    # Get new data from hids
    padUpdate(addr pad)

    # Get Buttons pressed
    kDown = padGetButtonsDown(addr pad)

    #echo their bitmasks (as regular cuints)
    # echo "kDown: ", kDown.cuint, " HidNpadButton.HidNpadButton_Plus: ", HidNpadButton.HidNpadButton_Plus.cuint

    # If plus -- exit
    if (bitand[culong](kDown, HidNpadButton.HidNpadButton_Plus)): break

    # Show next frame
    consoleUpdate(nil)

  # Exit app
  consoleExit(nil);
  0

# Run our code
discard main()