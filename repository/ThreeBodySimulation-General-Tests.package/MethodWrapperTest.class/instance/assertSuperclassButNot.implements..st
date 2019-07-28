asserting
assertSuperclassButNot: aClass implements: selector

	| superclassesImplementingSelector |

	self deny: (aClass includesSelector: selector).
	superclassesImplementingSelector := aClass selectSuperclasses: [:superclass | superclass includesSelector: selector].
	self assert: superclassesImplementingSelector notEmpty