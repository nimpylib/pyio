# Package

version       = "0.1.0"
author        = "litlighilit"
description   = "Lib/io of Python porting to Nim"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim > 2.0.8"


var pylibPre = "https://github.com/nimpylib"
let envVal = getEnv("NIMPYLIB_PKGS_BARE_PREFIX")
if envVal != "": pylibPre = ""
elif pylibPre[^1] != '/':
  pylibPre.add '/'
template pylib(x, ver) =
  requires if pylibPre == "": x & ver
           else: pylibPre & x


pylib "pyio_abc", " ^= 0.1.0"
pylib "pyio_open", " ^= 0.1.0"
pylib "posixos", " ^= 0.1.0"


