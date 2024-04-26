import 'asm/asm.justfile'
import 'c/c.justfile'
import 'cpp/cpp.justfile'
import 'go/go.justfile'
import 'js/js.justfile'
import 'latex/latex.justfile'
import 'py/py.justfile'
import 'rust/rust.justfile'

@default:
    just --list --unsorted
