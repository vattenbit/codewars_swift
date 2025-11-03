func validBraces(_ str: String) -> Bool {
    var stack: [Character] = []
    let matching_bracket: [Character: Character] = [")": "(", "]": "[", "}": "{"]
    for char in str {
        switch char {
        case "(", "[", "{":
            stack.append(char)
        case ")", "]", "}":
            let last = stack.popLast()
            if last != matching_bracket[char] {
                return false
            }
        default: continue
        }
    }
    return stack.isEmpty
}

func ValidBracesTests() {
    let array_tests = [
        // testNonNested
        (true, "()"),
        (true, "[]"),
        (true, "{}"),
        (true, "(){}[]"),
        // testNested
        (true, "([{}])"),
        (false, "(}"),
        (false, "[(])"),
        (true, "({})[({})]"),
        (false, "(})"),
        (true, "(({{[[]]}}))"),
        (true, "{}({})[]"),
        (false, ")(}{]["),
        (false, "())({}}{()][]["),
        (false, "(((({{"),
        (false, "}}]]))}])")
    ]
    
    for test in array_tests {
        doTest(test.0, test.1, using: validBraces)
    }
}
