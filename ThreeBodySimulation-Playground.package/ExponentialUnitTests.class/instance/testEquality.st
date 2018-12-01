tests
testEquality

	| anExponentialUnit anotherExponentialUnit |

	anExponentialUnit := ExponentialUnit of: meter raisedTo: 3.
	
	anotherExponentialUnit := ExponentialUnit of: meter raisedTo: 3.
	self assert: anExponentialUnit = anotherExponentialUnit.

	anotherExponentialUnit := ExponentialUnit of: meter raisedTo:5.
	self deny: anExponentialUnit = anotherExponentialUnit.

	anotherExponentialUnit := ExponentialUnit of: second raisedTo: 3.
	self deny: anExponentialUnit = anotherExponentialUnit.
	
	self deny: anExponentialUnit = meter.
	self deny: anExponentialUnit = (meter * second).
	self deny: anExponentialUnit = NullUnit new