widgets
inspectLastResult

	[ lab lastResult inspect ]
		on: Error
		do: [ :error | UIManager default alert: error messageText ]