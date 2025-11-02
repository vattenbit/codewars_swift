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

@main
struct Tests {
    static func main() {
        doTest(true, "()", using: validParentheses)
        doTest(true, "((()))", using: validParentheses)
        doTest(true, "()()()", using: validParentheses)
        doTest(true, "(()())()", using: validParentheses)
        doTest(true, "()(())((()))(())()", using: validParentheses)
        doTest(false, ")(", using: validParentheses)
        doTest(false, "()()(", using: validParentheses)
        doTest(false, "((())", using: validParentheses)
        doTest(false, "())(()", using: validParentheses)
        doTest(false, ")()", using: validParentheses)
        doTest(false, ")", using: validParentheses)
        doTest(true, "", using: validParentheses)
    }
}
