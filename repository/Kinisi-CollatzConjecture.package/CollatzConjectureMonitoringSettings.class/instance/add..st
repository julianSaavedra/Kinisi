setting
add: monitor

	| newMonitors |
	newMonitors := monitors copy.
	newMonitors add: monitors.
	^self class turnOn: monitoringIsOn withAll: newMonitors