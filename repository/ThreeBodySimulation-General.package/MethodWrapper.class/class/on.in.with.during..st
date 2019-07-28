action
on: selector in: aClass with: overrideBlock during: aBlock

	| wrapper |
	wrapper := self on: selector in: aClass with: overrideBlock.
	wrapper install.

	^aBlock ensure: [ wrapper uninstall ]