test comparing
testNotEqualToExponentialUnitWithDifferentBaseUnit

	| anExponentialUnit anotherExponentialUnit |

	anExponentialUnit := ExponentialUnit of: meter raisedTo: 3.
	anotherExponentialUnit := ExponentialUnit of: second raisedTo: 3.
	
	self deny: anExponentialUnit = anotherExponentialUnit