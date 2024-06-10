import Foundation

struct ToDoItem: Equatable, Codable, Identifiable {
    var id = UUID()
    var title: String
    var isDone: Bool = false
}

enum FilterOptions: Identifiable, CaseIterable {
    case all
    case done
    case notDone
    
    var id: FilterOptions {self}
}

extension FilterOptions {
    var title: String {
        switch self {
        case .all:
            return "All"
        case .done:
            return "Done"
        case .notDone:
            return "Not Done"
        }
    }
}
