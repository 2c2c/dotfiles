python
import sys
sys.path.insert(0, '/usr/share/gcc-4.9/python')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end

set print pretty on
set print object on
set print static-members on
set print vtbl on
set print demangle on
set print asm-demangle on
set demangle-style gnu-v3
set print sevenbit-strings off
