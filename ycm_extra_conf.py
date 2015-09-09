# This file is NOT licensed under the GPLv3, which is the license for the rest
# of YouCompleteMe.
#
# Here's the license text for this file:
#
# This is free and unencumbered software released into the public domain.
#
# Anyone is free to copy, modify, publish, use, compile, sell, or
# distribute this software, either in source code form or as a compiled
# binary, for any purpose, commercial or non-commercial, and by any
# means.
#
# In jurisdictions that recognize copyright laws, the author or authors
# of this software dedicate any and all copyright interest in the
# software to the public domain. We make this dedication for the benefit
# of the public at large and to the detriment of our heirs and
# successors. We intend this dedication to be an overt act of
# relinquishment in perpetuity of all present and future rights to this
# software under copyright law.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.
#
# For more information, please refer to <http://unlicense.org/>

import os
import ycm_core

# These are the compilation flags that will be used in case there's no
# compilation database set (by default, one is not set).
# CHANGE THIS LIST OF FLAGS. YES, THIS IS THE DROID YOU HAVE BEEN LOOKING FOR.
flags = [
  '-Wall'            # The Wmissing-braces is useless in c++11
, '-Wextra'
,'-Werror'          # Fucking unused parameter argc!!
#'-Wc++98-compat',   # Well i love c++11!!!
, '-Wno-long-long'
, '-Wno-variadic-macros'
, '-fexceptions'
, '-DNDEBUG'
, '-DUSE_CLANG_COMPLETER'
# THIS IS IMPORTANT! Without a "-std=<something>" flag, clang won't know which
# language to use when compiling headers. So it will guess. Badly. So C++
# headers will be compiled as C headers. You don't want that so ALWAYS specify
# a "-std=<something>".
# For a C project, you would set this to something like 'c99' instead of
# 'c++11'.
, '-std=c++11'
, '-stdlib=libstdc++'
# ...and the same thing goes for the magic -x option which specifies the
# language that the files to be compiled are written in. This is mostly
# relevant for c++ headers.
# For a C project, you would set this to 'c' instead of 'c++'.
, '-x'
, 'c++'
, '-I'
, '.'
, '-I'
, 'include'
, '-isystem'
, '/usr/include/c++/4.9'
, '-isystem'
, '/usr/bin/../lib/gcc/x86_64-linux-gnu/4.9/../../../../include/c++/4.9'
, '-isystem'
, '/usr/bin/../lib/gcc/x86_64-linux-gnu/4.9/../../../../include/x86_64-linux-gnu/c++/4.9'
, '-isystem'
, '/usr/bin/../lib/gcc/x86_64-linux-gnu/4.9/../../../../include/c++/4.9/backward'
, '-isystem'
, '/usr/bin/../lib/gcc/x86_64-linux-gnu/4.9/include'
, '-isystem'
, '/usr/include/x86_64-linux-gnu'
, '-I/usr/share/arduino/libraries'
, '-I'
, '/usr/share/arduino/hardware/arduino/cores/arduino'
, '-I'
, '/usr/lib/avr/include'
, '-I'
, '/usr/include/opencv2'
, '-I'
, '/usr/include/opencv2/core'
      
, '-I'
, '/usr/include'
, '-I'
, '/usr/local/include'
]



def FlagsForFile( filename ):

  return {
    'flags': flags,
    'do_cache': True
  }
