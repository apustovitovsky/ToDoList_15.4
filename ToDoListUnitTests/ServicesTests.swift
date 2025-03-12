import XCTest
@testable import ToDoList

final class ServicesTests: XCTestCase {
    var storageService: TaskStorageService!
    var networkService: TaskNetworkService!

    override func setUp() {
        super.setUp()
        storageService = TaskStorageService()
        networkService = TaskNetworkService()
    }

    override func tearDown() {
        storageService = nil
        networkService = nil
        super.tearDown()
    }

    func testNetworkServiceFetchTasks() {
        let expectation = XCTestExpectation(description: "Fetch tasks")

        networkService.fetchTasks { result in
            switch result {
            case .success(let tasks):
                XCTAssertNotNil(tasks)
                XCTAssertFalse(tasks.isEmpty)
            case .failure(let error):
                XCTFail("Failed with error: \(error)")
            }
            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 5.0)
    }
}
