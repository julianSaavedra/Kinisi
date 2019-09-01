action
before: selector in: aClass execute: preMethodBlock during: aBlock

	| wrapper |
	wrapper := self before: selector in: aClass execute: preMethodBlock.
	wrapper install.

	^aBlock ensure: [ wrapper uninstall ]