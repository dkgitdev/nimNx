import libnx/hid/HidNpadButton

# We don't need to specify fields we're not going to use
type
  PrintConsole* {.importc, header: "switch.h".} = object
  PadState* {.importc, header: "switch.h".} = object

# Console-related stuff
# pointer can be NULL (or `nil`) :D
proc consoleInit*(console: pointer): pointer {.importc, varargs, header: "switch.h", discardable.}
proc consoleUpdate*(console: pointer): void {.importc, varargs, header: "switch.h", discardable.}
proc consoleExit*(console: pointer): void {.importc, varargs, header: "switch.h", discardable.}

proc padConfigureInput*(max_players: cint, styleset: cuint): void {.importc, varargs, header: "switch.h", discardable.}

# It's type is `ptr PadState`, not `PadState`,
# as we need `addr`, not the value,
# as the functions will go and modify that obj "in-place"
proc padInitializeDefault*(pad: ptr PadState): void {.importc, varargs, header: "switch.h", discardable.}
proc padUpdate*(pad: ptr PadState): void {.importc, varargs, header: "switch.h", discardable.}
proc padGetButtonsDown*(pad: ptr PadState): HidNpadButton {.importc, varargs, header: "switch.h".}

# Applet main loop
proc appletMainLoop*(): cint {.importc, varargs, header: "switch.h".}
