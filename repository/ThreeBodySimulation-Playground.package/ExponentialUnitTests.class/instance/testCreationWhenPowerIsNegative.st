tests
testCreationWhenPowerIsNegative

	| exponentialUnit meter |

	meter := BaseUnit named: 'meter' sign: 'm'.

	exponentialUnit := ExponentialUnit of: meter raisedTo: -2.

	self assert: exponentialUnit equals: (NullUnit new / (ExponentialUnit of: meter raisedTo: 2))