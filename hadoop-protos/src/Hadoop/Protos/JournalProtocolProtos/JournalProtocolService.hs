{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.JournalProtocolProtos.JournalProtocolService
       (JournalProtocolService, journalProtocolService, Journal, StartLogSegment, Fence, journal, startLogSegment, fence) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.JournalProtocolProtos.JournalRequestProto as JournalProtocolProtos (JournalRequestProto)
import qualified Hadoop.Protos.JournalProtocolProtos.StartLogSegmentRequestProto as JournalProtocolProtos
       (StartLogSegmentRequestProto)
import qualified Hadoop.Protos.JournalProtocolProtos.FenceRequestProto as JournalProtocolProtos (FenceRequestProto)
import qualified Hadoop.Protos.JournalProtocolProtos.JournalResponseProto as JournalProtocolProtos (JournalResponseProto)
import qualified Hadoop.Protos.JournalProtocolProtos.StartLogSegmentResponseProto as JournalProtocolProtos
       (StartLogSegmentResponseProto)
import qualified Hadoop.Protos.JournalProtocolProtos.FenceResponseProto as JournalProtocolProtos (FenceResponseProto)
 
type JournalProtocolService = P'.Service '[Journal, StartLogSegment, Fence]
 
journalProtocolService :: JournalProtocolService
journalProtocolService = P'.Service
 
type Journal =
     P'.Method ".hadoop.hdfs.JournalProtocolService.journal" JournalProtocolProtos.JournalRequestProto
      JournalProtocolProtos.JournalResponseProto
 
type StartLogSegment =
     P'.Method ".hadoop.hdfs.JournalProtocolService.startLogSegment" JournalProtocolProtos.StartLogSegmentRequestProto
      JournalProtocolProtos.StartLogSegmentResponseProto
 
type Fence =
     P'.Method ".hadoop.hdfs.JournalProtocolService.fence" JournalProtocolProtos.FenceRequestProto
      JournalProtocolProtos.FenceResponseProto
 
journal :: Journal
journal = P'.Method
 
startLogSegment :: StartLogSegment
startLogSegment = P'.Method
 
fence :: Fence
fence = P'.Method