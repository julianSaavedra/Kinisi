tests
testAccept

	| specification name forceModule forceOrientation visitingResult |
	name := 'TestSpecification'.
	forceModule := self twoNewtons.
	forceOrientation := ForceOrientationSpecification clockwise.
	specification := ForcePerpendicularToVelocitySpecification
		                 named: name
		                 with: forceModule
		                 with: forceOrientation.

	visitingResult := specification accept: self.

	self assertCollection: visitingResult hasSameElements: {name. forceModule. forceOrientation }