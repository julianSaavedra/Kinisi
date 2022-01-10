tests
testNewSpecificationIsCreatedWhenConfiguringNewForceModule

	| newSpecification originalSpecification twoNewtons newForceModule |
	twoNewtons := self twoNewtons.
	originalSpecification := ForcePerpendicularToVelocitySpecification named: 'OriginalSpecification' with: twoNewtons with: ForceOrientationSpecification clockwise.
	newForceModule := twoNewtons * 2.
	
	newSpecification := originalSpecification module: newForceModule.
	
	self deny: newSpecification identicalTo: originalSpecification.
	self assert: newSpecification module equals: newForceModule.
	self assert: newSpecification name equals: originalSpecification name.
	self assert: newSpecification orientation equals: originalSpecification orientation