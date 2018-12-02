tests
testCreationWhenPowerIsZero

	| exponentialUnit |

	exponentialUnit := ExponentialUnit of: meter raisedTo: 0.

	self assert: exponentialUnit equals: NullUnit new