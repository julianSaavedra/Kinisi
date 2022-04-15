running
setUp

	super setUp.
	universeWorkbench := UniverseScenarioWorkbench default.
	universeWorkbench background: Color black.
	canvas ifNil: [ canvas := RSCanvas new ]