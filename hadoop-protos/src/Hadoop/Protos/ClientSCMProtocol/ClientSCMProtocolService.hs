{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientSCMProtocol.ClientSCMProtocolService
       (ClientSCMProtocolService, clientSCMProtocolService, Use, Release, use, release) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServiceProtos.UseSharedCacheResourceRequestProto as YarnServiceProtos
       (UseSharedCacheResourceRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.ReleaseSharedCacheResourceRequestProto as YarnServiceProtos
       (ReleaseSharedCacheResourceRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.UseSharedCacheResourceResponseProto as YarnServiceProtos
       (UseSharedCacheResourceResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.ReleaseSharedCacheResourceResponseProto as YarnServiceProtos
       (ReleaseSharedCacheResourceResponseProto)
 
type ClientSCMProtocolService = P'.Service '[Use, Release]
 
clientSCMProtocolService :: ClientSCMProtocolService
clientSCMProtocolService = P'.Service
 
type Use =
     P'.Method ".hadoop.yarn.ClientSCMProtocolService.use" YarnServiceProtos.UseSharedCacheResourceRequestProto
      YarnServiceProtos.UseSharedCacheResourceResponseProto
 
type Release =
     P'.Method ".hadoop.yarn.ClientSCMProtocolService.release" YarnServiceProtos.ReleaseSharedCacheResourceRequestProto
      YarnServiceProtos.ReleaseSharedCacheResourceResponseProto
 
use :: Use
use = P'.Method
 
release :: Release
release = P'.Method