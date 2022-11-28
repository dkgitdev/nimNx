import std/bitops

import ../../c/bits

# *'s are marking these symbols as exported (public, if you want)
type HidNpadStyleTag* = cuint

const
  HidNpadStyleTag_NpadFullKey* = HidNpadStyleTag(bit(0))
  HidNpadStyleTag_NpadHandheld* = HidNpadStyleTag(bit(1))
  HidNpadStyleTag_NpadJoyDual* = HidNpadStyleTag(bit(2))
  HidNpadStyleTag_NpadJoyLeft* = HidNpadStyleTag(bit(3))
  HidNpadStyleTag_NpadJoyRight* = HidNpadStyleTag(bit(4))
  HidNpadStyleTag_NpadGc* = HidNpadStyleTag(bit(5))
  HidNpadStyleTag_NpadPalma* = HidNpadStyleTag(bit(6))
  HidNpadStyleTag_NpadLark* = HidNpadStyleTag(bit(7))
  HidNpadStyleTag_NpadHandheldLark* = HidNpadStyleTag(bit(8))
  HidNpadStyleTag_NpadLucia* = HidNpadStyleTag(bit(9))
  HidNpadStyleTag_NpadLagon* = HidNpadStyleTag(bit(10))
  HidNpadStyleTag_NpadLager* = HidNpadStyleTag(bit(11))
  HidNpadStyleTag_NpadSystemExt* = HidNpadStyleTag(bit(29))
  HidNpadStyleTag_NpadSystem* = HidNpadStyleTag(bit(30))

  # bitor to replace a | b | c operators for C's BitFlags
  HidNpadStyleSet_NpadFullCtrl* = HidNpadStyleTag(bitor[cuint](
    HidNpadStyleTag_NpadFullKey,
    HidNpadStyleTag_NpadHandheld,
    HidNpadStyleTag_NpadJoyDual
  ))
  HidNpadStyleSet_NpadStandard* = HidNpadStyleTag(bitor[cuint](
    HidNpadStyleSet_NpadFullCtrl,
    HidNpadStyleTag_NpadJoyLeft,
    HidNpadStyleTag_NpadJoyRight
  ))