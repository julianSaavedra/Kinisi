running test
run: selectedTest

	selectedTest
		runCaseWith: (FixCanvasDisplayManager with: self)
		using: (Duration milliSeconds: 500)