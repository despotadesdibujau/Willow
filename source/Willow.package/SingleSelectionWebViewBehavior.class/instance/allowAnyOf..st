Single Selection-API
allowAnyOf: anElementCollection

	availableElements := anElementCollection.
	"Try to keep the current selection, if the new elements includes some object equal to the previous selection make it the chosen one."
	self chooseAnySatisfying: [ :element | chosenElementOptional withContentDo: [ :chosenElement | chosenElement = element ] ifUnused: [ false ] ] ifNone: [ self invalidateSelection ]