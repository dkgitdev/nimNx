# Package

version       = "0.1.0"
author        = "Dmitry Arkhipenko"
description   = "LibNX port to be used in Nim"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 1.6.6"

# Most of the things are better with this one :D
requires "switch_build"

# In production you should pin the versions, like with the nim above