{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.QJournalProtocolProtos.QJournalProtocolService
       (QJournalProtocolService, qJournalProtocolService, IsFormatted, GetJournalCTime, DoPreUpgrade, DoUpgrade, DoFinalize,
        CanRollBack, DoRollback, DiscardSegments, GetJournalState, NewEpoch, Format, Journal, Heartbeat, StartLogSegment,
        FinalizeLogSegment, PurgeLogs, GetEditLogManifest, PrepareRecovery, AcceptRecovery, isFormatted, getJournalCTime,
        doPreUpgrade, doUpgrade, doFinalize, canRollBack, doRollback, discardSegments, getJournalState, newEpoch, format, journal,
        heartbeat, startLogSegment, finalizeLogSegment, purgeLogs, getEditLogManifest, prepareRecovery, acceptRecovery)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.QJournalProtocolProtos.IsFormattedRequestProto as QJournalProtocolProtos (IsFormattedRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.GetJournalCTimeRequestProto as QJournalProtocolProtos
       (GetJournalCTimeRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.DoPreUpgradeRequestProto as QJournalProtocolProtos (DoPreUpgradeRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.DoUpgradeRequestProto as QJournalProtocolProtos (DoUpgradeRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.DoFinalizeRequestProto as QJournalProtocolProtos (DoFinalizeRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.CanRollBackRequestProto as QJournalProtocolProtos (CanRollBackRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.DoRollbackRequestProto as QJournalProtocolProtos (DoRollbackRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.DiscardSegmentsRequestProto as QJournalProtocolProtos
       (DiscardSegmentsRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.GetJournalStateRequestProto as QJournalProtocolProtos
       (GetJournalStateRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.NewEpochRequestProto as QJournalProtocolProtos (NewEpochRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.FormatRequestProto as QJournalProtocolProtos (FormatRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.JournalRequestProto as QJournalProtocolProtos (JournalRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.HeartbeatRequestProto as QJournalProtocolProtos (HeartbeatRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.StartLogSegmentRequestProto as QJournalProtocolProtos
       (StartLogSegmentRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.FinalizeLogSegmentRequestProto as QJournalProtocolProtos
       (FinalizeLogSegmentRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.PurgeLogsRequestProto as QJournalProtocolProtos (PurgeLogsRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.GetEditLogManifestRequestProto as QJournalProtocolProtos
       (GetEditLogManifestRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.PrepareRecoveryRequestProto as QJournalProtocolProtos
       (PrepareRecoveryRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.AcceptRecoveryRequestProto as QJournalProtocolProtos
       (AcceptRecoveryRequestProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.IsFormattedResponseProto as QJournalProtocolProtos (IsFormattedResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.GetJournalCTimeResponseProto as QJournalProtocolProtos
       (GetJournalCTimeResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.DoPreUpgradeResponseProto as QJournalProtocolProtos
       (DoPreUpgradeResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.DoUpgradeResponseProto as QJournalProtocolProtos (DoUpgradeResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.DoFinalizeResponseProto as QJournalProtocolProtos (DoFinalizeResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.CanRollBackResponseProto as QJournalProtocolProtos (CanRollBackResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.DoRollbackResponseProto as QJournalProtocolProtos (DoRollbackResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.DiscardSegmentsResponseProto as QJournalProtocolProtos
       (DiscardSegmentsResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.GetJournalStateResponseProto as QJournalProtocolProtos
       (GetJournalStateResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.NewEpochResponseProto as QJournalProtocolProtos (NewEpochResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.FormatResponseProto as QJournalProtocolProtos (FormatResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.JournalResponseProto as QJournalProtocolProtos (JournalResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.HeartbeatResponseProto as QJournalProtocolProtos (HeartbeatResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.StartLogSegmentResponseProto as QJournalProtocolProtos
       (StartLogSegmentResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.FinalizeLogSegmentResponseProto as QJournalProtocolProtos
       (FinalizeLogSegmentResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.PurgeLogsResponseProto as QJournalProtocolProtos (PurgeLogsResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.GetEditLogManifestResponseProto as QJournalProtocolProtos
       (GetEditLogManifestResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.PrepareRecoveryResponseProto as QJournalProtocolProtos
       (PrepareRecoveryResponseProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.AcceptRecoveryResponseProto as QJournalProtocolProtos
       (AcceptRecoveryResponseProto)
 
type QJournalProtocolService =
     P'.Service
      '[IsFormatted, GetJournalCTime, DoPreUpgrade, DoUpgrade, DoFinalize, CanRollBack, DoRollback, DiscardSegments,
        GetJournalState, NewEpoch, Format, Journal, Heartbeat, StartLogSegment, FinalizeLogSegment, PurgeLogs, GetEditLogManifest,
        PrepareRecovery, AcceptRecovery]
 
qJournalProtocolService :: QJournalProtocolService
qJournalProtocolService = P'.Service
 
type IsFormatted =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.isFormatted" QJournalProtocolProtos.IsFormattedRequestProto
      QJournalProtocolProtos.IsFormattedResponseProto
 
type GetJournalCTime =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.getJournalCTime" QJournalProtocolProtos.GetJournalCTimeRequestProto
      QJournalProtocolProtos.GetJournalCTimeResponseProto
 
type DoPreUpgrade =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.doPreUpgrade" QJournalProtocolProtos.DoPreUpgradeRequestProto
      QJournalProtocolProtos.DoPreUpgradeResponseProto
 
type DoUpgrade =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.doUpgrade" QJournalProtocolProtos.DoUpgradeRequestProto
      QJournalProtocolProtos.DoUpgradeResponseProto
 
type DoFinalize =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.doFinalize" QJournalProtocolProtos.DoFinalizeRequestProto
      QJournalProtocolProtos.DoFinalizeResponseProto
 
type CanRollBack =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.canRollBack" QJournalProtocolProtos.CanRollBackRequestProto
      QJournalProtocolProtos.CanRollBackResponseProto
 
type DoRollback =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.doRollback" QJournalProtocolProtos.DoRollbackRequestProto
      QJournalProtocolProtos.DoRollbackResponseProto
 
type DiscardSegments =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.discardSegments" QJournalProtocolProtos.DiscardSegmentsRequestProto
      QJournalProtocolProtos.DiscardSegmentsResponseProto
 
type GetJournalState =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.getJournalState" QJournalProtocolProtos.GetJournalStateRequestProto
      QJournalProtocolProtos.GetJournalStateResponseProto
 
type NewEpoch =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.newEpoch" QJournalProtocolProtos.NewEpochRequestProto
      QJournalProtocolProtos.NewEpochResponseProto
 
type Format =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.format" QJournalProtocolProtos.FormatRequestProto
      QJournalProtocolProtos.FormatResponseProto
 
type Journal =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.journal" QJournalProtocolProtos.JournalRequestProto
      QJournalProtocolProtos.JournalResponseProto
 
type Heartbeat =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.heartbeat" QJournalProtocolProtos.HeartbeatRequestProto
      QJournalProtocolProtos.HeartbeatResponseProto
 
type StartLogSegment =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.startLogSegment" QJournalProtocolProtos.StartLogSegmentRequestProto
      QJournalProtocolProtos.StartLogSegmentResponseProto
 
type FinalizeLogSegment =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.finalizeLogSegment"
      QJournalProtocolProtos.FinalizeLogSegmentRequestProto
      QJournalProtocolProtos.FinalizeLogSegmentResponseProto
 
type PurgeLogs =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.purgeLogs" QJournalProtocolProtos.PurgeLogsRequestProto
      QJournalProtocolProtos.PurgeLogsResponseProto
 
type GetEditLogManifest =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.getEditLogManifest"
      QJournalProtocolProtos.GetEditLogManifestRequestProto
      QJournalProtocolProtos.GetEditLogManifestResponseProto
 
type PrepareRecovery =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.prepareRecovery" QJournalProtocolProtos.PrepareRecoveryRequestProto
      QJournalProtocolProtos.PrepareRecoveryResponseProto
 
type AcceptRecovery =
     P'.Method ".hadoop.hdfs.qjournal.QJournalProtocolService.acceptRecovery" QJournalProtocolProtos.AcceptRecoveryRequestProto
      QJournalProtocolProtos.AcceptRecoveryResponseProto
 
isFormatted :: IsFormatted
isFormatted = P'.Method
 
getJournalCTime :: GetJournalCTime
getJournalCTime = P'.Method
 
doPreUpgrade :: DoPreUpgrade
doPreUpgrade = P'.Method
 
doUpgrade :: DoUpgrade
doUpgrade = P'.Method
 
doFinalize :: DoFinalize
doFinalize = P'.Method
 
canRollBack :: CanRollBack
canRollBack = P'.Method
 
doRollback :: DoRollback
doRollback = P'.Method
 
discardSegments :: DiscardSegments
discardSegments = P'.Method
 
getJournalState :: GetJournalState
getJournalState = P'.Method
 
newEpoch :: NewEpoch
newEpoch = P'.Method
 
format :: Format
format = P'.Method
 
journal :: Journal
journal = P'.Method
 
heartbeat :: Heartbeat
heartbeat = P'.Method
 
startLogSegment :: StartLogSegment
startLogSegment = P'.Method
 
finalizeLogSegment :: FinalizeLogSegment
finalizeLogSegment = P'.Method
 
purgeLogs :: PurgeLogs
purgeLogs = P'.Method
 
getEditLogManifest :: GetEditLogManifest
getEditLogManifest = P'.Method
 
prepareRecovery :: PrepareRecovery
prepareRecovery = P'.Method
 
acceptRecovery :: AcceptRecovery
acceptRecovery = P'.Method