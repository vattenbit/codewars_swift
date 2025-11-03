func validParentheses(_ str: String) -> Bool {
    var count: Int = 0
    for char in str {
        if char == "(" {
            count += 1
        }else if char == ")" {
            count -= 1
            if count < 0 {
                return false
            }
        }
    }
    if count != 0 {
        return false
    }
    return true
}

func parenthesesTestsValid() {
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
