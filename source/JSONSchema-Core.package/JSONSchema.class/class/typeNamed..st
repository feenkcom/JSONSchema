instance creation
typeNamed: aString 
	| mainTypeName |
	mainTypeName := aString.
	mainTypeName isArray ifTrue: [
		mainTypeName := mainTypeName first ].
	
	^ (self allSubclasses reject: #isAbstract)
		detect: [ :each | each typeName = mainTypeName ]
		ifFound: [ :typeClass | typeClass ]
		ifNone: [ Error signal: 'type with name ', mainTypeName asString, ' not found' ]