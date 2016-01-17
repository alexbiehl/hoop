{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RefreshCallQueueProtocolProtos.RefreshCallQueueProtocolService
       (RefreshCallQueueProtocolService, refreshCallQueueProtocolService, RefreshCallQueue, refreshCallQueue) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.RefreshCallQueueProtocolProtos.RefreshCallQueueRequestProto as RefreshCallQueueProtocolProtos
       (RefreshCallQueueRequestProto)
import qualified Hadoop.Protos.RefreshCallQueueProtocolProtos.RefreshCallQueueResponseProto as RefreshCallQueueProtocolProtos
       (RefreshCallQueueResponseProto)
 
type RefreshCallQueueProtocolService = P'.Service '[RefreshCallQueue]
 
refreshCallQueueProtocolService :: RefreshCallQueueProtocolService
refreshCallQueueProtocolService = P'.Service
 
type RefreshCallQueue =
     P'.Method ".hadoop.common.RefreshCallQueueProtocolService.refreshCallQueue"
      RefreshCallQueueProtocolProtos.RefreshCallQueueRequestProto
      RefreshCallQueueProtocolProtos.RefreshCallQueueResponseProto
 
refreshCallQueue :: RefreshCallQueue
refreshCallQueue = P'.Method