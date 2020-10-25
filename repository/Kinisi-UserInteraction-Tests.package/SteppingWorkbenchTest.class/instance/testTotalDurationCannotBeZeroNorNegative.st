tests
testTotalDurationCannotBeZeroNorNegative


	#(-1 0) do: [:invalidStepDuration |
		self
			should: [ workbench steppingWorkbench stepBy: resource oneSecond over: invalidStepDuration * resource oneSecond ]
			raise: Error
			whoseDescriptionIncludes: 'Total duration must be greater than zero'
			description: 'Test did not fail as expected' ]