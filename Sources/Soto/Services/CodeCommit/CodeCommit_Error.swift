//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

/// Error enum for CodeCommit
public struct CodeCommitErrorType: AWSErrorType {
    enum Code: String {
        case actorDoesNotExistException = "ActorDoesNotExistException"
        case approvalRuleContentRequiredException = "ApprovalRuleContentRequiredException"
        case approvalRuleDoesNotExistException = "ApprovalRuleDoesNotExistException"
        case approvalRuleNameAlreadyExistsException = "ApprovalRuleNameAlreadyExistsException"
        case approvalRuleNameRequiredException = "ApprovalRuleNameRequiredException"
        case approvalRuleTemplateContentRequiredException = "ApprovalRuleTemplateContentRequiredException"
        case approvalRuleTemplateDoesNotExistException = "ApprovalRuleTemplateDoesNotExistException"
        case approvalRuleTemplateInUseException = "ApprovalRuleTemplateInUseException"
        case approvalRuleTemplateNameAlreadyExistsException = "ApprovalRuleTemplateNameAlreadyExistsException"
        case approvalRuleTemplateNameRequiredException = "ApprovalRuleTemplateNameRequiredException"
        case approvalStateRequiredException = "ApprovalStateRequiredException"
        case authorDoesNotExistException = "AuthorDoesNotExistException"
        case beforeCommitIdAndAfterCommitIdAreSameException = "BeforeCommitIdAndAfterCommitIdAreSameException"
        case blobIdDoesNotExistException = "BlobIdDoesNotExistException"
        case blobIdRequiredException = "BlobIdRequiredException"
        case branchDoesNotExistException = "BranchDoesNotExistException"
        case branchNameExistsException = "BranchNameExistsException"
        case branchNameIsTagNameException = "BranchNameIsTagNameException"
        case branchNameRequiredException = "BranchNameRequiredException"
        case cannotDeleteApprovalRuleFromTemplateException = "CannotDeleteApprovalRuleFromTemplateException"
        case cannotModifyApprovalRuleFromTemplateException = "CannotModifyApprovalRuleFromTemplateException"
        case clientRequestTokenRequiredException = "ClientRequestTokenRequiredException"
        case commentContentRequiredException = "CommentContentRequiredException"
        case commentContentSizeLimitExceededException = "CommentContentSizeLimitExceededException"
        case commentDeletedException = "CommentDeletedException"
        case commentDoesNotExistException = "CommentDoesNotExistException"
        case commentIdRequiredException = "CommentIdRequiredException"
        case commentNotCreatedByCallerException = "CommentNotCreatedByCallerException"
        case commitDoesNotExistException = "CommitDoesNotExistException"
        case commitIdDoesNotExistException = "CommitIdDoesNotExistException"
        case commitIdRequiredException = "CommitIdRequiredException"
        case commitIdsLimitExceededException = "CommitIdsLimitExceededException"
        case commitIdsListRequiredException = "CommitIdsListRequiredException"
        case commitMessageLengthExceededException = "CommitMessageLengthExceededException"
        case commitRequiredException = "CommitRequiredException"
        case concurrentReferenceUpdateException = "ConcurrentReferenceUpdateException"
        case defaultBranchCannotBeDeletedException = "DefaultBranchCannotBeDeletedException"
        case directoryNameConflictsWithFileNameException = "DirectoryNameConflictsWithFileNameException"
        case encryptionIntegrityChecksFailedException = "EncryptionIntegrityChecksFailedException"
        case encryptionKeyAccessDeniedException = "EncryptionKeyAccessDeniedException"
        case encryptionKeyDisabledException = "EncryptionKeyDisabledException"
        case encryptionKeyNotFoundException = "EncryptionKeyNotFoundException"
        case encryptionKeyUnavailableException = "EncryptionKeyUnavailableException"
        case fileContentAndSourceFileSpecifiedException = "FileContentAndSourceFileSpecifiedException"
        case fileContentRequiredException = "FileContentRequiredException"
        case fileContentSizeLimitExceededException = "FileContentSizeLimitExceededException"
        case fileDoesNotExistException = "FileDoesNotExistException"
        case fileEntryRequiredException = "FileEntryRequiredException"
        case fileModeRequiredException = "FileModeRequiredException"
        case fileNameConflictsWithDirectoryNameException = "FileNameConflictsWithDirectoryNameException"
        case filePathConflictsWithSubmodulePathException = "FilePathConflictsWithSubmodulePathException"
        case fileTooLargeException = "FileTooLargeException"
        case folderContentSizeLimitExceededException = "FolderContentSizeLimitExceededException"
        case folderDoesNotExistException = "FolderDoesNotExistException"
        case idempotencyParameterMismatchException = "IdempotencyParameterMismatchException"
        case invalidActorArnException = "InvalidActorArnException"
        case invalidApprovalRuleContentException = "InvalidApprovalRuleContentException"
        case invalidApprovalRuleNameException = "InvalidApprovalRuleNameException"
        case invalidApprovalRuleTemplateContentException = "InvalidApprovalRuleTemplateContentException"
        case invalidApprovalRuleTemplateDescriptionException = "InvalidApprovalRuleTemplateDescriptionException"
        case invalidApprovalRuleTemplateNameException = "InvalidApprovalRuleTemplateNameException"
        case invalidApprovalStateException = "InvalidApprovalStateException"
        case invalidAuthorArnException = "InvalidAuthorArnException"
        case invalidBlobIdException = "InvalidBlobIdException"
        case invalidBranchNameException = "InvalidBranchNameException"
        case invalidClientRequestTokenException = "InvalidClientRequestTokenException"
        case invalidCommentIdException = "InvalidCommentIdException"
        case invalidCommitException = "InvalidCommitException"
        case invalidCommitIdException = "InvalidCommitIdException"
        case invalidConflictDetailLevelException = "InvalidConflictDetailLevelException"
        case invalidConflictResolutionException = "InvalidConflictResolutionException"
        case invalidConflictResolutionStrategyException = "InvalidConflictResolutionStrategyException"
        case invalidContinuationTokenException = "InvalidContinuationTokenException"
        case invalidDeletionParameterException = "InvalidDeletionParameterException"
        case invalidDescriptionException = "InvalidDescriptionException"
        case invalidDestinationCommitSpecifierException = "InvalidDestinationCommitSpecifierException"
        case invalidEmailException = "InvalidEmailException"
        case invalidFileLocationException = "InvalidFileLocationException"
        case invalidFileModeException = "InvalidFileModeException"
        case invalidFilePositionException = "InvalidFilePositionException"
        case invalidMaxConflictFilesException = "InvalidMaxConflictFilesException"
        case invalidMaxMergeHunksException = "InvalidMaxMergeHunksException"
        case invalidMaxResultsException = "InvalidMaxResultsException"
        case invalidMergeOptionException = "InvalidMergeOptionException"
        case invalidOrderException = "InvalidOrderException"
        case invalidOverrideStatusException = "InvalidOverrideStatusException"
        case invalidParentCommitIdException = "InvalidParentCommitIdException"
        case invalidPathException = "InvalidPathException"
        case invalidPullRequestEventTypeException = "InvalidPullRequestEventTypeException"
        case invalidPullRequestIdException = "InvalidPullRequestIdException"
        case invalidPullRequestStatusException = "InvalidPullRequestStatusException"
        case invalidPullRequestStatusUpdateException = "InvalidPullRequestStatusUpdateException"
        case invalidReactionUserArnException = "InvalidReactionUserArnException"
        case invalidReactionValueException = "InvalidReactionValueException"
        case invalidReferenceNameException = "InvalidReferenceNameException"
        case invalidRelativeFileVersionEnumException = "InvalidRelativeFileVersionEnumException"
        case invalidReplacementContentException = "InvalidReplacementContentException"
        case invalidReplacementTypeException = "InvalidReplacementTypeException"
        case invalidRepositoryDescriptionException = "InvalidRepositoryDescriptionException"
        case invalidRepositoryNameException = "InvalidRepositoryNameException"
        case invalidRepositoryTriggerBranchNameException = "InvalidRepositoryTriggerBranchNameException"
        case invalidRepositoryTriggerCustomDataException = "InvalidRepositoryTriggerCustomDataException"
        case invalidRepositoryTriggerDestinationArnException = "InvalidRepositoryTriggerDestinationArnException"
        case invalidRepositoryTriggerEventsException = "InvalidRepositoryTriggerEventsException"
        case invalidRepositoryTriggerNameException = "InvalidRepositoryTriggerNameException"
        case invalidRepositoryTriggerRegionException = "InvalidRepositoryTriggerRegionException"
        case invalidResourceArnException = "InvalidResourceArnException"
        case invalidRevisionIdException = "InvalidRevisionIdException"
        case invalidRuleContentSha256Exception = "InvalidRuleContentSha256Exception"
        case invalidSortByException = "InvalidSortByException"
        case invalidSourceCommitSpecifierException = "InvalidSourceCommitSpecifierException"
        case invalidSystemTagUsageException = "InvalidSystemTagUsageException"
        case invalidTagKeysListException = "InvalidTagKeysListException"
        case invalidTagsMapException = "InvalidTagsMapException"
        case invalidTargetBranchException = "InvalidTargetBranchException"
        case invalidTargetException = "InvalidTargetException"
        case invalidTargetsException = "InvalidTargetsException"
        case invalidTitleException = "InvalidTitleException"
        case manualMergeRequiredException = "ManualMergeRequiredException"
        case maximumBranchesExceededException = "MaximumBranchesExceededException"
        case maximumConflictResolutionEntriesExceededException = "MaximumConflictResolutionEntriesExceededException"
        case maximumFileContentToLoadExceededException = "MaximumFileContentToLoadExceededException"
        case maximumFileEntriesExceededException = "MaximumFileEntriesExceededException"
        case maximumItemsToCompareExceededException = "MaximumItemsToCompareExceededException"
        case maximumNumberOfApprovalsExceededException = "MaximumNumberOfApprovalsExceededException"
        case maximumOpenPullRequestsExceededException = "MaximumOpenPullRequestsExceededException"
        case maximumRepositoryNamesExceededException = "MaximumRepositoryNamesExceededException"
        case maximumRepositoryTriggersExceededException = "MaximumRepositoryTriggersExceededException"
        case maximumRuleTemplatesAssociatedWithRepositoryException = "MaximumRuleTemplatesAssociatedWithRepositoryException"
        case mergeOptionRequiredException = "MergeOptionRequiredException"
        case multipleConflictResolutionEntriesException = "MultipleConflictResolutionEntriesException"
        case multipleRepositoriesInPullRequestException = "MultipleRepositoriesInPullRequestException"
        case nameLengthExceededException = "NameLengthExceededException"
        case noChangeException = "NoChangeException"
        case numberOfRuleTemplatesExceededException = "NumberOfRuleTemplatesExceededException"
        case numberOfRulesExceededException = "NumberOfRulesExceededException"
        case overrideAlreadySetException = "OverrideAlreadySetException"
        case overrideStatusRequiredException = "OverrideStatusRequiredException"
        case parentCommitDoesNotExistException = "ParentCommitDoesNotExistException"
        case parentCommitIdOutdatedException = "ParentCommitIdOutdatedException"
        case parentCommitIdRequiredException = "ParentCommitIdRequiredException"
        case pathDoesNotExistException = "PathDoesNotExistException"
        case pathRequiredException = "PathRequiredException"
        case pullRequestAlreadyClosedException = "PullRequestAlreadyClosedException"
        case pullRequestApprovalRulesNotSatisfiedException = "PullRequestApprovalRulesNotSatisfiedException"
        case pullRequestCannotBeApprovedByAuthorException = "PullRequestCannotBeApprovedByAuthorException"
        case pullRequestDoesNotExistException = "PullRequestDoesNotExistException"
        case pullRequestIdRequiredException = "PullRequestIdRequiredException"
        case pullRequestStatusRequiredException = "PullRequestStatusRequiredException"
        case putFileEntryConflictException = "PutFileEntryConflictException"
        case reactionLimitExceededException = "ReactionLimitExceededException"
        case reactionValueRequiredException = "ReactionValueRequiredException"
        case referenceDoesNotExistException = "ReferenceDoesNotExistException"
        case referenceNameRequiredException = "ReferenceNameRequiredException"
        case referenceTypeNotSupportedException = "ReferenceTypeNotSupportedException"
        case replacementContentRequiredException = "ReplacementContentRequiredException"
        case replacementTypeRequiredException = "ReplacementTypeRequiredException"
        case repositoryDoesNotExistException = "RepositoryDoesNotExistException"
        case repositoryLimitExceededException = "RepositoryLimitExceededException"
        case repositoryNameExistsException = "RepositoryNameExistsException"
        case repositoryNameRequiredException = "RepositoryNameRequiredException"
        case repositoryNamesRequiredException = "RepositoryNamesRequiredException"
        case repositoryNotAssociatedWithPullRequestException = "RepositoryNotAssociatedWithPullRequestException"
        case repositoryTriggerBranchNameListRequiredException = "RepositoryTriggerBranchNameListRequiredException"
        case repositoryTriggerDestinationArnRequiredException = "RepositoryTriggerDestinationArnRequiredException"
        case repositoryTriggerEventsListRequiredException = "RepositoryTriggerEventsListRequiredException"
        case repositoryTriggerNameRequiredException = "RepositoryTriggerNameRequiredException"
        case repositoryTriggersListRequiredException = "RepositoryTriggersListRequiredException"
        case resourceArnRequiredException = "ResourceArnRequiredException"
        case restrictedSourceFileException = "RestrictedSourceFileException"
        case revisionIdRequiredException = "RevisionIdRequiredException"
        case revisionNotCurrentException = "RevisionNotCurrentException"
        case sameFileContentException = "SameFileContentException"
        case samePathRequestException = "SamePathRequestException"
        case sourceAndDestinationAreSameException = "SourceAndDestinationAreSameException"
        case sourceFileOrContentRequiredException = "SourceFileOrContentRequiredException"
        case tagKeysListRequiredException = "TagKeysListRequiredException"
        case tagPolicyException = "TagPolicyException"
        case tagsMapRequiredException = "TagsMapRequiredException"
        case targetRequiredException = "TargetRequiredException"
        case targetsRequiredException = "TargetsRequiredException"
        case tipOfSourceReferenceIsDifferentException = "TipOfSourceReferenceIsDifferentException"
        case tipsDivergenceExceededException = "TipsDivergenceExceededException"
        case titleRequiredException = "TitleRequiredException"
        case tooManyTagsException = "TooManyTagsException"
    }

