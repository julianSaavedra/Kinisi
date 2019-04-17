test comparing
testNotEqualToSimpleUnit

	| anExponentialUnit |

	anExponentialUnit := ExponentialUnit of: meter raisedTo: 3.

	self deny: anExponentialUnit = meter