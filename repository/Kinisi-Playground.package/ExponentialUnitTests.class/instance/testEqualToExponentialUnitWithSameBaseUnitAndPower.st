test comparing
testEqualToExponentialUnitWithSameBaseUnitAndPower

	| anExponentialUnit anotherExponentialUnit |

	anExponentialUnit := ExponentialUnit of: meter raisedTo: 3.
	anotherExponentialUnit := ExponentialUnit of: meter raisedTo: 3.
	
	self assert: anExponentialUnit equals: anotherExponentialUnit