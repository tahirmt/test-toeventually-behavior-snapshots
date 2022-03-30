//
//  CheckToEventuallySpec.swift
//  snapshottoeventuallyTests
//
//  Created by Mahmood Tahir on 2022-03-30.
//

import Foundation
import Quick
import Nimble
import Nimble_SnapshotTesting
import UIKit

final class CheckToEventuallySpec: QuickSpec {
    override func spec() {
        describe("check to eventually") {
            it("should record single file") {
                let testLabel = UILabel()
                testLabel.text = "Hello World!"

                expect(testLabel).toEventually(haveValidSnapshot(as: .image))
            }
        }
    }
}
