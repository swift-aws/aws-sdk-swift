//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore
import Foundation

extension TranscribeStreamingService {
    //MARK: Enums

    public enum ItemType: String, CustomStringConvertible, Codable {
        case pronunciation = "pronunciation"
        case punctuation = "punctuation"
        public var description: String { return self.rawValue }
    }

    public enum LanguageCode: String, CustomStringConvertible, Codable {
        case enUs = "en-US"
        case enGb = "en-GB"
        case esUs = "es-US"
        case frCa = "fr-CA"
        case frFr = "fr-FR"
        case enAu = "en-AU"
        public var description: String { return self.rawValue }
    }

    public enum MediaEncoding: String, CustomStringConvertible, Codable {
        case pcm = "pcm"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct Alternative: AWSDecodableShape {

        /// One or more alternative interpretations of the input audio. 
        public let items: [Item]?
        /// The text that was transcribed from the audio.
        public let transcript: String?

        public init(items: [Item]? = nil, transcript: String? = nil) {
            self.items = items
            self.transcript = transcript
        }

        private enum CodingKeys: String, CodingKey {
            case items = "Items"
            case transcript = "Transcript"
        }
    }

    public struct AudioEvent: AWSEncodableShape {

        /// An audio blob that contains the next part of the audio that you want to transcribe.
        public let audioChunk: Data?

        public init(audioChunk: Data? = nil) {
            self.audioChunk = audioChunk
        }

        private enum CodingKeys: String, CodingKey {
            case audioChunk = "AudioChunk"
        }
    }

    public struct AudioStream: AWSEncodableShape {

        /// A blob of audio from your application. You audio stream consists of one or more audio events.
        public let audioEvent: AudioEvent?

        public init(audioEvent: AudioEvent? = nil) {
            self.audioEvent = audioEvent
        }

        private enum CodingKeys: String, CodingKey {
            case audioEvent = "AudioEvent"
        }
    }

    public struct BadRequestException: AWSDecodableShape {

        public let message: String?

        public init(message: String? = nil) {
            self.message = message
        }

        private enum CodingKeys: String, CodingKey {
            case message = "Message"
        }
    }

    public struct ConflictException: AWSDecodableShape {

        public let message: String?

        public init(message: String? = nil) {
            self.message = message
        }

        private enum CodingKeys: String, CodingKey {
            case message = "Message"
        }
    }

    public struct InternalFailureException: AWSDecodableShape {

        public let message: String?

        public init(message: String? = nil) {
            self.message = message
        }

        private enum CodingKeys: String, CodingKey {
            case message = "Message"
        }
    }

    public struct Item: AWSDecodableShape {

        /// The word or punctuation that was recognized in the input audio.
        public let content: String?
        /// The offset from the beginning of the audio stream to the end of the audio that resulted in the item.
        public let endTime: Double?
        /// The offset from the beginning of the audio stream to the beginning of the audio that resulted in the item.
        public let startTime: Double?
        /// The type of the item. PRONUNCIATION indicates that the item is a word that was recognized in the input audio. PUNCTUATION indicates that the item was interpreted as a pause in the input audio.
        public let `type`: ItemType?

        public init(content: String? = nil, endTime: Double? = nil, startTime: Double? = nil, type: ItemType? = nil) {
            self.content = content
            self.endTime = endTime
            self.startTime = startTime
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case content = "Content"
            case endTime = "EndTime"
            case startTime = "StartTime"
            case `type` = "Type"
        }
    }

    public struct LimitExceededException: AWSDecodableShape {

        public let message: String?

        public init(message: String? = nil) {
            self.message = message
        }

        private enum CodingKeys: String, CodingKey {
            case message = "Message"
        }
    }

    public struct Result: AWSDecodableShape {

        /// A list of possible transcriptions for the audio. Each alternative typically contains one item that contains the result of the transcription.
        public let alternatives: [Alternative]?
        /// The offset in seconds from the beginning of the audio stream to the end of the result.
        public let endTime: Double?
        /// Amazon Transcribe divides the incoming audio stream into segments at natural points in the audio. Transcription results are returned based on these segments.  The IsPartial field is true to indicate that Amazon Transcribe has additional transcription data to send, false to indicate that this is the last transcription result for the segment.
        public let isPartial: Bool?
        /// A unique identifier for the result. 
        public let resultId: String?
        /// The offset in seconds from the beginning of the audio stream to the beginning of the result.
        public let startTime: Double?

