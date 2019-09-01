action
overriding: selector in: aClass with: overrideBlock during: aBlock

	| wrapper |
	wrapper := self overriding: selector in: aClass with: overrideBlock.
	wrapper install.

	^aBlock ensure: [ wrapper uninstall ]