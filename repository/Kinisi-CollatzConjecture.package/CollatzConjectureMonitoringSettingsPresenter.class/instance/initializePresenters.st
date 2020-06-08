accessing model
initializePresenters

	turnOnOffMonitoring := self newCheckBox.
	turnOnOffMonitoring
		label: 'Monitoring On';
		state: workbench isMonitoringOn;
		whenActivatedDo: [ (CollatzConjectureMonitoringSettingsModifier turnOnMonitoring) modify: workbench ];
		whenDeactivatedDo: [ (CollatzConjectureMonitoringSettingsModifier turnOffMonitoring) modify: workbench ].
