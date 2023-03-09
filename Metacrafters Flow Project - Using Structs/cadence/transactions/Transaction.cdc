import LegoSetReference from 0x01

transaction(setNumber: Int, setName: String, setFamilyName: String, numPieces: Int, retailPriceAtRelease: UFix64) {

    prepare(signer: AuthAccount) {}

    execute {
        LegoSetReference.addSet(setNumber: setNumber, setName: setName, setFamilyName: setFamilyName, numPieces: numPieces, retailPriceAtRelease: retailPriceAtRelease)
        log("We're done.")
    }
}
