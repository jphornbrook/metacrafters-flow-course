pub contract LegoSetReference {

    pub var setDetails: {Int: SetDetail}
    
    pub struct SetDetail {
        pub let setNumber: Int
        pub let setName: String
        pub let setFamilyName: String
        pub let numPieces: Int
        pub let retailPriceAtRelease: UFix64

        init(_setNumber: Int, _setName: String, _setFamilyName: String, _numPieces: Int, _retailPriceAtRelease: UFix64) {
            self.setNumber = _setNumber
            self.setName = _setName
            self.setFamilyName = _setFamilyName
            self.numPieces = _numPieces
            self.retailPriceAtRelease = _retailPriceAtRelease
        }
    }

    pub fun addSet(setNumber: Int, setName: String, setFamilyName: String, numPieces: Int, retailPriceAtRelease: UFix64) {
        let newSet = SetDetail(_setNumber: setNumber, _setName: setName, _setFamilyName: setFamilyName, _numPieces: numPieces, _retailPriceAtRelease: retailPriceAtRelease)
        self.setDetails[setNumber] = newSet
    }

    init() {
        self.setDetails = {}
    }

}
