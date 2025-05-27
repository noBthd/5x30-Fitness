//
//  APIClient.swift
//  5x30 Fitness
//
//  Created by Егор Кириченко on 16.05.2025.
//

import Foundation

final class APIClient {
    
    static let shared = APIClient()
    private init() {}

    private let baseURL = "http://localhost:8080"
    
    func request<T: Decodable>(
        to endpoint: Endpoint,
        body: Data? = nil,
        responseType: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        guard let url = URL(string: baseURL + endpoint.path) else {
            completion(.failure(APIError.invalidURL))
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = body

        let task = URLSession.shared.dataTask(with: request) { data, response, error in

            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(APIError.noData))
                return
            }

            do {
                let decoded = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decoded))
            } catch {
                completion(.failure(APIError.decodingFailed))
            }
        }

        task.resume()
    }
}

enum APIError: Error {
    case invalidURL
    case noData
    case decodingFailed
}

