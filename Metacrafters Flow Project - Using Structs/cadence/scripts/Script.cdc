import LegoSetReference from 0x01

pub fun main(setNumber: Int): LegoSetReference.SetDetail {
  return LegoSetReference.setDetails[setNumber]!
}
