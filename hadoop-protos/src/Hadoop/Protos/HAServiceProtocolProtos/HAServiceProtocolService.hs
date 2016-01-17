{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HAServiceProtocolProtos.HAServiceProtocolService
       (HAServiceProtocolService, hAServiceProtocolService, MonitorHealth, TransitionToActive, TransitionToStandby,
        GetServiceStatus, monitorHealth, transitionToActive, transitionToStandby, getServiceStatus)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HAServiceProtocolProtos.MonitorHealthRequestProto as HAServiceProtocolProtos
       (MonitorHealthRequestProto)
import qualified Hadoop.Protos.HAServiceProtocolProtos.TransitionToActiveRequestProto as HAServiceProtocolProtos
       (TransitionToActiveRequestProto)
import qualified Hadoop.Protos.HAServiceProtocolProtos.TransitionToStandbyRequestProto as HAServiceProtocolProtos
       (TransitionToStandbyRequestProto)
import qualified Hadoop.Protos.HAServiceProtocolProtos.GetServiceStatusRequestProto as HAServiceProtocolProtos
       (GetServiceStatusRequestProto)
import qualified Hadoop.Protos.HAServiceProtocolProtos.MonitorHealthResponseProto as HAServiceProtocolProtos
       (MonitorHealthResponseProto)
import qualified Hadoop.Protos.HAServiceProtocolProtos.TransitionToActiveResponseProto as HAServiceProtocolProtos
       (TransitionToActiveResponseProto)
import qualified Hadoop.Protos.HAServiceProtocolProtos.TransitionToStandbyResponseProto as HAServiceProtocolProtos
       (TransitionToStandbyResponseProto)
import qualified Hadoop.Protos.HAServiceProtocolProtos.GetServiceStatusResponseProto as HAServiceProtocolProtos
       (GetServiceStatusResponseProto)
 
type HAServiceProtocolService = P'.Service '[MonitorHealth, TransitionToActive, TransitionToStandby, GetServiceStatus]
 
hAServiceProtocolService :: HAServiceProtocolService
hAServiceProtocolService = P'.Service
 
type MonitorHealth =
     P'.Method ".hadoop.common.HAServiceProtocolService.monitorHealth" HAServiceProtocolProtos.MonitorHealthRequestProto
      HAServiceProtocolProtos.MonitorHealthResponseProto
 
type TransitionToActive =
     P'.Method ".hadoop.common.HAServiceProtocolService.transitionToActive" HAServiceProtocolProtos.TransitionToActiveRequestProto
      HAServiceProtocolProtos.TransitionToActiveResponseProto
 
type TransitionToStandby =
     P'.Method ".hadoop.common.HAServiceProtocolService.transitionToStandby" HAServiceProtocolProtos.TransitionToStandbyRequestProto
      HAServiceProtocolProtos.TransitionToStandbyResponseProto
 
type GetServiceStatus =
     P'.Method ".hadoop.common.HAServiceProtocolService.getServiceStatus" HAServiceProtocolProtos.GetServiceStatusRequestProto
      HAServiceProtocolProtos.GetServiceStatusResponseProto
 
monitorHealth :: MonitorHealth
monitorHealth = P'.Method
 
transitionToActive :: TransitionToActive
transitionToActive = P'.Method
 
transitionToStandby :: TransitionToStandby
transitionToStandby = P'.Method
 
getServiceStatus :: GetServiceStatus
getServiceStatus = P'.Method