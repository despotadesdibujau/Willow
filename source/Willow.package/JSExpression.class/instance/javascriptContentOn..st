printing
javascriptContentOn: aStream

	aStream nextPut: $(.
	super javascriptContentOn: aStream.
	aStream nextPut: $)