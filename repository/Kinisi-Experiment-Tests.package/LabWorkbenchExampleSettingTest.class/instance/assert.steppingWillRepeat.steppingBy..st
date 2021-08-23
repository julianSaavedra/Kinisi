asserting
assert: workbench steppingWillRepeat: repetitions steppingBy: delta

	self
		assert: workbench
		stepsBy: delta
		and: [:steppingConfiguration |
			self
				assert: steppingConfiguration numberOfRepetitions
				equals: repetitions ]