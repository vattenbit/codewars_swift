func descendingOrder(_ str: String) -> Bool {
}

func ParenthesesTestsValid() {
    let array_tests = [
        (true, "()"),
        (true, "((()))"),
        (true, "()()()"),
        (true, "(()())()"),
        (true, "()(())((()))(())()"),
        (false, ")("),
        (false, "()()("),
        (false, "((())"),
        (false, ")())(()"),
        (false, ")()"),
        (false, ")"),
        (true, "")
    ]
    
    for test in array_tests {
        doTest(test.0, test.1, using: validParentheses)
    }
}
