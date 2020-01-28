tests
testCreationWhenPowerIsOne

	| exponentialUnit |

	exponentialUnit := ExponentialUnit of: meter raisedTo: 1.

	self assert: exponentialUnit equals: meter
