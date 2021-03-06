/*
Don't give me five!
In this kata you get the start number and the end number of a region and should return the count of all numbers except numbers with a 5 in it. The start and the end number are both inclusive!

Examples:

1,9 -> 1,2,3,4,6,7,8,9 -> Result 8
4,17 -> 4,6,7,8,9,10,11,12,13,14,16,17 -> Result 12
The result may contain fives. ;-)
The start number will always be smaller than the end number. Both numbers can be also negative!
*/

func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
    var temp = [String]()
    var temp2 = [String]()
    for each in start...end {
        temp.append(String(each))
    }

    for (i, v) in temp.enumerated() {
        if !v.contains("5") {
             temp2.append(v)
        }
    }
    return temp2.count
}


/*
 --Better Solution--

func wordSearch(_ str:String, _ arr:[String]) -> [String] {
  let array = arr.filter { $0.lowercased().range(of: str.lowercased()) != nil }
  return array.isEmpty ? ["Empty"] : array
}

*/
