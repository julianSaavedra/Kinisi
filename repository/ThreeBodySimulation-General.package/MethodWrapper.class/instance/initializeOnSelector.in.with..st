initialization
initializeOnSelector: selector in: class with: aWrappingMode

	wrappedSelector := selector.
	targetClass := class.
	wrappingMode := aWrappingMode