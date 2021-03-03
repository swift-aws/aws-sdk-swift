//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

/// Error enum for Polly
public struct PollyErrorType: AWSErrorType {
    enum Code: String {
        case engineNotSupportedException = "EngineNotSupportedException"
        case invalidLexiconException = "InvalidLexiconException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidS3BucketException = "InvalidS3BucketException"
        case invalidS3KeyException = "InvalidS3KeyException"
        case invalidSampleRateException = "InvalidSampleRateException"
        case invalidSnsTopicArnException = "InvalidSnsTopicArnException"
        case invalidSsmlException = "InvalidSsmlException"
        case invalidTaskIdException = "InvalidTaskIdException"
        case languageNotSupportedException = "LanguageNotSupportedException"
        case lexiconNotFoundException = "LexiconNotFoundException"
        case lexiconSizeExceededException = "LexiconSizeExceededException"
        case marksNotSupportedForFormatException = "MarksNotSupportedForFormatException"
        case maxLexemeLengthExceededException = "MaxLexemeLengthExceededException"
        case maxLexiconsNumberExceededException = "MaxLexiconsNumberExceededException"
        case serviceFailureException = "ServiceFailureException"
        case ssmlMarksNotSupportedForTextTypeException = "SsmlMarksNotSupportedForTextTypeException"
        case synthesisTaskNotFoundException = "SynthesisTaskNotFoundException"
        case textLengthExceededException = "TextLengthExceededException"
        case unsupportedPlsAlphabetException = "UnsupportedPlsAlphabetException"
        case unsupportedPlsLanguageException = "UnsupportedPlsLanguageException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Polly
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// This engine is not compatible with the voice that you have designated. Choose a new voice that is compatible with the engine or change the engine and restart the operation.
    public static var engineNotSupportedException: Self { .init(.engineNotSupportedException) }
    /// Amazon Polly can't find the specified lexicon. Verify that the lexicon's name is spelled correctly, and then try again.
    public static var invalidLexiconException: Self { .init(.invalidLexiconException) }
    /// The NextToken is invalid. Verify that it's spelled correctly, and then try again.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// The provided Amazon S3 bucket name is invalid. Please check your input with S3 bucket naming requirements and try again.
    public static var invalidS3BucketException: Self { .init(.invalidS3BucketException) }
    /// The provided Amazon S3 key prefix is invalid. Please provide a valid S3 object key name.
    public static var invalidS3KeyException: Self { .init(.invalidS3KeyException) }
    /// The specified sample rate is not valid.
    public static var invalidSampleRateException: Self { .init(.invalidSampleRateException) }
    /// The provided SNS topic ARN is invalid. Please provide a valid SNS topic ARN and try again.
    public static var invalidSnsTopicArnException: Self { .init(.invalidSnsTopicArnException) }
    /// The SSML you provided is invalid. Verify the SSML syntax, spelling of tags and values, and then try again.
    public static var invalidSsmlException: Self { .init(.invalidSsmlException) }
    /// The provided Task ID is not valid. Please provide a valid Task ID and try again.
    public static var invalidTaskIdException: Self { .init(.invalidTaskIdException) }
    /// The language specified is not currently supported by Amazon Polly in this capacity.
    public static var languageNotSupportedException: Self { .init(.languageNotSupportedException) }
    /// Amazon Polly can't find the specified lexicon. This could be caused by a lexicon that is missing, its name is misspelled or specifying a lexicon that is in a different region. Verify that the lexicon exists, is in the region (see ListLexicons) and that you spelled its name is spelled correctly. Then try again.
    public static var lexiconNotFoundException: Self { .init(.lexiconNotFoundException) }
    /// The maximum size of the specified lexicon would be exceeded by this operation.
    public static var lexiconSizeExceededException: Self { .init(.lexiconSizeExceededException) }
    /// Speech marks are not supported for the OutputFormat selected. Speech marks are only available for content in json format.
    public static var marksNotSupportedForFormatException: Self { .init(.marksNotSupportedForFormatException) }
    /// The maximum size of the lexeme would be exceeded by this operation.
    public static var maxLexemeLengthExceededException: Self { .init(.maxLexemeLengthExceededException) }
    /// The maximum number of lexicons would be exceeded by this operation.
    public static var maxLexiconsNumberExceededException: Self { .init(.maxLexiconsNumberExceededException) }
    /// An unknown condition has caused a service failure.
    public static var serviceFailureException: Self { .init(.serviceFailureException) }
    /// SSML speech marks are not supported for plain text-type input.
    public static var ssmlMarksNotSupportedForTextTypeException: Self { .init(.ssmlMarksNotSupportedForTextTypeException) }
    /// The Speech Synthesis task with requested Task ID cannot be found.
    public static var synthesisTaskNotFoundException: Self { .init(.synthesisTaskNotFoundException) }
    /// The value of the "Text" parameter is longer than the accepted limits. For the SynthesizeSpeech API, the limit for input text is a maximum of 6000 characters total, of which no more than 3000 can be billed characters. For the StartSpeechSynthesisTask API, the maximum is 200,000 characters, of which no more than 100,000 can be billed characters. SSML tags are not counted as billed characters.
    public static var textLengthExceededException: Self { .init(.textLengthExceededException) }
    /// The alphabet specified by the lexicon is not a supported alphabet. Valid values are x-sampa and ipa.
    public static var unsupportedPlsAlphabetException: Self { .init(.unsupportedPlsAlphabetException) }
    /// The language specified in the lexicon is unsupported. For a list of supported languages, see Lexicon Attributes.
    public static var unsupportedPlsLanguageException: Self { .init(.unsupportedPlsLanguageException) }
}

extension PollyErrorType: Equatable {
    public static func == (lhs: PollyErrorType, rhs: PollyErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension PollyErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
