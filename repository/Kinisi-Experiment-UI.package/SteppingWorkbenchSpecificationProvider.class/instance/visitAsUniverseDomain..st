private
visitAsUniverseDomain: domain

	| unitProvider |
	unitProvider := UnitProvider soleInstance.
	^SteppingWorkbenchSpecification
		with: { unitProvider millisecond. unitProvider second. unitProvider minute. unitProvider hour. unitProvider day}
		using: { TotalDurationEndingModeHelper new. RepetitionEndingModeHelper new }