// MAXALLOC: 100000000
package main

import "runtime"

type Foo struct {
	name string
}

var f = Foo{name: "foo"}

func main() {
	f1 := f
	runtime.GC()
	println("MemStats: ", runtime.MemStats())
}

// Output:
// MemStats:  Allocator{maxBytes:100000000, bytes:6358}

// TypeCheckError:
// main/files/alloc_0.gno:13:2: declared and not used: f1
