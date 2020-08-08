initialization
initializeOn: interfaceToWatch

	interface := interfaceToWatch.
	isObserving := false.
	observations := OrderedCollection new