tests
testNewSpecificationIsCreatedWhenConfiguringNewOrientation

	| newSpecification originalSpecification newOrientation |
	originalSpecification := ForcePerpendicularToVelocitySpecification named: 'OriginalSpecification' with: self twoNewtons with: ForceOrientationSpecification clockwise.
	newOrientation := ForceOrientationSpecification counterclockwise.
	
	newSpecification := originalSpecification orientation: newOrientation.
	
	self deny: newSpecification identicalTo: originalSpecification.
	self assert: newSpecification orientation equals: newOrientation.
	self assert: newSpecification name equals: originalSpecification name.
	self assert: newSpecification module equals: originalSpecification module