running
setUp
	
	super setUp.
	collatzWorkbench := CollatzConjectureScenarioWorkbench default.
	canvas ifNil: [ canvas := RSCanvas new ]