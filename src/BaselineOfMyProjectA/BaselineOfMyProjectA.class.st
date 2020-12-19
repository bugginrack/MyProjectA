Class {
	#name : #BaselineOfMyProjectA,
	#superclass : #BaselineOf,
	#category : #BaselineOfMyProjectA
}

{ #category : #baselines }
BaselineOfMyProjectA >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				baseline: 'MyFrameworkCore' with: [
					spec repository: MyRepository, '/MyFramework/src' ];
				baseline: 'MyFramework' with: [
					spec repository: MyRepository, '/MyFramework/src' ];
				baseline: 'MyLibraryCore' with: [
					spec repository: MyRepository, '/MyLibrary/src' ].

			spec
				package: 'MyProject-A' with: [
					spec requires: #(#'MyFrameworkCore' #'MyFramework' #'MyLibraryCore') ] ]
]
