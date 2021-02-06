tests
testAllSameComponentsMeterVector

	| oneMeter |
	oneMeter := unitProvider meter with: 1.
	
	self
		assert: (testResource vectorWithAllComponentsWith: oneMeter)
 		equals: testResource oneMeterInAllComponentsVector