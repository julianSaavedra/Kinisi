tests
testNewSpecificationIsCreatedWithGivenName

	| newSpecification newName originalSpecification |
	originalSpecification := ForcePerpendicularToVelocitySpecification named: 'OriginalSpecification' with: self twoNewtons with: ForceOrientationSpecification clockwise.
	newName := 'NewSpecification'.
	
	newSpecification := originalSpecification name: newName.
	
	self deny: newSpecification identicalTo: originalSpecification.
	self assert: newSpecification name equals: newName.
	self assert: newSpecification module equals: originalSpecification module.
	self assert: newSpecification orientation equals: originalSpecification orientation