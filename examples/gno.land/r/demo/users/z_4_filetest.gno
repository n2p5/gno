package main

// SEND: 200000000ugnot

import (
	"std"

	"gno.land/p/demo/testutils"
	"gno.land/r/demo/users"
)

const admin = std.Address("g1manfred47kzduec920z88wfr64ylksmdcedlf5")

func main() {
	caller := std.OriginCaller() // main
	users.Register("", "gnouser", "my profile")
	// as admin, grant invites to gnouser
	std.TestSetOriginCaller(admin)
	users.GrantInvites(caller.String() + ":1")
	// switch back to caller
	std.TestSetOriginCaller(caller)
	// invite another addr
	test1 := testutils.TestAddress("test1")
	test2 := testutils.TestAddress("test2")
	users.Invite(test1.String())
	// switch to test2 (not test1)
	std.TestSetOriginCaller(test2)
	std.TestSetOriginSend(std.Coins{{"dontcare", 1}}, nil)
	users.Register(caller, "satoshi", "my other profile")
	println("done")
}

// Error:
// invalid invitation
