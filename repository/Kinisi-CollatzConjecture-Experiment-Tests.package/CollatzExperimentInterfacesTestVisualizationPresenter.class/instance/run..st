running test
run: selectedTest

	selectedTest
		runCaseWith: (FixCanvasDisplayManager with: canvas)
		using: (Duration milliSeconds: 500)