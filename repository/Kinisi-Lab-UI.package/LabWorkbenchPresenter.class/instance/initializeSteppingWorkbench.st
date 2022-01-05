initialization
initializeSteppingWorkbench

	self
		addPageFor: (SteppingWorkbenchPresenter on: workbench steppingWorkbench)
		named: 'Stepping'
		with: #glamorousAlarm