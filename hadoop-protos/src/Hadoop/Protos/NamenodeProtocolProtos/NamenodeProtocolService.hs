{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.NamenodeProtocolProtos.NamenodeProtocolService
       (NamenodeProtocolService, namenodeProtocolService, GetBlocks, GetBlockKeys, GetTransactionId, GetMostRecentCheckpointTxId,
        RollEditLog, VersionRequest, ErrorReport, RegisterSubordinateNamenode, StartCheckpoint, EndCheckpoint, GetEditLogManifest,
        IsUpgradeFinalized, getBlocks, getBlockKeys, getTransactionId, getMostRecentCheckpointTxId, rollEditLog, versionRequest,
        errorReport, registerSubordinateNamenode, startCheckpoint, endCheckpoint, getEditLogManifest, isUpgradeFinalized)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.NamenodeProtocolProtos.GetBlocksRequestProto as NamenodeProtocolProtos (GetBlocksRequestProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.GetBlockKeysRequestProto as NamenodeProtocolProtos (GetBlockKeysRequestProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.GetTransactionIdRequestProto as NamenodeProtocolProtos
       (GetTransactionIdRequestProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.GetMostRecentCheckpointTxIdRequestProto as NamenodeProtocolProtos
       (GetMostRecentCheckpointTxIdRequestProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.RollEditLogRequestProto as NamenodeProtocolProtos (RollEditLogRequestProto)
import qualified Hadoop.Protos.HdfsProtos.VersionRequestProto as HdfsProtos (VersionRequestProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.ErrorReportRequestProto as NamenodeProtocolProtos (ErrorReportRequestProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.RegisterRequestProto as NamenodeProtocolProtos (RegisterRequestProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.StartCheckpointRequestProto as NamenodeProtocolProtos
       (StartCheckpointRequestProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.EndCheckpointRequestProto as NamenodeProtocolProtos
       (EndCheckpointRequestProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.GetEditLogManifestRequestProto as NamenodeProtocolProtos
       (GetEditLogManifestRequestProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.IsUpgradeFinalizedRequestProto as NamenodeProtocolProtos
       (IsUpgradeFinalizedRequestProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.GetBlocksResponseProto as NamenodeProtocolProtos (GetBlocksResponseProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.GetBlockKeysResponseProto as NamenodeProtocolProtos
       (GetBlockKeysResponseProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.GetTransactionIdResponseProto as NamenodeProtocolProtos
       (GetTransactionIdResponseProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.GetMostRecentCheckpointTxIdResponseProto as NamenodeProtocolProtos
       (GetMostRecentCheckpointTxIdResponseProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.RollEditLogResponseProto as NamenodeProtocolProtos (RollEditLogResponseProto)
import qualified Hadoop.Protos.HdfsProtos.VersionResponseProto as HdfsProtos (VersionResponseProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.ErrorReportResponseProto as NamenodeProtocolProtos (ErrorReportResponseProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.RegisterResponseProto as NamenodeProtocolProtos (RegisterResponseProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.StartCheckpointResponseProto as NamenodeProtocolProtos
       (StartCheckpointResponseProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.EndCheckpointResponseProto as NamenodeProtocolProtos
       (EndCheckpointResponseProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.GetEditLogManifestResponseProto as NamenodeProtocolProtos
       (GetEditLogManifestResponseProto)
import qualified Hadoop.Protos.NamenodeProtocolProtos.IsUpgradeFinalizedResponseProto as NamenodeProtocolProtos
       (IsUpgradeFinalizedResponseProto)
 
type NamenodeProtocolService =
     P'.Service
      '[GetBlocks, GetBlockKeys, GetTransactionId, GetMostRecentCheckpointTxId, RollEditLog, VersionRequest, ErrorReport,
        RegisterSubordinateNamenode, StartCheckpoint, EndCheckpoint, GetEditLogManifest, IsUpgradeFinalized]
 
namenodeProtocolService :: NamenodeProtocolService
namenodeProtocolService = P'.Service
 
type GetBlocks =
     P'.Method ".hadoop.hdfs.namenode.NamenodeProtocolService.getBlocks" NamenodeProtocolProtos.GetBlocksRequestProto
      NamenodeProtocolProtos.GetBlocksResponseProto
 
type GetBlockKeys =
     P'.Method ".hadoop.hdfs.namenode.NamenodeProtocolService.getBlockKeys" NamenodeProtocolProtos.GetBlockKeysRequestProto
      NamenodeProtocolProtos.GetBlockKeysResponseProto
 
type GetTransactionId =
     P'.Method ".hadoop.hdfs.namenode.NamenodeProtocolService.getTransactionId" NamenodeProtocolProtos.GetTransactionIdRequestProto
      NamenodeProtocolProtos.GetTransactionIdResponseProto
 
type GetMostRecentCheckpointTxId =
     P'.Method ".hadoop.hdfs.namenode.NamenodeProtocolService.getMostRecentCheckpointTxId"
      NamenodeProtocolProtos.GetMostRecentCheckpointTxIdRequestProto
      NamenodeProtocolProtos.GetMostRecentCheckpointTxIdResponseProto
 
type RollEditLog =
     P'.Method ".hadoop.hdfs.namenode.NamenodeProtocolService.rollEditLog" NamenodeProtocolProtos.RollEditLogRequestProto
      NamenodeProtocolProtos.RollEditLogResponseProto
 
type VersionRequest =
     P'.Method ".hadoop.hdfs.namenode.NamenodeProtocolService.versionRequest" HdfsProtos.VersionRequestProto
      HdfsProtos.VersionResponseProto
 
type ErrorReport =
     P'.Method ".hadoop.hdfs.namenode.NamenodeProtocolService.errorReport" NamenodeProtocolProtos.ErrorReportRequestProto
      NamenodeProtocolProtos.ErrorReportResponseProto
 
type RegisterSubordinateNamenode =
     P'.Method ".hadoop.hdfs.namenode.NamenodeProtocolService.registerSubordinateNamenode"
      NamenodeProtocolProtos.RegisterRequestProto
      NamenodeProtocolProtos.RegisterResponseProto
 
type StartCheckpoint =
     P'.Method ".hadoop.hdfs.namenode.NamenodeProtocolService.startCheckpoint" NamenodeProtocolProtos.StartCheckpointRequestProto
      NamenodeProtocolProtos.StartCheckpointResponseProto
 
type EndCheckpoint =
     P'.Method ".hadoop.hdfs.namenode.NamenodeProtocolService.endCheckpoint" NamenodeProtocolProtos.EndCheckpointRequestProto
      NamenodeProtocolProtos.EndCheckpointResponseProto
 
type GetEditLogManifest =
     P'.Method ".hadoop.hdfs.namenode.NamenodeProtocolService.getEditLogManifest"
      NamenodeProtocolProtos.GetEditLogManifestRequestProto
      NamenodeProtocolProtos.GetEditLogManifestResponseProto
 
type IsUpgradeFinalized =
     P'.Method ".hadoop.hdfs.namenode.NamenodeProtocolService.isUpgradeFinalized"
      NamenodeProtocolProtos.IsUpgradeFinalizedRequestProto
      NamenodeProtocolProtos.IsUpgradeFinalizedResponseProto
 
getBlocks :: GetBlocks
getBlocks = P'.Method
 
getBlockKeys :: GetBlockKeys
getBlockKeys = P'.Method
 
getTransactionId :: GetTransactionId
getTransactionId = P'.Method
 
getMostRecentCheckpointTxId :: GetMostRecentCheckpointTxId
getMostRecentCheckpointTxId = P'.Method
 
rollEditLog :: RollEditLog
rollEditLog = P'.Method
 
versionRequest :: VersionRequest
versionRequest = P'.Method
 
errorReport :: ErrorReport
errorReport = P'.Method
 
registerSubordinateNamenode :: RegisterSubordinateNamenode
registerSubordinateNamenode = P'.Method
 
startCheckpoint :: StartCheckpoint
startCheckpoint = P'.Method
 
endCheckpoint :: EndCheckpoint
endCheckpoint = P'.Method
 
getEditLogManifest :: GetEditLogManifest
getEditLogManifest = P'.Method
 
isUpgradeFinalized :: IsUpgradeFinalized
isUpgradeFinalized = P'.Method