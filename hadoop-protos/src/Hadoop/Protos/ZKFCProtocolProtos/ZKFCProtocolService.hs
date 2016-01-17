{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ZKFCProtocolProtos.ZKFCProtocolService
       (ZKFCProtocolService, zKFCProtocolService, CedeActive, GracefulFailover, cedeActive, gracefulFailover) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.ZKFCProtocolProtos.CedeActiveRequestProto as ZKFCProtocolProtos (CedeActiveRequestProto)
import qualified Hadoop.Protos.ZKFCProtocolProtos.GracefulFailoverRequestProto as ZKFCProtocolProtos (GracefulFailoverRequestProto)
import qualified Hadoop.Protos.ZKFCProtocolProtos.CedeActiveResponseProto as ZKFCProtocolProtos (CedeActiveResponseProto)
import qualified Hadoop.Protos.ZKFCProtocolProtos.GracefulFailoverResponseProto as ZKFCProtocolProtos
       (GracefulFailoverResponseProto)
 
type ZKFCProtocolService = P'.Service '[CedeActive, GracefulFailover]
 
zKFCProtocolService :: ZKFCProtocolService
zKFCProtocolService = P'.Service
 
type CedeActive =
     P'.Method ".hadoop.common.ZKFCProtocolService.cedeActive" ZKFCProtocolProtos.CedeActiveRequestProto
      ZKFCProtocolProtos.CedeActiveResponseProto
 
type GracefulFailover =
     P'.Method ".hadoop.common.ZKFCProtocolService.gracefulFailover" ZKFCProtocolProtos.GracefulFailoverRequestProto
      ZKFCProtocolProtos.GracefulFailoverResponseProto
 
cedeActive :: CedeActive
cedeActive = P'.Method
 
gracefulFailover :: GracefulFailover
gracefulFailover = P'.Method