        public init(alternatives: [Alternative]? = nil, endTime: Double? = nil, isPartial: Bool? = nil, resultId: String? = nil, startTime: Double? = nil) {
            self.alternatives = alternatives
            self.endTime = endTime
            self.isPartial = isPartial
            self.resultId = resultId
            self.startTime = startTime
        }

        private enum CodingKeys: String, CodingKey {
            case alternatives = "Alternatives"
            case endTime = "EndTime"
            case isPartial = "IsPartial"
            case resultId = "ResultId"
            case startTime = "StartTime"
        }
    }

    public struct ServiceUnavailableException: AWSDecodableShape {

        public let message: String?

        public init(message: String? = nil) {
            self.message = message
        }

        private enum CodingKeys: String, CodingKey {
            case message = "Message"
        }
    }

    public struct StartStreamTranscriptionRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let payloadPath: String = "audioStream"
        public static var _encoding = [
            AWSMemberEncoding(label: "languageCode", location: .header(locationName: "x-amzn-transcribe-language-code")), 
            AWSMemberEncoding(label: "mediaEncoding", location: .header(locationName: "x-amzn-transcribe-media-encoding")), 
            AWSMemberEncoding(label: "mediaSampleRateHertz", location: .header(locationName: "x-amzn-transcribe-sample-rate")), 
            AWSMemberEncoding(label: "sessionId", location: .header(locationName: "x-amzn-transcribe-session-id")), 
            AWSMemberEncoding(label: "vocabularyName", location: .header(locationName: "x-amzn-transcribe-vocabulary-name"))
        ]

        /// PCM-encoded stream of audio blobs. The audio stream is encoded as an HTTP2 data frame.
        public let audioStream: AudioStream
        /// Indicates the source language used in the input audio stream.
        public let languageCode: LanguageCode
        /// The encoding used for the input audio. 
        public let mediaEncoding: MediaEncoding
        /// The sample rate, in Hertz, of the input audio. We suggest that you use 8000 Hz for low quality audio and 16000 Hz for high quality audio.
        public let mediaSampleRateHertz: Int
        /// A identifier for the transcription session. Use this parameter when you want to retry a session. If you don't provide a session ID, Amazon Transcribe will generate one for you and return it in the response.
        public let sessionId: String?
        /// The name of the vocabulary to use when processing the transcription job.
        public let vocabularyName: String?

        public init(audioStream: AudioStream, languageCode: LanguageCode, mediaEncoding: MediaEncoding, mediaSampleRateHertz: Int, sessionId: String? = nil, vocabularyName: String? = nil) {
            self.audioStream = audioStream
            self.languageCode = languageCode
            self.mediaEncoding = mediaEncoding
            self.mediaSampleRateHertz = mediaSampleRateHertz
            self.sessionId = sessionId
            self.vocabularyName = vocabularyName
        }

        public func validate(name: String) throws {
            try validate(self.mediaSampleRateHertz, name: "mediaSampleRateHertz", parent: name, max: 48000)
            try validate(self.mediaSampleRateHertz, name: "mediaSampleRateHertz", parent: name, min: 8000)
            try validate(self.sessionId, name: "sessionId", parent: name, pattern: "[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}")
            try validate(self.vocabularyName, name: "vocabularyName", parent: name, max: 200)
            try validate(self.vocabularyName, name: "vocabularyName", parent: name, min: 1)
            try validate(self.vocabularyName, name: "vocabularyName", parent: name, pattern: "^[0-9a-zA-Z._-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case audioStream = "AudioStream"
        }
    }

    public struct StartStreamTranscriptionResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let payloadPath: String = "transcriptResultStream"
        public static var _encoding = [
            AWSMemberEncoding(label: "languageCode", location: .header(locationName: "x-amzn-transcribe-language-code")), 
            AWSMemberEncoding(label: "mediaEncoding", location: .header(locationName: "x-amzn-transcribe-media-encoding")), 
            AWSMemberEncoding(label: "mediaSampleRateHertz", location: .header(locationName: "x-amzn-transcribe-sample-rate")), 
            AWSMemberEncoding(label: "requestId", location: .header(locationName: "x-amzn-request-id")), 
            AWSMemberEncoding(label: "sessionId", location: .header(locationName: "x-amzn-transcribe-session-id")), 
            AWSMemberEncoding(label: "transcriptResultStream", location: .body(locationName: "TranscriptResultStream")), 
            AWSMemberEncoding(label: "vocabularyName", location: .header(locationName: "x-amzn-transcribe-vocabulary-name"))
        ]

