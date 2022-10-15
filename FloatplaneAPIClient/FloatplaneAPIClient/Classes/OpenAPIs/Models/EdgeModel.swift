//
// EdgeModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct EdgeModel: Content, Hashable {

    public var hostname: String
    public var queryPort: Int
    public var bandwidth: Int64
    public var allowDownload: Bool
    public var allowStreaming: Bool
    public var datacenter: EdgeDataCenter

    public init(hostname: String, queryPort: Int, bandwidth: Int64, allowDownload: Bool, allowStreaming: Bool, datacenter: EdgeDataCenter) {
        self.hostname = hostname
        self.queryPort = queryPort
        self.bandwidth = bandwidth
        self.allowDownload = allowDownload
        self.allowStreaming = allowStreaming
        self.datacenter = datacenter
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hostname
        case queryPort
        case bandwidth
        case allowDownload
        case allowStreaming
        case datacenter
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(hostname, forKey: .hostname)
        try container.encode(queryPort, forKey: .queryPort)
        try container.encode(bandwidth, forKey: .bandwidth)
        try container.encode(allowDownload, forKey: .allowDownload)
        try container.encode(allowStreaming, forKey: .allowStreaming)
        try container.encode(datacenter, forKey: .datacenter)
    }
}

