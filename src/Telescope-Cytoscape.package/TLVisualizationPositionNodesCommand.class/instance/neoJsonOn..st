as yet unclassified
neoJsonOn: writer
	writer
		writeMapStreamingDo: [ :jsonMapWriter | 
			jsonMapWriter writeKey: #command value: self class command.
			jsonMapWriter writeKey: #visuId value: self visuId.
			jsonMapWriter
				writeKey: #layout
				value:
					{(#name -> 'preset').
					(#animate -> true).
					(#positions
						->
							(self nodes
								collect: [ :aNode | 
									aNode nodeId asString
										->
											{(#x -> aNode absoluteCenterPosition x).
											(#y -> aNode absoluteCenterPosition y)} asDictionary ]) asDictionary)} asDictionary ]