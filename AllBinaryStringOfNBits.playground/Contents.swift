//: Playground - noun: a place where people can play

var globalArray = [Int?](repeatElement(nil, count: 2))

func binaryStrings(size: Int){
  if size == 0 {
    if let array = globalArray as? [Int] {
      print(array)
    }
    return
  } else {
    globalArray[size - 1] = 0
    binaryStrings(size: size - 1)
    globalArray[size - 1] = 1
    binaryStrings(size: size - 1)
  }
}

binaryStrings(size: globalArray.count)

