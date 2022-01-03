private
runInNewProcess: selectedTest

	[selectedTest
		runCaseWith: self
		using: (Duration milliSeconds: 500)
		] fork