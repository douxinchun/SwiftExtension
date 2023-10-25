import XCTest
import SwiftExtension

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStringExtension() {
        let normalString = "hello,world"
        XCTAssertEqual("h", normalString[0])
        XCTAssertEqual("d", normalString[10])
        XCTAssertEqual("h", normalString[0..<1])
        XCTAssertEqual("he", normalString[0...1])
        XCTAssertEqual("he", normalString[..<2])
        XCTAssertEqual("hel", normalString[...2])

        let emojiString = "hi,👍,world"
        XCTAssertEqual("👍", emojiString[3])
        XCTAssertEqual("d", emojiString[9])
        XCTAssertEqual("i,", emojiString[1..<3])
        XCTAssertEqual("i,👍", emojiString[1...3])
        XCTAssertEqual("hi,", emojiString[..<3])
        XCTAssertEqual("hi,👍", emojiString[...3])
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
