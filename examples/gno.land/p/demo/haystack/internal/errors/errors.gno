package errors

// Error used in combination with const are immutable
type Error string

// Error returns the string representation of the error
func (e Error) Error() string { return string(e) }
