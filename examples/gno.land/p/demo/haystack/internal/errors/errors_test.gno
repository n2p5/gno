package errors

import "testing"

func TestError(t *testing.T) {
	expected := "foo"
	err := Error(expected)
	if err.Error() != expected {
		t.Error("err does not match expected:", err.Error(), expected)
	}
}
