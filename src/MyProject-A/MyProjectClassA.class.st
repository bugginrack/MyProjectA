Class {
	#name : #MyProjectClassA,
	#superclass : #Object,
	#category : #'MyProject-A'
}

{ #category : #accessing }
MyProjectClassA >> useFramework [
	^ MyFrameworkClass new
]

{ #category : #accessing }
MyProjectClassA >> useFrameworkCore [
	^ MyFrameworkCoreClass new
]

{ #category : #accessing }
MyProjectClassA >> useLibraryCore [
	^ MyLibraryCoreClass new
]
