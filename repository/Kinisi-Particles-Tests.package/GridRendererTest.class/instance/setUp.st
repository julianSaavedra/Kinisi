running
setUp
	
	super setUp.
	universeWorkbench := UniverseScenarioWorkbench default.
	universeWorkbench background: Color white.
	canvas ifNil: [ canvas := RSCanvas new ]