accessing
gtChidDefinitions
	self properties 
		ifNotNil: [ ^ self properties ].
	self items 
		ifNotNil: [ ^ { #items -> self items} asDictionary ].
	^ #() asDictionary