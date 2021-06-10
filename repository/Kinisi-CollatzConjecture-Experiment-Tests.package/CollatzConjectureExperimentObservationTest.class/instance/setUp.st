running
setUp
	
	| workbench |
	super setUp.
	displayProvider := DisplayProvider with: ScreenProvider new.
	displayHolder ifNil: [ displayHolder := NullDisplayHolder new ].
	period ifNil: [ period := Duration milliSeconds: 50 ].
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	workbench modelWorkbench state: 5.
	lab := KinisiLab using: workbench.
	observationWorkbench := lab workbench observationWorkbench.
	observationWorkbench period: period.
	