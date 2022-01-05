initialization
initializeSelectedClassTests

	selectedClassTests := self newList.
	selectedClassTests headerTitle: 'Test Cases' asText allBold.
	selectedClassTests display: [ :test | test selector ].
	selectedClassTests items: {}.
	selectedClassTests beSingleSelection