package originators

import (
	"std"
)

// TODO
// Originators start with Originator0 and each round the group can add a single new originator.
// The group must unanimously add an originator. Once a new originator is added, the group must
// unanimously agree to remove an originator.


type Originator struct {
	name string
	address std.Address
	nominatedBy std.Address
}


func Render(path string) string {
	return "# Originators"
}