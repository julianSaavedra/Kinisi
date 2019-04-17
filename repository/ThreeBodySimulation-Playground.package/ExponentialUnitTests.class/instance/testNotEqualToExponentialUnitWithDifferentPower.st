test comparing
testNotEqualToExponentialUnitWithDifferentPower

	| anExponentialUnit anotherExponentialUnit |

	anExponentialUnit := ExponentialUnit of: meter raisedTo: 3.
	anotherExponentialUnit := ExponentialUnit of: meter raisedTo: 5.
	
	self deny: anExponentialUnit = anotherExponentialUnit