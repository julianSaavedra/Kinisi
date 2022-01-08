running
setUp
	
	| workbench |
	super setUp.
	displayProvider := DisplayProvider using: (PresenterDisplayProviderSpecification with: ScreenProvider new).
	displayHolder ifNil: [ displayHolder := NullDisplayHolder new ].
	period ifNil: [ period := Duration milliSeconds: 50 ].
	workbench := LabWorkbench using: UniverseScenarioWorkbench default.
	lab := KinisiLab using: workbench.
	observationWorkbench := lab workbench observationWorkbench.
	observationWorkbench period: period.
	