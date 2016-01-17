{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.DatanodeProtocolService
       (DatanodeProtocolService, datanodeProtocolService, RegisterDatanode, SendHeartbeat, BlockReport, CacheReport,
        BlockReceivedAndDeleted, ErrorReport, VersionRequest, ReportBadBlocks, CommitBlockSynchronization, registerDatanode,
        sendHeartbeat, blockReport, cacheReport, blockReceivedAndDeleted, errorReport, versionRequest, reportBadBlocks,
        commitBlockSynchronization)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DatanodeProtocolProtos.RegisterDatanodeRequestProto as DatanodeProtocolProtos
       (RegisterDatanodeRequestProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.HeartbeatRequestProto as DatanodeProtocolProtos (HeartbeatRequestProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.BlockReportRequestProto as DatanodeProtocolProtos (BlockReportRequestProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.CacheReportRequestProto as DatanodeProtocolProtos (CacheReportRequestProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.BlockReceivedAndDeletedRequestProto as DatanodeProtocolProtos
       (BlockReceivedAndDeletedRequestProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.ErrorReportRequestProto as DatanodeProtocolProtos (ErrorReportRequestProto)
import qualified Hadoop.Protos.HdfsProtos.VersionRequestProto as HdfsProtos (VersionRequestProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.ReportBadBlocksRequestProto as DatanodeProtocolProtos
       (ReportBadBlocksRequestProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.CommitBlockSynchronizationRequestProto as DatanodeProtocolProtos
       (CommitBlockSynchronizationRequestProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.RegisterDatanodeResponseProto as DatanodeProtocolProtos
       (RegisterDatanodeResponseProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.HeartbeatResponseProto as DatanodeProtocolProtos (HeartbeatResponseProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.BlockReportResponseProto as DatanodeProtocolProtos (BlockReportResponseProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.CacheReportResponseProto as DatanodeProtocolProtos (CacheReportResponseProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.BlockReceivedAndDeletedResponseProto as DatanodeProtocolProtos
       (BlockReceivedAndDeletedResponseProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.ErrorReportResponseProto as DatanodeProtocolProtos (ErrorReportResponseProto)
import qualified Hadoop.Protos.HdfsProtos.VersionResponseProto as HdfsProtos (VersionResponseProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.ReportBadBlocksResponseProto as DatanodeProtocolProtos
       (ReportBadBlocksResponseProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.CommitBlockSynchronizationResponseProto as DatanodeProtocolProtos
       (CommitBlockSynchronizationResponseProto)
 
type DatanodeProtocolService =
     P'.Service
      '[RegisterDatanode, SendHeartbeat, BlockReport, CacheReport, BlockReceivedAndDeleted, ErrorReport, VersionRequest,
        ReportBadBlocks, CommitBlockSynchronization]
 
datanodeProtocolService :: DatanodeProtocolService
datanodeProtocolService = P'.Service
 
type RegisterDatanode =
     P'.Method ".hadoop.hdfs.datanode.DatanodeProtocolService.registerDatanode" DatanodeProtocolProtos.RegisterDatanodeRequestProto
      DatanodeProtocolProtos.RegisterDatanodeResponseProto
 
type SendHeartbeat =
     P'.Method ".hadoop.hdfs.datanode.DatanodeProtocolService.sendHeartbeat" DatanodeProtocolProtos.HeartbeatRequestProto
      DatanodeProtocolProtos.HeartbeatResponseProto
 
type BlockReport =
     P'.Method ".hadoop.hdfs.datanode.DatanodeProtocolService.blockReport" DatanodeProtocolProtos.BlockReportRequestProto
      DatanodeProtocolProtos.BlockReportResponseProto
 
type CacheReport =
     P'.Method ".hadoop.hdfs.datanode.DatanodeProtocolService.cacheReport" DatanodeProtocolProtos.CacheReportRequestProto
      DatanodeProtocolProtos.CacheReportResponseProto
 
type BlockReceivedAndDeleted =
     P'.Method ".hadoop.hdfs.datanode.DatanodeProtocolService.blockReceivedAndDeleted"
      DatanodeProtocolProtos.BlockReceivedAndDeletedRequestProto
      DatanodeProtocolProtos.BlockReceivedAndDeletedResponseProto
 
type ErrorReport =
     P'.Method ".hadoop.hdfs.datanode.DatanodeProtocolService.errorReport" DatanodeProtocolProtos.ErrorReportRequestProto
      DatanodeProtocolProtos.ErrorReportResponseProto
 
type VersionRequest =
     P'.Method ".hadoop.hdfs.datanode.DatanodeProtocolService.versionRequest" HdfsProtos.VersionRequestProto
      HdfsProtos.VersionResponseProto
 
type ReportBadBlocks =
     P'.Method ".hadoop.hdfs.datanode.DatanodeProtocolService.reportBadBlocks" DatanodeProtocolProtos.ReportBadBlocksRequestProto
      DatanodeProtocolProtos.ReportBadBlocksResponseProto
 
type CommitBlockSynchronization =
     P'.Method ".hadoop.hdfs.datanode.DatanodeProtocolService.commitBlockSynchronization"
      DatanodeProtocolProtos.CommitBlockSynchronizationRequestProto
      DatanodeProtocolProtos.CommitBlockSynchronizationResponseProto
 
registerDatanode :: RegisterDatanode
registerDatanode = P'.Method
 
sendHeartbeat :: SendHeartbeat
sendHeartbeat = P'.Method
 
blockReport :: BlockReport
blockReport = P'.Method
 
cacheReport :: CacheReport
cacheReport = P'.Method
 
blockReceivedAndDeleted :: BlockReceivedAndDeleted
blockReceivedAndDeleted = P'.Method
 
errorReport :: ErrorReport
errorReport = P'.Method
 
versionRequest :: VersionRequest
versionRequest = P'.Method
 
reportBadBlocks :: ReportBadBlocks
reportBadBlocks = P'.Method
 
commitBlockSynchronization :: CommitBlockSynchronization
commitBlockSynchronization = P'.Method