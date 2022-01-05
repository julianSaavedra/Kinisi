accessing model
setModelBeforeInitialization: aWorkbench

	super setModelBeforeInitialization: aWorkbench.
	workbench := aWorkbench.
	specification := (SteppingWorkbenchSpecificationProvider for: aWorkbench) specification.
	helperMap := Dictionary new.
	specification steppingModeHelpers do: [:helper |
		helperMap
			at: helper modeName asSymbol
			put: helper ]
	