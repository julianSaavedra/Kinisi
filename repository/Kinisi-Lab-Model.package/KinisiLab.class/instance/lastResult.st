accessing
lastResult

	^experimentsResults
		ifNotEmpty: [:results | results last ]
		ifEmpty: [ self error: 'No experiment was run yet' ]