accessing model
initializePresenters

	turnOnOffMonitoring := self newCheckBox.
	turnOnOffMonitoring
		label: 'Observation On';
		state: workbench isMonitoringOn;
		whenActivatedDo: [ (CollatzConjectureMonitoringSettingsModifier turnOnMonitoring) modify: workbench ];
		whenDeactivatedDo: [ (CollatzConjectureMonitoringSettingsModifier turnOffMonitoring) modify: workbench ].
	label := self newLabel.
	label label: 'Period'.
	
	period := self newNumberInput.
	period
		number: workbench observationPeriod;
		whenNumberChangedDo: [:number | (CollatzConjectureMonitoringSettingsModifier modifyWith: [:settings | settings period: number]) modify: workbench ].

