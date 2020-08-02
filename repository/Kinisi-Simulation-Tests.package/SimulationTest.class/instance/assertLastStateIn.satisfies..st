asserting
assertLastStateIn: results satisfies: lastStateCondition

	| finalState |

	finalState := (results
		withTimeAndStateCollect: [ :time :state | state ]) last.
	self assert: (lastStateCondition value: finalState)