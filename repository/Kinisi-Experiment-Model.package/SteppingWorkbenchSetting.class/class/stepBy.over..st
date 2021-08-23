instance creation
stepBy: delta over: totalDuration

	| settingBlock |
	settingBlock := [:workbench | workbench stepBy: delta over: totalDuration ].
	^self new initializeSettingWith: settingBlock