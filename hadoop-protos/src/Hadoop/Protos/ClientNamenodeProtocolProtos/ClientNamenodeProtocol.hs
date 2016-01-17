{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.ClientNamenodeProtocol
       (ClientNamenodeProtocol, clientNamenodeProtocol, GetBlockLocations, GetServerDefaults, Create, Append, SetReplication,
        SetStoragePolicy, GetStoragePolicy, GetStoragePolicies, SetPermission, SetOwner, AbandonBlock, AddBlock,
        GetAdditionalDatanode, Complete, ReportBadBlocks, Concat, Truncate, Rename, Rename2, Delete, Mkdirs, GetListing, RenewLease,
        RecoverLease, GetFsStats, GetDatanodeReport, GetDatanodeStorageReport, GetPreferredBlockSize, SetSafeMode, SaveNamespace,
        RollEdits, RestoreFailedStorage, RefreshNodes, FinalizeUpgrade, RollingUpgrade, ListCorruptFileBlocks, MetaSave,
        GetFileInfo, AddCacheDirective, ModifyCacheDirective, RemoveCacheDirective, ListCacheDirectives, AddCachePool,
        ModifyCachePool, RemoveCachePool, ListCachePools, GetFileLinkInfo, GetContentSummary, SetQuota, Fsync, SetTimes,
        CreateSymlink, GetLinkTarget, UpdateBlockForPipeline, UpdatePipeline, GetDelegationToken, RenewDelegationToken,
        CancelDelegationToken, SetBalancerBandwidth, GetDataEncryptionKey, CreateSnapshot, RenameSnapshot, AllowSnapshot,
        DisallowSnapshot, GetSnapshottableDirListing, DeleteSnapshot, GetSnapshotDiffReport, IsFileClosed, ModifyAclEntries,
        RemoveAclEntries, RemoveDefaultAcl, RemoveAcl, SetAcl, GetAclStatus, SetXAttr, GetXAttrs, ListXAttrs, RemoveXAttr,
        CheckAccess, CreateEncryptionZone, ListEncryptionZones, GetEZForPath, GetCurrentEditLogTxid, GetEditsFromTxid,
        getBlockLocations, getServerDefaults, create, append, setReplication, setStoragePolicy, getStoragePolicy,
        getStoragePolicies, setPermission, setOwner, abandonBlock, addBlock, getAdditionalDatanode, complete, reportBadBlocks,
        concat, truncate, rename, rename2, delete, mkdirs, getListing, renewLease, recoverLease, getFsStats, getDatanodeReport,
        getDatanodeStorageReport, getPreferredBlockSize, setSafeMode, saveNamespace, rollEdits, restoreFailedStorage, refreshNodes,
        finalizeUpgrade, rollingUpgrade, listCorruptFileBlocks, metaSave, getFileInfo, addCacheDirective, modifyCacheDirective,
        removeCacheDirective, listCacheDirectives, addCachePool, modifyCachePool, removeCachePool, listCachePools, getFileLinkInfo,
        getContentSummary, setQuota, fsync, setTimes, createSymlink, getLinkTarget, updateBlockForPipeline, updatePipeline,
        getDelegationToken, renewDelegationToken, cancelDelegationToken, setBalancerBandwidth, getDataEncryptionKey, createSnapshot,
        renameSnapshot, allowSnapshot, disallowSnapshot, getSnapshottableDirListing, deleteSnapshot, getSnapshotDiffReport,
        isFileClosed, modifyAclEntries, removeAclEntries, removeDefaultAcl, removeAcl, setAcl, getAclStatus, setXAttr, getXAttrs,
        listXAttrs, removeXAttr, checkAccess, createEncryptionZone, listEncryptionZones, getEZForPath, getCurrentEditLogTxid,
        getEditsFromTxid)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetBlockLocationsRequestProto as ClientNamenodeProtocolProtos
       (GetBlockLocationsRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetServerDefaultsRequestProto as ClientNamenodeProtocolProtos
       (GetServerDefaultsRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CreateRequestProto as ClientNamenodeProtocolProtos (CreateRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.AppendRequestProto as ClientNamenodeProtocolProtos (AppendRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetReplicationRequestProto as ClientNamenodeProtocolProtos
       (SetReplicationRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetStoragePolicyRequestProto as ClientNamenodeProtocolProtos
       (SetStoragePolicyRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetStoragePolicyRequestProto as ClientNamenodeProtocolProtos
       (GetStoragePolicyRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetStoragePoliciesRequestProto as ClientNamenodeProtocolProtos
       (GetStoragePoliciesRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetPermissionRequestProto as ClientNamenodeProtocolProtos
       (SetPermissionRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetOwnerRequestProto as ClientNamenodeProtocolProtos
       (SetOwnerRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.AbandonBlockRequestProto as ClientNamenodeProtocolProtos
       (AbandonBlockRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.AddBlockRequestProto as ClientNamenodeProtocolProtos
       (AddBlockRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetAdditionalDatanodeRequestProto as ClientNamenodeProtocolProtos
       (GetAdditionalDatanodeRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CompleteRequestProto as ClientNamenodeProtocolProtos
       (CompleteRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.ReportBadBlocksRequestProto as ClientNamenodeProtocolProtos
       (ReportBadBlocksRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.ConcatRequestProto as ClientNamenodeProtocolProtos (ConcatRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.TruncateRequestProto as ClientNamenodeProtocolProtos
       (TruncateRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RenameRequestProto as ClientNamenodeProtocolProtos (RenameRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.Rename2RequestProto as ClientNamenodeProtocolProtos
       (Rename2RequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.DeleteRequestProto as ClientNamenodeProtocolProtos (DeleteRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.MkdirsRequestProto as ClientNamenodeProtocolProtos (MkdirsRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetListingRequestProto as ClientNamenodeProtocolProtos
       (GetListingRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RenewLeaseRequestProto as ClientNamenodeProtocolProtos
       (RenewLeaseRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RecoverLeaseRequestProto as ClientNamenodeProtocolProtos
       (RecoverLeaseRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetFsStatusRequestProto as ClientNamenodeProtocolProtos
       (GetFsStatusRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetDatanodeReportRequestProto as ClientNamenodeProtocolProtos
       (GetDatanodeReportRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetDatanodeStorageReportRequestProto as ClientNamenodeProtocolProtos
       (GetDatanodeStorageReportRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetPreferredBlockSizeRequestProto as ClientNamenodeProtocolProtos
       (GetPreferredBlockSizeRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetSafeModeRequestProto as ClientNamenodeProtocolProtos
       (SetSafeModeRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SaveNamespaceRequestProto as ClientNamenodeProtocolProtos
       (SaveNamespaceRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RollEditsRequestProto as ClientNamenodeProtocolProtos
       (RollEditsRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RestoreFailedStorageRequestProto as ClientNamenodeProtocolProtos
       (RestoreFailedStorageRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RefreshNodesRequestProto as ClientNamenodeProtocolProtos
       (RefreshNodesRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.FinalizeUpgradeRequestProto as ClientNamenodeProtocolProtos
       (FinalizeUpgradeRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RollingUpgradeRequestProto as ClientNamenodeProtocolProtos
       (RollingUpgradeRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.ListCorruptFileBlocksRequestProto as ClientNamenodeProtocolProtos
       (ListCorruptFileBlocksRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.MetaSaveRequestProto as ClientNamenodeProtocolProtos
       (MetaSaveRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetFileInfoRequestProto as ClientNamenodeProtocolProtos
       (GetFileInfoRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.AddCacheDirectiveRequestProto as ClientNamenodeProtocolProtos
       (AddCacheDirectiveRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.ModifyCacheDirectiveRequestProto as ClientNamenodeProtocolProtos
       (ModifyCacheDirectiveRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RemoveCacheDirectiveRequestProto as ClientNamenodeProtocolProtos
       (RemoveCacheDirectiveRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.ListCacheDirectivesRequestProto as ClientNamenodeProtocolProtos
       (ListCacheDirectivesRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.AddCachePoolRequestProto as ClientNamenodeProtocolProtos
       (AddCachePoolRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.ModifyCachePoolRequestProto as ClientNamenodeProtocolProtos
       (ModifyCachePoolRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RemoveCachePoolRequestProto as ClientNamenodeProtocolProtos
       (RemoveCachePoolRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.ListCachePoolsRequestProto as ClientNamenodeProtocolProtos
       (ListCachePoolsRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetFileLinkInfoRequestProto as ClientNamenodeProtocolProtos
       (GetFileLinkInfoRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetContentSummaryRequestProto as ClientNamenodeProtocolProtos
       (GetContentSummaryRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetQuotaRequestProto as ClientNamenodeProtocolProtos
       (SetQuotaRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.FsyncRequestProto as ClientNamenodeProtocolProtos (FsyncRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetTimesRequestProto as ClientNamenodeProtocolProtos
       (SetTimesRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CreateSymlinkRequestProto as ClientNamenodeProtocolProtos
       (CreateSymlinkRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetLinkTargetRequestProto as ClientNamenodeProtocolProtos
       (GetLinkTargetRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.UpdateBlockForPipelineRequestProto as ClientNamenodeProtocolProtos
       (UpdateBlockForPipelineRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.UpdatePipelineRequestProto as ClientNamenodeProtocolProtos
       (UpdatePipelineRequestProto)
import qualified Hadoop.Protos.SecurityProtos.GetDelegationTokenRequestProto as SecurityProtos (GetDelegationTokenRequestProto)
import qualified Hadoop.Protos.SecurityProtos.RenewDelegationTokenRequestProto as SecurityProtos (RenewDelegationTokenRequestProto)
import qualified Hadoop.Protos.SecurityProtos.CancelDelegationTokenRequestProto as SecurityProtos
       (CancelDelegationTokenRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetBalancerBandwidthRequestProto as ClientNamenodeProtocolProtos
       (SetBalancerBandwidthRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetDataEncryptionKeyRequestProto as ClientNamenodeProtocolProtos
       (GetDataEncryptionKeyRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CreateSnapshotRequestProto as ClientNamenodeProtocolProtos
       (CreateSnapshotRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RenameSnapshotRequestProto as ClientNamenodeProtocolProtos
       (RenameSnapshotRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.AllowSnapshotRequestProto as ClientNamenodeProtocolProtos
       (AllowSnapshotRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.DisallowSnapshotRequestProto as ClientNamenodeProtocolProtos
       (DisallowSnapshotRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetSnapshottableDirListingRequestProto as ClientNamenodeProtocolProtos
       (GetSnapshottableDirListingRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.DeleteSnapshotRequestProto as ClientNamenodeProtocolProtos
       (DeleteSnapshotRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetSnapshotDiffReportRequestProto as ClientNamenodeProtocolProtos
       (GetSnapshotDiffReportRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.IsFileClosedRequestProto as ClientNamenodeProtocolProtos
       (IsFileClosedRequestProto)
import qualified Hadoop.Protos.AclProtos.ModifyAclEntriesRequestProto as AclProtos (ModifyAclEntriesRequestProto)
import qualified Hadoop.Protos.AclProtos.RemoveAclEntriesRequestProto as AclProtos (RemoveAclEntriesRequestProto)
import qualified Hadoop.Protos.AclProtos.RemoveDefaultAclRequestProto as AclProtos (RemoveDefaultAclRequestProto)
import qualified Hadoop.Protos.AclProtos.RemoveAclRequestProto as AclProtos (RemoveAclRequestProto)
import qualified Hadoop.Protos.AclProtos.SetAclRequestProto as AclProtos (SetAclRequestProto)
import qualified Hadoop.Protos.AclProtos.GetAclStatusRequestProto as AclProtos (GetAclStatusRequestProto)
import qualified Hadoop.Protos.XAttrProtos.SetXAttrRequestProto as XAttrProtos (SetXAttrRequestProto)
import qualified Hadoop.Protos.XAttrProtos.GetXAttrsRequestProto as XAttrProtos (GetXAttrsRequestProto)
import qualified Hadoop.Protos.XAttrProtos.ListXAttrsRequestProto as XAttrProtos (ListXAttrsRequestProto)
import qualified Hadoop.Protos.XAttrProtos.RemoveXAttrRequestProto as XAttrProtos (RemoveXAttrRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CheckAccessRequestProto as ClientNamenodeProtocolProtos
       (CheckAccessRequestProto)
import qualified Hadoop.Protos.EncryptionZonesProtos.CreateEncryptionZoneRequestProto as EncryptionZonesProtos
       (CreateEncryptionZoneRequestProto)
import qualified Hadoop.Protos.EncryptionZonesProtos.ListEncryptionZonesRequestProto as EncryptionZonesProtos
       (ListEncryptionZonesRequestProto)
import qualified Hadoop.Protos.EncryptionZonesProtos.GetEZForPathRequestProto as EncryptionZonesProtos (GetEZForPathRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetCurrentEditLogTxidRequestProto as ClientNamenodeProtocolProtos
       (GetCurrentEditLogTxidRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetEditsFromTxidRequestProto as ClientNamenodeProtocolProtos
       (GetEditsFromTxidRequestProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetBlockLocationsResponseProto as ClientNamenodeProtocolProtos
       (GetBlockLocationsResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetServerDefaultsResponseProto as ClientNamenodeProtocolProtos
       (GetServerDefaultsResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CreateResponseProto as ClientNamenodeProtocolProtos
       (CreateResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.AppendResponseProto as ClientNamenodeProtocolProtos
       (AppendResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetReplicationResponseProto as ClientNamenodeProtocolProtos
       (SetReplicationResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetStoragePolicyResponseProto as ClientNamenodeProtocolProtos
       (SetStoragePolicyResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetStoragePolicyResponseProto as ClientNamenodeProtocolProtos
       (GetStoragePolicyResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetStoragePoliciesResponseProto as ClientNamenodeProtocolProtos
       (GetStoragePoliciesResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetPermissionResponseProto as ClientNamenodeProtocolProtos
       (SetPermissionResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetOwnerResponseProto as ClientNamenodeProtocolProtos
       (SetOwnerResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.AbandonBlockResponseProto as ClientNamenodeProtocolProtos
       (AbandonBlockResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.AddBlockResponseProto as ClientNamenodeProtocolProtos
       (AddBlockResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetAdditionalDatanodeResponseProto as ClientNamenodeProtocolProtos
       (GetAdditionalDatanodeResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CompleteResponseProto as ClientNamenodeProtocolProtos
       (CompleteResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.ReportBadBlocksResponseProto as ClientNamenodeProtocolProtos
       (ReportBadBlocksResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.ConcatResponseProto as ClientNamenodeProtocolProtos
       (ConcatResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.TruncateResponseProto as ClientNamenodeProtocolProtos
       (TruncateResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RenameResponseProto as ClientNamenodeProtocolProtos
       (RenameResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.Rename2ResponseProto as ClientNamenodeProtocolProtos
       (Rename2ResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.DeleteResponseProto as ClientNamenodeProtocolProtos
       (DeleteResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.MkdirsResponseProto as ClientNamenodeProtocolProtos
       (MkdirsResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetListingResponseProto as ClientNamenodeProtocolProtos
       (GetListingResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RenewLeaseResponseProto as ClientNamenodeProtocolProtos
       (RenewLeaseResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RecoverLeaseResponseProto as ClientNamenodeProtocolProtos
       (RecoverLeaseResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetFsStatsResponseProto as ClientNamenodeProtocolProtos
       (GetFsStatsResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetDatanodeReportResponseProto as ClientNamenodeProtocolProtos
       (GetDatanodeReportResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetDatanodeStorageReportResponseProto as ClientNamenodeProtocolProtos
       (GetDatanodeStorageReportResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetPreferredBlockSizeResponseProto as ClientNamenodeProtocolProtos
       (GetPreferredBlockSizeResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetSafeModeResponseProto as ClientNamenodeProtocolProtos
       (SetSafeModeResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SaveNamespaceResponseProto as ClientNamenodeProtocolProtos
       (SaveNamespaceResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RollEditsResponseProto as ClientNamenodeProtocolProtos
       (RollEditsResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RestoreFailedStorageResponseProto as ClientNamenodeProtocolProtos
       (RestoreFailedStorageResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RefreshNodesResponseProto as ClientNamenodeProtocolProtos
       (RefreshNodesResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.FinalizeUpgradeResponseProto as ClientNamenodeProtocolProtos
       (FinalizeUpgradeResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RollingUpgradeResponseProto as ClientNamenodeProtocolProtos
       (RollingUpgradeResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.ListCorruptFileBlocksResponseProto as ClientNamenodeProtocolProtos
       (ListCorruptFileBlocksResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.MetaSaveResponseProto as ClientNamenodeProtocolProtos
       (MetaSaveResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetFileInfoResponseProto as ClientNamenodeProtocolProtos
       (GetFileInfoResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.AddCacheDirectiveResponseProto as ClientNamenodeProtocolProtos
       (AddCacheDirectiveResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.ModifyCacheDirectiveResponseProto as ClientNamenodeProtocolProtos
       (ModifyCacheDirectiveResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RemoveCacheDirectiveResponseProto as ClientNamenodeProtocolProtos
       (RemoveCacheDirectiveResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.ListCacheDirectivesResponseProto as ClientNamenodeProtocolProtos
       (ListCacheDirectivesResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.AddCachePoolResponseProto as ClientNamenodeProtocolProtos
       (AddCachePoolResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.ModifyCachePoolResponseProto as ClientNamenodeProtocolProtos
       (ModifyCachePoolResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RemoveCachePoolResponseProto as ClientNamenodeProtocolProtos
       (RemoveCachePoolResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.ListCachePoolsResponseProto as ClientNamenodeProtocolProtos
       (ListCachePoolsResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetFileLinkInfoResponseProto as ClientNamenodeProtocolProtos
       (GetFileLinkInfoResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetContentSummaryResponseProto as ClientNamenodeProtocolProtos
       (GetContentSummaryResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetQuotaResponseProto as ClientNamenodeProtocolProtos
       (SetQuotaResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.FsyncResponseProto as ClientNamenodeProtocolProtos (FsyncResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetTimesResponseProto as ClientNamenodeProtocolProtos
       (SetTimesResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CreateSymlinkResponseProto as ClientNamenodeProtocolProtos
       (CreateSymlinkResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetLinkTargetResponseProto as ClientNamenodeProtocolProtos
       (GetLinkTargetResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.UpdateBlockForPipelineResponseProto as ClientNamenodeProtocolProtos
       (UpdateBlockForPipelineResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.UpdatePipelineResponseProto as ClientNamenodeProtocolProtos
       (UpdatePipelineResponseProto)
import qualified Hadoop.Protos.SecurityProtos.GetDelegationTokenResponseProto as SecurityProtos (GetDelegationTokenResponseProto)
import qualified Hadoop.Protos.SecurityProtos.RenewDelegationTokenResponseProto as SecurityProtos
       (RenewDelegationTokenResponseProto)
import qualified Hadoop.Protos.SecurityProtos.CancelDelegationTokenResponseProto as SecurityProtos
       (CancelDelegationTokenResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.SetBalancerBandwidthResponseProto as ClientNamenodeProtocolProtos
       (SetBalancerBandwidthResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetDataEncryptionKeyResponseProto as ClientNamenodeProtocolProtos
       (GetDataEncryptionKeyResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CreateSnapshotResponseProto as ClientNamenodeProtocolProtos
       (CreateSnapshotResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RenameSnapshotResponseProto as ClientNamenodeProtocolProtos
       (RenameSnapshotResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.AllowSnapshotResponseProto as ClientNamenodeProtocolProtos
       (AllowSnapshotResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.DisallowSnapshotResponseProto as ClientNamenodeProtocolProtos
       (DisallowSnapshotResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetSnapshottableDirListingResponseProto as ClientNamenodeProtocolProtos
       (GetSnapshottableDirListingResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.DeleteSnapshotResponseProto as ClientNamenodeProtocolProtos
       (DeleteSnapshotResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetSnapshotDiffReportResponseProto as ClientNamenodeProtocolProtos
       (GetSnapshotDiffReportResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.IsFileClosedResponseProto as ClientNamenodeProtocolProtos
       (IsFileClosedResponseProto)
import qualified Hadoop.Protos.AclProtos.ModifyAclEntriesResponseProto as AclProtos (ModifyAclEntriesResponseProto)
import qualified Hadoop.Protos.AclProtos.RemoveAclEntriesResponseProto as AclProtos (RemoveAclEntriesResponseProto)
import qualified Hadoop.Protos.AclProtos.RemoveDefaultAclResponseProto as AclProtos (RemoveDefaultAclResponseProto)
import qualified Hadoop.Protos.AclProtos.RemoveAclResponseProto as AclProtos (RemoveAclResponseProto)
import qualified Hadoop.Protos.AclProtos.SetAclResponseProto as AclProtos (SetAclResponseProto)
import qualified Hadoop.Protos.AclProtos.GetAclStatusResponseProto as AclProtos (GetAclStatusResponseProto)
import qualified Hadoop.Protos.XAttrProtos.SetXAttrResponseProto as XAttrProtos (SetXAttrResponseProto)
import qualified Hadoop.Protos.XAttrProtos.GetXAttrsResponseProto as XAttrProtos (GetXAttrsResponseProto)
import qualified Hadoop.Protos.XAttrProtos.ListXAttrsResponseProto as XAttrProtos (ListXAttrsResponseProto)
import qualified Hadoop.Protos.XAttrProtos.RemoveXAttrResponseProto as XAttrProtos (RemoveXAttrResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CheckAccessResponseProto as ClientNamenodeProtocolProtos
       (CheckAccessResponseProto)
import qualified Hadoop.Protos.EncryptionZonesProtos.CreateEncryptionZoneResponseProto as EncryptionZonesProtos
       (CreateEncryptionZoneResponseProto)
import qualified Hadoop.Protos.EncryptionZonesProtos.ListEncryptionZonesResponseProto as EncryptionZonesProtos
       (ListEncryptionZonesResponseProto)
import qualified Hadoop.Protos.EncryptionZonesProtos.GetEZForPathResponseProto as EncryptionZonesProtos (GetEZForPathResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetCurrentEditLogTxidResponseProto as ClientNamenodeProtocolProtos
       (GetCurrentEditLogTxidResponseProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.GetEditsFromTxidResponseProto as ClientNamenodeProtocolProtos
       (GetEditsFromTxidResponseProto)
 
type ClientNamenodeProtocol =
     P'.Service
      '[GetBlockLocations, GetServerDefaults, Create, Append, SetReplication, SetStoragePolicy, GetStoragePolicy,
        GetStoragePolicies, SetPermission, SetOwner, AbandonBlock, AddBlock, GetAdditionalDatanode, Complete, ReportBadBlocks,
        Concat, Truncate, Rename, Rename2, Delete, Mkdirs, GetListing, RenewLease, RecoverLease, GetFsStats, GetDatanodeReport,
        GetDatanodeStorageReport, GetPreferredBlockSize, SetSafeMode, SaveNamespace, RollEdits, RestoreFailedStorage, RefreshNodes,
        FinalizeUpgrade, RollingUpgrade, ListCorruptFileBlocks, MetaSave, GetFileInfo, AddCacheDirective, ModifyCacheDirective,
        RemoveCacheDirective, ListCacheDirectives, AddCachePool, ModifyCachePool, RemoveCachePool, ListCachePools, GetFileLinkInfo,
        GetContentSummary, SetQuota, Fsync, SetTimes, CreateSymlink, GetLinkTarget, UpdateBlockForPipeline, UpdatePipeline,
        GetDelegationToken, RenewDelegationToken, CancelDelegationToken, SetBalancerBandwidth, GetDataEncryptionKey, CreateSnapshot,
        RenameSnapshot, AllowSnapshot, DisallowSnapshot, GetSnapshottableDirListing, DeleteSnapshot, GetSnapshotDiffReport,
        IsFileClosed, ModifyAclEntries, RemoveAclEntries, RemoveDefaultAcl, RemoveAcl, SetAcl, GetAclStatus, SetXAttr, GetXAttrs,
        ListXAttrs, RemoveXAttr, CheckAccess, CreateEncryptionZone, ListEncryptionZones, GetEZForPath, GetCurrentEditLogTxid,
        GetEditsFromTxid]
 
clientNamenodeProtocol :: ClientNamenodeProtocol
clientNamenodeProtocol = P'.Service
 
type GetBlockLocations =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getBlockLocations" ClientNamenodeProtocolProtos.GetBlockLocationsRequestProto
      ClientNamenodeProtocolProtos.GetBlockLocationsResponseProto
 
type GetServerDefaults =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getServerDefaults" ClientNamenodeProtocolProtos.GetServerDefaultsRequestProto
      ClientNamenodeProtocolProtos.GetServerDefaultsResponseProto
 
type Create =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.create" ClientNamenodeProtocolProtos.CreateRequestProto
      ClientNamenodeProtocolProtos.CreateResponseProto
 
type Append =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.append" ClientNamenodeProtocolProtos.AppendRequestProto
      ClientNamenodeProtocolProtos.AppendResponseProto
 
type SetReplication =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.setReplication" ClientNamenodeProtocolProtos.SetReplicationRequestProto
      ClientNamenodeProtocolProtos.SetReplicationResponseProto
 
type SetStoragePolicy =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.setStoragePolicy" ClientNamenodeProtocolProtos.SetStoragePolicyRequestProto
      ClientNamenodeProtocolProtos.SetStoragePolicyResponseProto
 
type GetStoragePolicy =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getStoragePolicy" ClientNamenodeProtocolProtos.GetStoragePolicyRequestProto
      ClientNamenodeProtocolProtos.GetStoragePolicyResponseProto
 
type GetStoragePolicies =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getStoragePolicies" ClientNamenodeProtocolProtos.GetStoragePoliciesRequestProto
      ClientNamenodeProtocolProtos.GetStoragePoliciesResponseProto
 
type SetPermission =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.setPermission" ClientNamenodeProtocolProtos.SetPermissionRequestProto
      ClientNamenodeProtocolProtos.SetPermissionResponseProto
 
type SetOwner =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.setOwner" ClientNamenodeProtocolProtos.SetOwnerRequestProto
      ClientNamenodeProtocolProtos.SetOwnerResponseProto
 
type AbandonBlock =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.abandonBlock" ClientNamenodeProtocolProtos.AbandonBlockRequestProto
      ClientNamenodeProtocolProtos.AbandonBlockResponseProto
 
type AddBlock =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.addBlock" ClientNamenodeProtocolProtos.AddBlockRequestProto
      ClientNamenodeProtocolProtos.AddBlockResponseProto
 
type GetAdditionalDatanode =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getAdditionalDatanode"
      ClientNamenodeProtocolProtos.GetAdditionalDatanodeRequestProto
      ClientNamenodeProtocolProtos.GetAdditionalDatanodeResponseProto
 
type Complete =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.complete" ClientNamenodeProtocolProtos.CompleteRequestProto
      ClientNamenodeProtocolProtos.CompleteResponseProto
 
type ReportBadBlocks =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.reportBadBlocks" ClientNamenodeProtocolProtos.ReportBadBlocksRequestProto
      ClientNamenodeProtocolProtos.ReportBadBlocksResponseProto
 
type Concat =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.concat" ClientNamenodeProtocolProtos.ConcatRequestProto
      ClientNamenodeProtocolProtos.ConcatResponseProto
 
type Truncate =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.truncate" ClientNamenodeProtocolProtos.TruncateRequestProto
      ClientNamenodeProtocolProtos.TruncateResponseProto
 
type Rename =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.rename" ClientNamenodeProtocolProtos.RenameRequestProto
      ClientNamenodeProtocolProtos.RenameResponseProto
 
type Rename2 =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.rename2" ClientNamenodeProtocolProtos.Rename2RequestProto
      ClientNamenodeProtocolProtos.Rename2ResponseProto
 
type Delete =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.delete" ClientNamenodeProtocolProtos.DeleteRequestProto
      ClientNamenodeProtocolProtos.DeleteResponseProto
 
type Mkdirs =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.mkdirs" ClientNamenodeProtocolProtos.MkdirsRequestProto
      ClientNamenodeProtocolProtos.MkdirsResponseProto
 
type GetListing =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getListing" ClientNamenodeProtocolProtos.GetListingRequestProto
      ClientNamenodeProtocolProtos.GetListingResponseProto
 
type RenewLease =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.renewLease" ClientNamenodeProtocolProtos.RenewLeaseRequestProto
      ClientNamenodeProtocolProtos.RenewLeaseResponseProto
 
type RecoverLease =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.recoverLease" ClientNamenodeProtocolProtos.RecoverLeaseRequestProto
      ClientNamenodeProtocolProtos.RecoverLeaseResponseProto
 
type GetFsStats =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getFsStats" ClientNamenodeProtocolProtos.GetFsStatusRequestProto
      ClientNamenodeProtocolProtos.GetFsStatsResponseProto
 
type GetDatanodeReport =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getDatanodeReport" ClientNamenodeProtocolProtos.GetDatanodeReportRequestProto
      ClientNamenodeProtocolProtos.GetDatanodeReportResponseProto
 
type GetDatanodeStorageReport =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getDatanodeStorageReport"
      ClientNamenodeProtocolProtos.GetDatanodeStorageReportRequestProto
      ClientNamenodeProtocolProtos.GetDatanodeStorageReportResponseProto
 
type GetPreferredBlockSize =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getPreferredBlockSize"
      ClientNamenodeProtocolProtos.GetPreferredBlockSizeRequestProto
      ClientNamenodeProtocolProtos.GetPreferredBlockSizeResponseProto
 
type SetSafeMode =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.setSafeMode" ClientNamenodeProtocolProtos.SetSafeModeRequestProto
      ClientNamenodeProtocolProtos.SetSafeModeResponseProto
 
type SaveNamespace =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.saveNamespace" ClientNamenodeProtocolProtos.SaveNamespaceRequestProto
      ClientNamenodeProtocolProtos.SaveNamespaceResponseProto
 
type RollEdits =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.rollEdits" ClientNamenodeProtocolProtos.RollEditsRequestProto
      ClientNamenodeProtocolProtos.RollEditsResponseProto
 
type RestoreFailedStorage =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.restoreFailedStorage"
      ClientNamenodeProtocolProtos.RestoreFailedStorageRequestProto
      ClientNamenodeProtocolProtos.RestoreFailedStorageResponseProto
 
type RefreshNodes =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.refreshNodes" ClientNamenodeProtocolProtos.RefreshNodesRequestProto
      ClientNamenodeProtocolProtos.RefreshNodesResponseProto
 
type FinalizeUpgrade =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.finalizeUpgrade" ClientNamenodeProtocolProtos.FinalizeUpgradeRequestProto
      ClientNamenodeProtocolProtos.FinalizeUpgradeResponseProto
 
type RollingUpgrade =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.rollingUpgrade" ClientNamenodeProtocolProtos.RollingUpgradeRequestProto
      ClientNamenodeProtocolProtos.RollingUpgradeResponseProto
 
type ListCorruptFileBlocks =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.listCorruptFileBlocks"
      ClientNamenodeProtocolProtos.ListCorruptFileBlocksRequestProto
      ClientNamenodeProtocolProtos.ListCorruptFileBlocksResponseProto
 
type MetaSave =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.metaSave" ClientNamenodeProtocolProtos.MetaSaveRequestProto
      ClientNamenodeProtocolProtos.MetaSaveResponseProto
 
type GetFileInfo =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getFileInfo" ClientNamenodeProtocolProtos.GetFileInfoRequestProto
      ClientNamenodeProtocolProtos.GetFileInfoResponseProto
 
type AddCacheDirective =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.addCacheDirective" ClientNamenodeProtocolProtos.AddCacheDirectiveRequestProto
      ClientNamenodeProtocolProtos.AddCacheDirectiveResponseProto
 
type ModifyCacheDirective =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.modifyCacheDirective"
      ClientNamenodeProtocolProtos.ModifyCacheDirectiveRequestProto
      ClientNamenodeProtocolProtos.ModifyCacheDirectiveResponseProto
 
type RemoveCacheDirective =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.removeCacheDirective"
      ClientNamenodeProtocolProtos.RemoveCacheDirectiveRequestProto
      ClientNamenodeProtocolProtos.RemoveCacheDirectiveResponseProto
 
type ListCacheDirectives =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.listCacheDirectives"
      ClientNamenodeProtocolProtos.ListCacheDirectivesRequestProto
      ClientNamenodeProtocolProtos.ListCacheDirectivesResponseProto
 
type AddCachePool =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.addCachePool" ClientNamenodeProtocolProtos.AddCachePoolRequestProto
      ClientNamenodeProtocolProtos.AddCachePoolResponseProto
 
type ModifyCachePool =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.modifyCachePool" ClientNamenodeProtocolProtos.ModifyCachePoolRequestProto
      ClientNamenodeProtocolProtos.ModifyCachePoolResponseProto
 
type RemoveCachePool =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.removeCachePool" ClientNamenodeProtocolProtos.RemoveCachePoolRequestProto
      ClientNamenodeProtocolProtos.RemoveCachePoolResponseProto
 
type ListCachePools =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.listCachePools" ClientNamenodeProtocolProtos.ListCachePoolsRequestProto
      ClientNamenodeProtocolProtos.ListCachePoolsResponseProto
 
type GetFileLinkInfo =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getFileLinkInfo" ClientNamenodeProtocolProtos.GetFileLinkInfoRequestProto
      ClientNamenodeProtocolProtos.GetFileLinkInfoResponseProto
 
type GetContentSummary =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getContentSummary" ClientNamenodeProtocolProtos.GetContentSummaryRequestProto
      ClientNamenodeProtocolProtos.GetContentSummaryResponseProto
 
type SetQuota =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.setQuota" ClientNamenodeProtocolProtos.SetQuotaRequestProto
      ClientNamenodeProtocolProtos.SetQuotaResponseProto
 
type Fsync =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.fsync" ClientNamenodeProtocolProtos.FsyncRequestProto
      ClientNamenodeProtocolProtos.FsyncResponseProto
 
type SetTimes =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.setTimes" ClientNamenodeProtocolProtos.SetTimesRequestProto
      ClientNamenodeProtocolProtos.SetTimesResponseProto
 
type CreateSymlink =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.createSymlink" ClientNamenodeProtocolProtos.CreateSymlinkRequestProto
      ClientNamenodeProtocolProtos.CreateSymlinkResponseProto
 
type GetLinkTarget =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getLinkTarget" ClientNamenodeProtocolProtos.GetLinkTargetRequestProto
      ClientNamenodeProtocolProtos.GetLinkTargetResponseProto
 
type UpdateBlockForPipeline =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.updateBlockForPipeline"
      ClientNamenodeProtocolProtos.UpdateBlockForPipelineRequestProto
      ClientNamenodeProtocolProtos.UpdateBlockForPipelineResponseProto
 
type UpdatePipeline =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.updatePipeline" ClientNamenodeProtocolProtos.UpdatePipelineRequestProto
      ClientNamenodeProtocolProtos.UpdatePipelineResponseProto
 
type GetDelegationToken =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getDelegationToken" SecurityProtos.GetDelegationTokenRequestProto
      SecurityProtos.GetDelegationTokenResponseProto
 
type RenewDelegationToken =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.renewDelegationToken" SecurityProtos.RenewDelegationTokenRequestProto
      SecurityProtos.RenewDelegationTokenResponseProto
 
type CancelDelegationToken =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.cancelDelegationToken" SecurityProtos.CancelDelegationTokenRequestProto
      SecurityProtos.CancelDelegationTokenResponseProto
 
type SetBalancerBandwidth =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.setBalancerBandwidth"
      ClientNamenodeProtocolProtos.SetBalancerBandwidthRequestProto
      ClientNamenodeProtocolProtos.SetBalancerBandwidthResponseProto
 
type GetDataEncryptionKey =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getDataEncryptionKey"
      ClientNamenodeProtocolProtos.GetDataEncryptionKeyRequestProto
      ClientNamenodeProtocolProtos.GetDataEncryptionKeyResponseProto
 
type CreateSnapshot =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.createSnapshot" ClientNamenodeProtocolProtos.CreateSnapshotRequestProto
      ClientNamenodeProtocolProtos.CreateSnapshotResponseProto
 
type RenameSnapshot =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.renameSnapshot" ClientNamenodeProtocolProtos.RenameSnapshotRequestProto
      ClientNamenodeProtocolProtos.RenameSnapshotResponseProto
 
type AllowSnapshot =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.allowSnapshot" ClientNamenodeProtocolProtos.AllowSnapshotRequestProto
      ClientNamenodeProtocolProtos.AllowSnapshotResponseProto
 
type DisallowSnapshot =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.disallowSnapshot" ClientNamenodeProtocolProtos.DisallowSnapshotRequestProto
      ClientNamenodeProtocolProtos.DisallowSnapshotResponseProto
 
type GetSnapshottableDirListing =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getSnapshottableDirListing"
      ClientNamenodeProtocolProtos.GetSnapshottableDirListingRequestProto
      ClientNamenodeProtocolProtos.GetSnapshottableDirListingResponseProto
 
type DeleteSnapshot =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.deleteSnapshot" ClientNamenodeProtocolProtos.DeleteSnapshotRequestProto
      ClientNamenodeProtocolProtos.DeleteSnapshotResponseProto
 
type GetSnapshotDiffReport =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getSnapshotDiffReport"
      ClientNamenodeProtocolProtos.GetSnapshotDiffReportRequestProto
      ClientNamenodeProtocolProtos.GetSnapshotDiffReportResponseProto
 
type IsFileClosed =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.isFileClosed" ClientNamenodeProtocolProtos.IsFileClosedRequestProto
      ClientNamenodeProtocolProtos.IsFileClosedResponseProto
 
type ModifyAclEntries =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.modifyAclEntries" AclProtos.ModifyAclEntriesRequestProto
      AclProtos.ModifyAclEntriesResponseProto
 
type RemoveAclEntries =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.removeAclEntries" AclProtos.RemoveAclEntriesRequestProto
      AclProtos.RemoveAclEntriesResponseProto
 
type RemoveDefaultAcl =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.removeDefaultAcl" AclProtos.RemoveDefaultAclRequestProto
      AclProtos.RemoveDefaultAclResponseProto
 
type RemoveAcl =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.removeAcl" AclProtos.RemoveAclRequestProto AclProtos.RemoveAclResponseProto
 
type SetAcl = P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.setAcl" AclProtos.SetAclRequestProto AclProtos.SetAclResponseProto
 
type GetAclStatus =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getAclStatus" AclProtos.GetAclStatusRequestProto
      AclProtos.GetAclStatusResponseProto
 
type SetXAttr =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.setXAttr" XAttrProtos.SetXAttrRequestProto XAttrProtos.SetXAttrResponseProto
 
type GetXAttrs =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getXAttrs" XAttrProtos.GetXAttrsRequestProto XAttrProtos.GetXAttrsResponseProto
 
type ListXAttrs =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.listXAttrs" XAttrProtos.ListXAttrsRequestProto
      XAttrProtos.ListXAttrsResponseProto
 
type RemoveXAttr =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.removeXAttr" XAttrProtos.RemoveXAttrRequestProto
      XAttrProtos.RemoveXAttrResponseProto
 
type CheckAccess =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.checkAccess" ClientNamenodeProtocolProtos.CheckAccessRequestProto
      ClientNamenodeProtocolProtos.CheckAccessResponseProto
 
type CreateEncryptionZone =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.createEncryptionZone" EncryptionZonesProtos.CreateEncryptionZoneRequestProto
      EncryptionZonesProtos.CreateEncryptionZoneResponseProto
 
type ListEncryptionZones =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.listEncryptionZones" EncryptionZonesProtos.ListEncryptionZonesRequestProto
      EncryptionZonesProtos.ListEncryptionZonesResponseProto
 
type GetEZForPath =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getEZForPath" EncryptionZonesProtos.GetEZForPathRequestProto
      EncryptionZonesProtos.GetEZForPathResponseProto
 
type GetCurrentEditLogTxid =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getCurrentEditLogTxid"
      ClientNamenodeProtocolProtos.GetCurrentEditLogTxidRequestProto
      ClientNamenodeProtocolProtos.GetCurrentEditLogTxidResponseProto
 
type GetEditsFromTxid =
     P'.Method ".hadoop.hdfs.ClientNamenodeProtocol.getEditsFromTxid" ClientNamenodeProtocolProtos.GetEditsFromTxidRequestProto
      ClientNamenodeProtocolProtos.GetEditsFromTxidResponseProto
 
getBlockLocations :: GetBlockLocations
getBlockLocations = P'.Method
 
getServerDefaults :: GetServerDefaults
getServerDefaults = P'.Method
 
create :: Create
create = P'.Method
 
append :: Append
append = P'.Method
 
setReplication :: SetReplication
setReplication = P'.Method
 
setStoragePolicy :: SetStoragePolicy
setStoragePolicy = P'.Method
 
getStoragePolicy :: GetStoragePolicy
getStoragePolicy = P'.Method
 
getStoragePolicies :: GetStoragePolicies
getStoragePolicies = P'.Method
 
setPermission :: SetPermission
setPermission = P'.Method
 
setOwner :: SetOwner
setOwner = P'.Method
 
abandonBlock :: AbandonBlock
abandonBlock = P'.Method
 
addBlock :: AddBlock
addBlock = P'.Method
 
getAdditionalDatanode :: GetAdditionalDatanode
getAdditionalDatanode = P'.Method
 
complete :: Complete
complete = P'.Method
 
reportBadBlocks :: ReportBadBlocks
reportBadBlocks = P'.Method
 
concat :: Concat
concat = P'.Method
 
truncate :: Truncate
truncate = P'.Method
 
rename :: Rename
rename = P'.Method
 
rename2 :: Rename2
rename2 = P'.Method
 
delete :: Delete
delete = P'.Method
 
mkdirs :: Mkdirs
mkdirs = P'.Method
 
getListing :: GetListing
getListing = P'.Method
 
renewLease :: RenewLease
renewLease = P'.Method
 
recoverLease :: RecoverLease
recoverLease = P'.Method
 
getFsStats :: GetFsStats
getFsStats = P'.Method
 
getDatanodeReport :: GetDatanodeReport
getDatanodeReport = P'.Method
 
getDatanodeStorageReport :: GetDatanodeStorageReport
getDatanodeStorageReport = P'.Method
 
getPreferredBlockSize :: GetPreferredBlockSize
getPreferredBlockSize = P'.Method
 
setSafeMode :: SetSafeMode
setSafeMode = P'.Method
 
saveNamespace :: SaveNamespace
saveNamespace = P'.Method
 
rollEdits :: RollEdits
rollEdits = P'.Method
 
restoreFailedStorage :: RestoreFailedStorage
restoreFailedStorage = P'.Method
 
refreshNodes :: RefreshNodes
refreshNodes = P'.Method
 
finalizeUpgrade :: FinalizeUpgrade
finalizeUpgrade = P'.Method
 
rollingUpgrade :: RollingUpgrade
rollingUpgrade = P'.Method
 
listCorruptFileBlocks :: ListCorruptFileBlocks
listCorruptFileBlocks = P'.Method
 
metaSave :: MetaSave
metaSave = P'.Method
 
getFileInfo :: GetFileInfo
getFileInfo = P'.Method
 
addCacheDirective :: AddCacheDirective
addCacheDirective = P'.Method
 
modifyCacheDirective :: ModifyCacheDirective
modifyCacheDirective = P'.Method
 
removeCacheDirective :: RemoveCacheDirective
removeCacheDirective = P'.Method
 
listCacheDirectives :: ListCacheDirectives
listCacheDirectives = P'.Method
 
addCachePool :: AddCachePool
addCachePool = P'.Method
 
modifyCachePool :: ModifyCachePool
modifyCachePool = P'.Method
 
removeCachePool :: RemoveCachePool
removeCachePool = P'.Method
 
listCachePools :: ListCachePools
listCachePools = P'.Method
 
getFileLinkInfo :: GetFileLinkInfo
getFileLinkInfo = P'.Method
 
getContentSummary :: GetContentSummary
getContentSummary = P'.Method
 
setQuota :: SetQuota
setQuota = P'.Method
 
fsync :: Fsync
fsync = P'.Method
 
setTimes :: SetTimes
setTimes = P'.Method
 
createSymlink :: CreateSymlink
createSymlink = P'.Method
 
getLinkTarget :: GetLinkTarget
getLinkTarget = P'.Method
 
updateBlockForPipeline :: UpdateBlockForPipeline
updateBlockForPipeline = P'.Method
 
updatePipeline :: UpdatePipeline
updatePipeline = P'.Method
 
getDelegationToken :: GetDelegationToken
getDelegationToken = P'.Method
 
renewDelegationToken :: RenewDelegationToken
renewDelegationToken = P'.Method
 
cancelDelegationToken :: CancelDelegationToken
cancelDelegationToken = P'.Method
 
setBalancerBandwidth :: SetBalancerBandwidth
setBalancerBandwidth = P'.Method
 
getDataEncryptionKey :: GetDataEncryptionKey
getDataEncryptionKey = P'.Method
 
createSnapshot :: CreateSnapshot
createSnapshot = P'.Method
 
renameSnapshot :: RenameSnapshot
renameSnapshot = P'.Method
 
allowSnapshot :: AllowSnapshot
allowSnapshot = P'.Method
 
disallowSnapshot :: DisallowSnapshot
disallowSnapshot = P'.Method
 
getSnapshottableDirListing :: GetSnapshottableDirListing
getSnapshottableDirListing = P'.Method
 
deleteSnapshot :: DeleteSnapshot
deleteSnapshot = P'.Method
 
getSnapshotDiffReport :: GetSnapshotDiffReport
getSnapshotDiffReport = P'.Method
 
isFileClosed :: IsFileClosed
isFileClosed = P'.Method
 
modifyAclEntries :: ModifyAclEntries
modifyAclEntries = P'.Method
 
removeAclEntries :: RemoveAclEntries
removeAclEntries = P'.Method
 
removeDefaultAcl :: RemoveDefaultAcl
removeDefaultAcl = P'.Method
 
removeAcl :: RemoveAcl
removeAcl = P'.Method
 
setAcl :: SetAcl
setAcl = P'.Method
 
getAclStatus :: GetAclStatus
getAclStatus = P'.Method
 
setXAttr :: SetXAttr
setXAttr = P'.Method
 
getXAttrs :: GetXAttrs
getXAttrs = P'.Method
 
listXAttrs :: ListXAttrs
listXAttrs = P'.Method
 
removeXAttr :: RemoveXAttr
removeXAttr = P'.Method
 
checkAccess :: CheckAccess
checkAccess = P'.Method
 
createEncryptionZone :: CreateEncryptionZone
createEncryptionZone = P'.Method
 
listEncryptionZones :: ListEncryptionZones
listEncryptionZones = P'.Method
 
getEZForPath :: GetEZForPath
getEZForPath = P'.Method
 
getCurrentEditLogTxid :: GetCurrentEditLogTxid
getCurrentEditLogTxid = P'.Method
 
getEditsFromTxid :: GetEditsFromTxid
getEditsFromTxid = P'.Method