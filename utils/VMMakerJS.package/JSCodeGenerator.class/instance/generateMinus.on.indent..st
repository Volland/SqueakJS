JS translation
generateMinus: msgNode on: aStream indent: level
	"Generate the JS code for this message onto the given stream."
	self checkNonPointer: msgNode receiver op: '-'.
	self checkNonPointer: msgNode args first op: '-'.

	self emitJSExpression: msgNode receiver on: aStream.
	aStream nextPutAll: ' - '.
	self emitJSExpression: msgNode args first on: aStream.