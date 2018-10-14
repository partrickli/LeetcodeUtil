// Generate a dictionary, array value as dictionary key, and array index as dictionary value.
// Group indices to dictionary value, while duplicated array value exists.
extension Array where Element: Hashable {
    func valueIndex() -> Dictionary<Element, [Int]> {
        var result = [Element: [Int]]()
        for (i, v) in self.enumerated() {
            result[v, default: [Int]()].append(i)
        }
        return result
    }
}

// Test
let array = [3, 1, 1, 2, 3, 5, 7, 5, 5]
let indices = array.valueIndex()
for key in indices.keys.sorted() {
    print("\(key): \(indices[key]!)")
}
