{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.LocalizationProtocol.LocalizationProtocolService
       (LocalizationProtocolService, localizationProtocolService, Heartbeat, heartbeat) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServerNodemanagerServiceProtos.LocalizerStatusProto as YarnServerNodemanagerServiceProtos
       (LocalizerStatusProto)
import qualified Hadoop.Protos.YarnServerNodemanagerServiceProtos.LocalizerHeartbeatResponseProto
       as YarnServerNodemanagerServiceProtos (LocalizerHeartbeatResponseProto)
 
type LocalizationProtocolService = P'.Service '[Heartbeat]
 
localizationProtocolService :: LocalizationProtocolService
localizationProtocolService = P'.Service
 
type Heartbeat =
     P'.Method ".hadoop.yarn.LocalizationProtocolService.heartbeat" YarnServerNodemanagerServiceProtos.LocalizerStatusProto
      YarnServerNodemanagerServiceProtos.LocalizerHeartbeatResponseProto
 
heartbeat :: Heartbeat
heartbeat = P'.Method