import Equation_Tagged
import Testing

@Suite("Equation Tagged")
struct Test {

    @Suite("Integration")
    struct Integration {
        enum User {}

        @Test
        func `Tagged values compare via Equation.Protocol`() {
            let a: User.ID = 42
            let b: User.ID = 42
            let c: User.ID = 99
            #expect(a == b)
            #expect(a != c)
        }
    }
}

extension Test.Integration.User {
    typealias ID = Tagged<Self, Int>
}
