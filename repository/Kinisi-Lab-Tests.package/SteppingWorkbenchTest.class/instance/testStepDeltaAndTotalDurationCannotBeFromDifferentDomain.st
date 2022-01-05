tests
testStepDeltaAndTotalDurationCannotBeFromDifferentDomain

	| totalDurationFromDifferentDomain |
	totalDurationFromDifferentDomain := self unitFromAnotherDomain with: 10.
	self deny: (steppingDelta sameDomainAs: totalDurationFromDifferentDomain).

	self
		should: [ workbench steppingWorkbench stepBy: steppingDelta over: totalDurationFromDifferentDomain ]
		raise: Error
		whoseDescriptionIncludes: 'Total duration and step duration must be from the same domain'