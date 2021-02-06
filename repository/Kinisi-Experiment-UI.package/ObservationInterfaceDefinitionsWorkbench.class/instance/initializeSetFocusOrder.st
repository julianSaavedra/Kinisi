initialization
initializeSetFocusOrder

	self focusOrder
		add: addDefinition;
		add: removeDefinition;
		add: removeAllDefinitions;
		add: definitions