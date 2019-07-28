initialization
initializeOnSelector: aSelector in: aClass with: twoArgumentsBlock

	overridenSelector := aSelector.
	overridenClass := aClass.
	overrideBlock := twoArgumentsBlock
	