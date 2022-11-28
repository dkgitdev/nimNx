# Stuff for working with c code

# Using func where possible, port of actual c code
func bit*(n: uint8): cuint = 1.cuint shl n
func bitl*(n: uint8): culong = 1.culong shl n

# This converters allows us to use these types in while loops and ifs
converter culong2bool*(cu: culong): bool =
  if cu == 0: false else: true
converter cint2bool*(ci: cint): bool =
  if ci == 0: false else: true