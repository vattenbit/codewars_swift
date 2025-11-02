func doTest(_ expected: Bool, _ input: String, using validator: (String) -> Bool) {
    let actual = validator(input)
    if actual == expected {
        print("PASS: \(input) -> \(actual)")
    } else {
        print("FAIL: \(input) -> \(actual), expected \(expected)")
    }
}
