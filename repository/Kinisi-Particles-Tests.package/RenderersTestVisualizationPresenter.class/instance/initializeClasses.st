initialization
initializeClasses

	classes := self newList.
	classes headerTitle: 'Test Classes' asText allBold.
	classes beSingleSelection.
	self setEligibleClasses