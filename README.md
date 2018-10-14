# LeetcodeUtil

Utilization for leetcode algorithm, generic implementation for frequently used helper functionality.

## Detailed array index infomation

// Generate a dictionary, array value as dictionary key, and array index as dictionary value.
// Group indices to dictionary value, while duplicated array value exists.

```swift
extension Array where Element: Hashable {
    func valueIndex() -> Dictionary<Element, [Int]> {
        var result = [Element: [Int]]()
        for (i, v) in self.enumerated() {
            result[v, default: [Int]()].append(i)
        }
        return result
    }
}
```

// Test

```swift
let array = [3, 1, 1, 2, 3, 5, 7, 5, 5]
let indices = array.valueIndex()
for key in indices.keys.sorted() {
print("\(key): \(indices[key]!)")
}
```
