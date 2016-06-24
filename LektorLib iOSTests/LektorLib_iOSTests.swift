//
//  LektorLib_iOSTests.swift
//  LektorLib iOSTests
//
//  Created by Vladimir Urbano on 6/24/16.
//
//

import XCTest

class LektorLib_iOSTests: XCTestCase {
	
	private var lektor: Lektor?
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
		
		self.lektor = nil
    }
    
	func testCloseFile() {
		self.lektor = Lektor(path: "/Volumes/Rauenstein/Users/vla/Xcode/LektorLib/Tests/test.txt")
		self.lektor.close()
		XCTAssert(true)
	}
	
	func testReadClosedFile() {
		self.lektor = Lektor(path: "/Volumes/Rauenstein/Users/vla/Xcode/LektorLib/Tests/test.txt")
		self.lektor.close()
		do {
			let line = try self.lektor.nextLine()
			XCTAssert(line != nil)
		} catch {
			
		}
		XCTAssert(true)
	}
	
	func testReadNonExistingFile() {
		self.lektor = Lektor(path: "/Volumes/Rauenstein/Users/vla/Xcode/LektorLib/Tests/test0.txt")
		XCTAssert(self.lektor == nil)
		
		if let lektor = self.lektor {
			do {
				let _ = try lektor.nextLine()
			} catch {
				
			}
		}
		XCTAssert(true)
	}
	
	func testReadSingleLineFile() {
		self.lektor = Lektor(path: "/Volumes/Rauenstein/Users/vla/Xcode/LektorLib/Tests/test.txt")
		do {
			let line = try self.lektor.nextLine()
			XCTAssert(line != nil)
		} catch {
			
		}
		XCTAssert(true)
	}
	
	func testReadMultipleLineFile() {
		self.lektor = Lektor(path: "/Volumes/Rauenstein/Users/vla/Xcode/LektorLib/Tests/test2.txt")
		do {
			while let _ = try self.lektor.nextLine() {
				
			}
		} catch {
			
		}
		XCTAssert(true)
	}
}
