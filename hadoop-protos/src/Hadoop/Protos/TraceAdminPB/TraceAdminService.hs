{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.TraceAdminPB.TraceAdminService
       (TraceAdminService, traceAdminService, ListSpanReceivers, AddSpanReceiver, RemoveSpanReceiver, listSpanReceivers,
        addSpanReceiver, removeSpanReceiver)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.TraceAdminPB.ListSpanReceiversRequestProto as TraceAdminPB (ListSpanReceiversRequestProto)
import qualified Hadoop.Protos.TraceAdminPB.AddSpanReceiverRequestProto as TraceAdminPB (AddSpanReceiverRequestProto)
import qualified Hadoop.Protos.TraceAdminPB.RemoveSpanReceiverRequestProto as TraceAdminPB (RemoveSpanReceiverRequestProto)
import qualified Hadoop.Protos.TraceAdminPB.ListSpanReceiversResponseProto as TraceAdminPB (ListSpanReceiversResponseProto)
import qualified Hadoop.Protos.TraceAdminPB.AddSpanReceiverResponseProto as TraceAdminPB (AddSpanReceiverResponseProto)
import qualified Hadoop.Protos.TraceAdminPB.RemoveSpanReceiverResponseProto as TraceAdminPB (RemoveSpanReceiverResponseProto)
 
type TraceAdminService = P'.Service '[ListSpanReceivers, AddSpanReceiver, RemoveSpanReceiver]
 
traceAdminService :: TraceAdminService
traceAdminService = P'.Service
 
type ListSpanReceivers =
     P'.Method ".hadoop.common.TraceAdminService.listSpanReceivers" TraceAdminPB.ListSpanReceiversRequestProto
      TraceAdminPB.ListSpanReceiversResponseProto
 
type AddSpanReceiver =
     P'.Method ".hadoop.common.TraceAdminService.addSpanReceiver" TraceAdminPB.AddSpanReceiverRequestProto
      TraceAdminPB.AddSpanReceiverResponseProto
 
type RemoveSpanReceiver =
     P'.Method ".hadoop.common.TraceAdminService.removeSpanReceiver" TraceAdminPB.RemoveSpanReceiverRequestProto
      TraceAdminPB.RemoveSpanReceiverResponseProto
 
listSpanReceivers :: ListSpanReceivers
listSpanReceivers = P'.Method
 
addSpanReceiver :: AddSpanReceiver
addSpanReceiver = P'.Method
 
removeSpanReceiver :: RemoveSpanReceiver
removeSpanReceiver = P'.Method