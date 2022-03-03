tests
setUp

	super setUp.
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	exampleSource := CollatzConjectureWorkbenchExampleSettingSource new