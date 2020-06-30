accessing
lastResult

	^experiments
		ifNotEmpty: [:results | results last  ]
		ifEmpty: [ self error: 'No experiment was run yet' ]