instance creation
repeat: numberOfTimes steppingBy: delta

	| settingBlock |
	settingBlock := [:workbench | workbench repeat: numberOfTimes steppingBy: delta ].
	^self new initializeSettingWith: settingBlock