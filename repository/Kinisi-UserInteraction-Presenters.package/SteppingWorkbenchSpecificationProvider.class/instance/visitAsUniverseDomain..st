as yet unclassified
visitAsUniverseDomain: domain

	| unitProvider deltaUnits helpers |
	unitProvider := UnitProvider soleInstance.
	deltaUnits := { unitProvider second. unitProvider minute. unitProvider hour. unitProvider day}.
	helpers := { TotalDurationEndingModeHelper new. RepetitionEndingModeHelper new }.
	^SteppingWorkbenchSpecification
		with: deltaUnits
		and: helpers