        /// The language code for the input audio stream.
        public let languageCode: LanguageCode?
        /// The encoding used for the input audio stream.
        public let mediaEncoding: MediaEncoding?
        /// The sample rate for the input audio stream. Use 8000 Hz for low quality audio and 16000 Hz for high quality audio.
        public let mediaSampleRateHertz: Int?
        /// An identifier for the streaming transcription.
        public let requestId: String?
        /// An identifier for a specific transcription session.
        public let sessionId: String?
        /// Represents the stream of transcription events from Amazon Transcribe to your application.
        public let transcriptResultStream: TranscriptResultStream?
        /// The name of the vocabulary used when processing the job.
        public let vocabularyName: String?

        public init(languageCode: LanguageCode? = nil, mediaEncoding: MediaEncoding? = nil, mediaSampleRateHertz: Int? = nil, requestId: String? = nil, sessionId: String? = nil, transcriptResultStream: TranscriptResultStream? = nil, vocabularyName: String? = nil) {
            self.languageCode = languageCode
            self.mediaEncoding = mediaEncoding
            self.mediaSampleRateHertz = mediaSampleRateHertz
            self.requestId = requestId
            self.sessionId = sessionId
            self.transcriptResultStream = transcriptResultStream
            self.vocabularyName = vocabularyName
        }

        private enum CodingKeys: String, CodingKey {
            case languageCode = "x-amzn-transcribe-language-code"
            case mediaEncoding = "x-amzn-transcribe-media-encoding"
            case mediaSampleRateHertz = "x-amzn-transcribe-sample-rate"
            case requestId = "x-amzn-request-id"
            case sessionId = "x-amzn-transcribe-session-id"
            case transcriptResultStream = "TranscriptResultStream"
            case vocabularyName = "x-amzn-transcribe-vocabulary-name"
        }
    }

    public struct Transcript: AWSDecodableShape {

        ///  Result objects that contain the results of transcribing a portion of the input audio stream. The array can be empty.
        public let results: [Result]?

        public init(results: [Result]? = nil) {
            self.results = results
        }

        private enum CodingKeys: String, CodingKey {
            case results = "Results"
        }
    }

    public struct TranscriptEvent: AWSDecodableShape {

        /// The transcription of the audio stream. The transcription is composed of all of the items in the results list.
        public let transcript: Transcript?

        public init(transcript: Transcript? = nil) {
            self.transcript = transcript
        }

        private enum CodingKeys: String, CodingKey {
            case transcript = "Transcript"
        }
    }

    public struct TranscriptResultStream: AWSDecodableShape {

        /// A client error occurred when the stream was created. Check the parameters of the request and try your request again.
        public let badRequestException: BadRequestException?
        /// A new stream started with the same session ID. The current stream has been terminated.
        public let conflictException: ConflictException?
        /// A problem occurred while processing the audio. Amazon Transcribe terminated processing.
        public let internalFailureException: InternalFailureException?
        /// Your client has exceeded one of the Amazon Transcribe limits, typically the limit on audio length. Break your audio stream into smaller chunks and try your request again.
        public let limitExceededException: LimitExceededException?
        /// Service is currently unavailable. Try your request later.
        public let serviceUnavailableException: ServiceUnavailableException?
        /// A portion of the transcription of the audio stream. Events are sent periodically from Amazon Transcribe to your application. The event can be a partial transcription of a section of the audio stream, or it can be the entire transcription of that portion of the audio stream. 
        public let transcriptEvent: TranscriptEvent?

        public init(badRequestException: BadRequestException? = nil, conflictException: ConflictException? = nil, internalFailureException: InternalFailureException? = nil, limitExceededException: LimitExceededException? = nil, serviceUnavailableException: ServiceUnavailableException? = nil, transcriptEvent: TranscriptEvent? = nil) {
            self.badRequestException = badRequestException
            self.conflictException = conflictException
            self.internalFailureException = internalFailureException
            self.limitExceededException = limitExceededException
            self.serviceUnavailableException = serviceUnavailableException
            self.transcriptEvent = transcriptEvent
        }

        private enum CodingKeys: String, CodingKey {
            case badRequestException = "BadRequestException"
            case conflictException = "ConflictException"
            case internalFailureException = "InternalFailureException"
            case limitExceededException = "LimitExceededException"
            case serviceUnavailableException = "ServiceUnavailableException"
            case transcriptEvent = "TranscriptEvent"
        }
    }
}
