test - monitoring settings
testMonitorIsTurnedOnAndOff

	| workbench |
	workbench := CollatzConjectureUserWorkbench default.
	self deny: workbench isMonitoringOn.
	
	(CollatzConjectureMonitoringSettingsModifier turnOnMonitoring) modify: workbench.
	
	self assert: workbench isMonitoringOn.
	
	(CollatzConjectureMonitoringSettingsModifier turnOffMonitoring) modify: workbench.
	
	self deny: workbench isMonitoringOn