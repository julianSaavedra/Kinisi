asserting
assert: workbench steppingWillStepBy: delta over: totalDuration

	self
		assert: workbench
		stepsBy: delta
		and: [:steppingConfiguration |
			self
				assert: steppingConfiguration totalDuration
				equals: totalDuration ]