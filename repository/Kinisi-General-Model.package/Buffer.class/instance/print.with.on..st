private - printing
print: status with: dataPackagesSize on: aStream

	| text packagesInfo |
	packagesInfo := 'Data packages: <1s>' expandMacrosWith: dataPackagesSize asString.
	text := 'Buffer <1s> [<2s>]' expandMacrosWith: status with: packagesInfo.
	aStream nextPutAll: text