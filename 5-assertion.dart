void main(List<String> args) {
    // make it check if the number is bigger or equal to 80 print You Passed otherwise the output should be Uncaught Error: Assertion failed: "The score must be bigger or equal to 80
    assert(args[0] >= 80, "The score must be bigger or equal to 80");
    print("You Passed");
}
