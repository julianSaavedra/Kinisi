as yet unclassified
visitAsUniverseDomain: domain

	| unitProvider |
	unitProvider := UnitProvider soleInstance.
	^SteppingWorkbenchSpecification
		with: { unitProvider second. unitProvider minute. unitProvider hour. unitProvider day}
		and: { TotalDurationEndingModeHelper new. RepetitionEndingModeHelper new }