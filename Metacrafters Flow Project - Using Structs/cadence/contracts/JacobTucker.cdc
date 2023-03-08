pub contract JacobTucker {

    pub let is: String

    pub fun hello(): String {
        return self.is
    }

    init() {
        self.is = "the best"
    }
}
