test comparing
testNotEqualToNullUnit

	| anExponentialUnit |

	anExponentialUnit := ExponentialUnit of: meter raisedTo: 3.

	self deny: anExponentialUnit = NullUnit new