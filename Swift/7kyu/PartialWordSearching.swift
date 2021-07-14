/*
Write a method that will search an array of strings for all strings that contain another string, ignoring capitalization. Then return an array of the found strings.

The method takes two parameters, the query string and the array of strings to search, and returns an array.

If the string isn't contained in any of the strings in the array, the method returns an array containing a single string: "Empty" (or Nothing in Haskell, or "None" in Python and C)

Examples
If the string to search for is "me", and the array to search is ["home", "milk", "Mercury", "fish"], the method should return ["home", "Mercury"].

*/

func wordSearch(_ str:String, _ arr:[String]) -> [String] {
    var temp = [String]()
    for each in arr {
        if (each.lowercased()).contains(str.lowercased()) {
            temp.append(each)
        }
    }
    if temp.count != 0 {
        return temp
    } else {
        return ["Empty"]
    }
}