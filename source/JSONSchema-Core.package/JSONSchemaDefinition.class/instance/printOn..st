accessing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' ('.
	self schemaClass ifNotNil: [
		aStream nextPutAll: self schemaClass name ].
	self reference ifNotNil: [
		aStream nextPutAll: self reference printString ].
	aStream nextPutAll: ')'