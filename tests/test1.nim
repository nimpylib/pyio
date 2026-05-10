
import std/unittest

import pyio
test "isatty":
 when defined(js): skip() else:
  check compiles isatty(1)

