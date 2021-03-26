private
refreshTestCases

	| currentSelectedClass currentSelectedTest |
	currentSelectedClass := classes selection selectedItem.
	currentSelectedTest := selectedClassTests selection selectedItem.
	self setEligibleClasses.
	(classes items includes: currentSelectedClass) ifTrue: [
		classes selectItem: currentSelectedClass.
		selectedClassTests items
			detect: [:test | test selector = currentSelectedTest selector ]
			ifFound: [:testToSelect | selectedClassTests selectItem: testToSelect]
			ifNone: [selectedClassTests unselectAll]]
	