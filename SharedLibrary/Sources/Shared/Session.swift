//
//  Session.swift
//  SharedLibrary
//
//  Created by Gustavo Araujo Santos on 9/29/25.
//

public class Session {

    @MainActor
    public static var shared: Session = {
        let instance = Session()
        return instance
    }()

    public var name: String?
}
