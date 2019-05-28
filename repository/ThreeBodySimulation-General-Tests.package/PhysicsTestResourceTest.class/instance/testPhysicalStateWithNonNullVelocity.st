tests
testPhysicalStateWithNonNullVelocity

	| physicalState |

	physicalState := testResource physicalStateWithNonNullVelocity.

	self deny: physicalState velocity isZero