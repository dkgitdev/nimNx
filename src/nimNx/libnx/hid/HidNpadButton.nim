import ../../c/bits

type HidNpadButton* = culong

# You may specify only fraction of the whole variables list
const
  HidNpadButton_Plus* = HidNpadButton(bitl(10))