    private var error: Code
    public var message: String?

    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.message = message
    }

    internal init(_ error: Code) {
        self.error = error
        self.message = nil
    }

    public static var actorDoesNotExistException: Self { .init(.actorDoesNotExistException) }
    public static var approvalRuleContentRequiredException: Self { .init(.approvalRuleContentRequiredException) }
    public static var approvalRuleDoesNotExistException: Self { .init(.approvalRuleDoesNotExistException) }
    public static var approvalRuleNameAlreadyExistsException: Self { .init(.approvalRuleNameAlreadyExistsException) }
    public static var approvalRuleNameRequiredException: Self { .init(.approvalRuleNameRequiredException) }
    public static var approvalRuleTemplateContentRequiredException: Self { .init(.approvalRuleTemplateContentRequiredException) }
    public static var approvalRuleTemplateDoesNotExistException: Self { .init(.approvalRuleTemplateDoesNotExistException) }
    public static var approvalRuleTemplateInUseException: Self { .init(.approvalRuleTemplateInUseException) }
    public static var approvalRuleTemplateNameAlreadyExistsException: Self { .init(.approvalRuleTemplateNameAlreadyExistsException) }
    public static var approvalRuleTemplateNameRequiredException: Self { .init(.approvalRuleTemplateNameRequiredException) }
    public static var approvalStateRequiredException: Self { .init(.approvalStateRequiredException) }
    public static var authorDoesNotExistException: Self { .init(.authorDoesNotExistException) }
    public static var beforeCommitIdAndAfterCommitIdAreSameException: Self { .init(.beforeCommitIdAndAfterCommitIdAreSameException) }
    public static var blobIdDoesNotExistException: Self { .init(.blobIdDoesNotExistException) }
    public static var blobIdRequiredException: Self { .init(.blobIdRequiredException) }
    public static var branchDoesNotExistException: Self { .init(.branchDoesNotExistException) }
    public static var branchNameExistsException: Self { .init(.branchNameExistsException) }
    public static var branchNameIsTagNameException: Self { .init(.branchNameIsTagNameException) }
    public static var branchNameRequiredException: Self { .init(.branchNameRequiredException) }
    public static var cannotDeleteApprovalRuleFromTemplateException: Self { .init(.cannotDeleteApprovalRuleFromTemplateException) }
    public static var cannotModifyApprovalRuleFromTemplateException: Self { .init(.cannotModifyApprovalRuleFromTemplateException) }
    public static var clientRequestTokenRequiredException: Self { .init(.clientRequestTokenRequiredException) }
    public static var commentContentRequiredException: Self { .init(.commentContentRequiredException) }
    public static var commentContentSizeLimitExceededException: Self { .init(.commentContentSizeLimitExceededException) }
    public static var commentDeletedException: Self { .init(.commentDeletedException) }
    public static var commentDoesNotExistException: Self { .init(.commentDoesNotExistException) }
    public static var commentIdRequiredException: Self { .init(.commentIdRequiredException) }
    public static var commentNotCreatedByCallerException: Self { .init(.commentNotCreatedByCallerException) }
    public static var commitDoesNotExistException: Self { .init(.commitDoesNotExistException) }
    public static var commitIdDoesNotExistException: Self { .init(.commitIdDoesNotExistException) }
    public static var commitIdRequiredException: Self { .init(.commitIdRequiredException) }
    public static var commitIdsLimitExceededException: Self { .init(.commitIdsLimitExceededException) }
    public static var commitIdsListRequiredException: Self { .init(.commitIdsListRequiredException) }
    public static var commitMessageLengthExceededException: Self { .init(.commitMessageLengthExceededException) }
    public static var commitRequiredException: Self { .init(.commitRequiredException) }
    public static var concurrentReferenceUpdateException: Self { .init(.concurrentReferenceUpdateException) }
    public static var defaultBranchCannotBeDeletedException: Self { .init(.defaultBranchCannotBeDeletedException) }
    public static var directoryNameConflictsWithFileNameException: Self { .init(.directoryNameConflictsWithFileNameException) }
    public static var encryptionIntegrityChecksFailedException: Self { .init(.encryptionIntegrityChecksFailedException) }
    public static var encryptionKeyAccessDeniedException: Self { .init(.encryptionKeyAccessDeniedException) }
    public static var encryptionKeyDisabledException: Self { .init(.encryptionKeyDisabledException) }
    public static var encryptionKeyNotFoundException: Self { .init(.encryptionKeyNotFoundException) }
    public static var encryptionKeyUnavailableException: Self { .init(.encryptionKeyUnavailableException) }
    public static var fileContentAndSourceFileSpecifiedException: Self { .init(.fileContentAndSourceFileSpecifiedException) }
    public static var fileContentRequiredException: Self { .init(.fileContentRequiredException) }
    public static var fileContentSizeLimitExceededException: Self { .init(.fileContentSizeLimitExceededException) }
    public static var fileDoesNotExistException: Self { .init(.fileDoesNotExistException) }
    public static var fileEntryRequiredException: Self { .init(.fileEntryRequiredException) }
    public static var fileModeRequiredException: Self { .init(.fileModeRequiredException) }
    public static var fileNameConflictsWithDirectoryNameException: Self { .init(.fileNameConflictsWithDirectoryNameException) }
    public static var filePathConflictsWithSubmodulePathException: Self { .init(.filePathConflictsWithSubmodulePathException) }
    public static var fileTooLargeException: Self { .init(.fileTooLargeException) }
    public static var folderContentSizeLimitExceededException: Self { .init(.folderContentSizeLimitExceededException) }
    public static var folderDoesNotExistException: Self { .init(.folderDoesNotExistException) }
    public static var idempotencyParameterMismatchException: Self { .init(.idempotencyParameterMismatchException) }
    public static var invalidActorArnException: Self { .init(.invalidActorArnException) }
    public static var invalidApprovalRuleContentException: Self { .init(.invalidApprovalRuleContentException) }
    public static var invalidApprovalRuleNameException: Self { .init(.invalidApprovalRuleNameException) }
    public static var invalidApprovalRuleTemplateContentException: Self { .init(.invalidApprovalRuleTemplateContentException) }
    public static var invalidApprovalRuleTemplateDescriptionException: Self { .init(.invalidApprovalRuleTemplateDescriptionException) }
    public static var invalidApprovalRuleTemplateNameException: Self { .init(.invalidApprovalRuleTemplateNameException) }
    public static var invalidApprovalStateException: Self { .init(.invalidApprovalStateException) }
    public static var invalidAuthorArnException: Self { .init(.invalidAuthorArnException) }
    public static var invalidBlobIdException: Self { .init(.invalidBlobIdException) }
    public static var invalidBranchNameException: Self { .init(.invalidBranchNameException) }
    public static var invalidClientRequestTokenException: Self { .init(.invalidClientRequestTokenException) }
    public static var invalidCommentIdException: Self { .init(.invalidCommentIdException) }
    public static var invalidCommitException: Self { .init(.invalidCommitException) }
    public static var invalidCommitIdException: Self { .init(.invalidCommitIdException) }
    public static var invalidConflictDetailLevelException: Self { .init(.invalidConflictDetailLevelException) }
    public static var invalidConflictResolutionException: Self { .init(.invalidConflictResolutionException) }
    public static var invalidConflictResolutionStrategyException: Self { .init(.invalidConflictResolutionStrategyException) }
    public static var invalidContinuationTokenException: Self { .init(.invalidContinuationTokenException) }
    public static var invalidDeletionParameterException: Self { .init(.invalidDeletionParameterException) }
    public static var invalidDescriptionException: Self { .init(.invalidDescriptionException) }
    public static var invalidDestinationCommitSpecifierException: Self { .init(.invalidDestinationCommitSpecifierException) }
    public static var invalidEmailException: Self { .init(.invalidEmailException) }
    public static var invalidFileLocationException: Self { .init(.invalidFileLocationException) }
    public static var invalidFileModeException: Self { .init(.invalidFileModeException) }
    public static var invalidFilePositionException: Self { .init(.invalidFilePositionException) }
    public static var invalidMaxConflictFilesException: Self { .init(.invalidMaxConflictFilesException) }
    public static var invalidMaxMergeHunksException: Self { .init(.invalidMaxMergeHunksException) }
    public static var invalidMaxResultsException: Self { .init(.invalidMaxResultsException) }
    public static var invalidMergeOptionException: Self { .init(.invalidMergeOptionException) }
    public static var invalidOrderException: Self { .init(.invalidOrderException) }
    public static var invalidOverrideStatusException: Self { .init(.invalidOverrideStatusException) }
    public static var invalidParentCommitIdException: Self { .init(.invalidParentCommitIdException) }
    public static var invalidPathException: Self { .init(.invalidPathException) }
    public static var invalidPullRequestEventTypeException: Self { .init(.invalidPullRequestEventTypeException) }
    public static var invalidPullRequestIdException: Self { .init(.invalidPullRequestIdException) }
    public static var invalidPullRequestStatusException: Self { .init(.invalidPullRequestStatusException) }
    public static var invalidPullRequestStatusUpdateException: Self { .init(.invalidPullRequestStatusUpdateException) }
    public static var invalidReactionUserArnException: Self { .init(.invalidReactionUserArnException) }
    public static var invalidReactionValueException: Self { .init(.invalidReactionValueException) }
    public static var invalidReferenceNameException: Self { .init(.invalidReferenceNameException) }
    public static var invalidRelativeFileVersionEnumException: Self { .init(.invalidRelativeFileVersionEnumException) }
    public static var invalidReplacementContentException: Self { .init(.invalidReplacementContentException) }
    public static var invalidReplacementTypeException: Self { .init(.invalidReplacementTypeException) }
    public static var invalidRepositoryDescriptionException: Self { .init(.invalidRepositoryDescriptionException) }
    public static var invalidRepositoryNameException: Self { .init(.invalidRepositoryNameException) }
    public static var invalidRepositoryTriggerBranchNameException: Self { .init(.invalidRepositoryTriggerBranchNameException) }
    public static var invalidRepositoryTriggerCustomDataException: Self { .init(.invalidRepositoryTriggerCustomDataException) }
    public static var invalidRepositoryTriggerDestinationArnException: Self { .init(.invalidRepositoryTriggerDestinationArnException) }
    public static var invalidRepositoryTriggerEventsException: Self { .init(.invalidRepositoryTriggerEventsException) }
    public static var invalidRepositoryTriggerNameException: Self { .init(.invalidRepositoryTriggerNameException) }
    public static var invalidRepositoryTriggerRegionException: Self { .init(.invalidRepositoryTriggerRegionException) }
    public static var invalidResourceArnException: Self { .init(.invalidResourceArnException) }
    public static var invalidRevisionIdException: Self { .init(.invalidRevisionIdException) }
    public static var invalidRuleContentSha256Exception: Self { .init(.invalidRuleContentSha256Exception) }
    public static var invalidSortByException: Self { .init(.invalidSortByException) }
    public static var invalidSourceCommitSpecifierException: Self { .init(.invalidSourceCommitSpecifierException) }
    public static var invalidSystemTagUsageException: Self { .init(.invalidSystemTagUsageException) }
    public static var invalidTagKeysListException: Self { .init(.invalidTagKeysListException) }
    public static var invalidTagsMapException: Self { .init(.invalidTagsMapException) }
    public static var invalidTargetBranchException: Self { .init(.invalidTargetBranchException) }
    public static var invalidTargetException: Self { .init(.invalidTargetException) }
    public static var invalidTargetsException: Self { .init(.invalidTargetsException) }
    public static var invalidTitleException: Self { .init(.invalidTitleException) }
    public static var manualMergeRequiredException: Self { .init(.manualMergeRequiredException) }
    public static var maximumBranchesExceededException: Self { .init(.maximumBranchesExceededException) }
    public static var maximumConflictResolutionEntriesExceededException: Self { .init(.maximumConflictResolutionEntriesExceededException) }
    public static var maximumFileContentToLoadExceededException: Self { .init(.maximumFileContentToLoadExceededException) }
    public static var maximumFileEntriesExceededException: Self { .init(.maximumFileEntriesExceededException) }
    public static var maximumItemsToCompareExceededException: Self { .init(.maximumItemsToCompareExceededException) }
    public static var maximumNumberOfApprovalsExceededException: Self { .init(.maximumNumberOfApprovalsExceededException) }
    public static var maximumOpenPullRequestsExceededException: Self { .init(.maximumOpenPullRequestsExceededException) }
    public static var maximumRepositoryNamesExceededException: Self { .init(.maximumRepositoryNamesExceededException) }
    public static var maximumRepositoryTriggersExceededException: Self { .init(.maximumRepositoryTriggersExceededException) }
    public static var maximumRuleTemplatesAssociatedWithRepositoryException: Self { .init(.maximumRuleTemplatesAssociatedWithRepositoryException) }
    public static var mergeOptionRequiredException: Self { .init(.mergeOptionRequiredException) }
    public static var multipleConflictResolutionEntriesException: Self { .init(.multipleConflictResolutionEntriesException) }
    public static var multipleRepositoriesInPullRequestException: Self { .init(.multipleRepositoriesInPullRequestException) }
    public static var nameLengthExceededException: Self { .init(.nameLengthExceededException) }
    public static var noChangeException: Self { .init(.noChangeException) }
    public static var numberOfRuleTemplatesExceededException: Self { .init(.numberOfRuleTemplatesExceededException) }
    public static var numberOfRulesExceededException: Self { .init(.numberOfRulesExceededException) }
    public static var overrideAlreadySetException: Self { .init(.overrideAlreadySetException) }
    public static var overrideStatusRequiredException: Self { .init(.overrideStatusRequiredException) }
    public static var parentCommitDoesNotExistException: Self { .init(.parentCommitDoesNotExistException) }
    public static var parentCommitIdOutdatedException: Self { .init(.parentCommitIdOutdatedException) }
    public static var parentCommitIdRequiredException: Self { .init(.parentCommitIdRequiredException) }
    public static var pathDoesNotExistException: Self { .init(.pathDoesNotExistException) }
    public static var pathRequiredException: Self { .init(.pathRequiredException) }
    public static var pullRequestAlreadyClosedException: Self { .init(.pullRequestAlreadyClosedException) }
    public static var pullRequestApprovalRulesNotSatisfiedException: Self { .init(.pullRequestApprovalRulesNotSatisfiedException) }
    public static var pullRequestCannotBeApprovedByAuthorException: Self { .init(.pullRequestCannotBeApprovedByAuthorException) }
    public static var pullRequestDoesNotExistException: Self { .init(.pullRequestDoesNotExistException) }
    public static var pullRequestIdRequiredException: Self { .init(.pullRequestIdRequiredException) }
    public static var pullRequestStatusRequiredException: Self { .init(.pullRequestStatusRequiredException) }
    public static var putFileEntryConflictException: Self { .init(.putFileEntryConflictException) }
    public static var reactionLimitExceededException: Self { .init(.reactionLimitExceededException) }
    public static var reactionValueRequiredException: Self { .init(.reactionValueRequiredException) }
    public static var referenceDoesNotExistException: Self { .init(.referenceDoesNotExistException) }
    public static var referenceNameRequiredException: Self { .init(.referenceNameRequiredException) }
    public static var referenceTypeNotSupportedException: Self { .init(.referenceTypeNotSupportedException) }
    public static var replacementContentRequiredException: Self { .init(.replacementContentRequiredException) }
    public static var replacementTypeRequiredException: Self { .init(.replacementTypeRequiredException) }
    public static var repositoryDoesNotExistException: Self { .init(.repositoryDoesNotExistException) }
    public static var repositoryLimitExceededException: Self { .init(.repositoryLimitExceededException) }
    public static var repositoryNameExistsException: Self { .init(.repositoryNameExistsException) }
    public static var repositoryNameRequiredException: Self { .init(.repositoryNameRequiredException) }
    public static var repositoryNamesRequiredException: Self { .init(.repositoryNamesRequiredException) }
    public static var repositoryNotAssociatedWithPullRequestException: Self { .init(.repositoryNotAssociatedWithPullRequestException) }
    public static var repositoryTriggerBranchNameListRequiredException: Self { .init(.repositoryTriggerBranchNameListRequiredException) }
    public static var repositoryTriggerDestinationArnRequiredException: Self { .init(.repositoryTriggerDestinationArnRequiredException) }
    public static var repositoryTriggerEventsListRequiredException: Self { .init(.repositoryTriggerEventsListRequiredException) }
    public static var repositoryTriggerNameRequiredException: Self { .init(.repositoryTriggerNameRequiredException) }
    public static var repositoryTriggersListRequiredException: Self { .init(.repositoryTriggersListRequiredException) }
    public static var resourceArnRequiredException: Self { .init(.resourceArnRequiredException) }
    public static var restrictedSourceFileException: Self { .init(.restrictedSourceFileException) }
    public static var revisionIdRequiredException: Self { .init(.revisionIdRequiredException) }
    public static var revisionNotCurrentException: Self { .init(.revisionNotCurrentException) }
    public static var sameFileContentException: Self { .init(.sameFileContentException) }
    public static var samePathRequestException: Self { .init(.samePathRequestException) }
    public static var sourceAndDestinationAreSameException: Self { .init(.sourceAndDestinationAreSameException) }
    public static var sourceFileOrContentRequiredException: Self { .init(.sourceFileOrContentRequiredException) }
    public static var tagKeysListRequiredException: Self { .init(.tagKeysListRequiredException) }
    public static var tagPolicyException: Self { .init(.tagPolicyException) }
    public static var tagsMapRequiredException: Self { .init(.tagsMapRequiredException) }
    public static var targetRequiredException: Self { .init(.targetRequiredException) }
    public static var targetsRequiredException: Self { .init(.targetsRequiredException) }
    public static var tipOfSourceReferenceIsDifferentException: Self { .init(.tipOfSourceReferenceIsDifferentException) }
    public static var tipsDivergenceExceededException: Self { .init(.tipsDivergenceExceededException) }
    public static var titleRequiredException: Self { .init(.titleRequiredException) }
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
}

extension CodeCommitErrorType: Equatable {
    public static func == (lhs: CodeCommitErrorType, rhs: CodeCommitErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CodeCommitErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
