accessing
lastResult

	^lastResult ifNil: [ self error: 'No experiment was run yet' ]