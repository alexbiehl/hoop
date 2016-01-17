{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.SCMAdminProtocol.SCMAdminProtocolService
       (SCMAdminProtocolService, sCMAdminProtocolService, RunCleanerTask, runCleanerTask) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServiceProtos.RunSharedCacheCleanerTaskRequestProto as YarnServiceProtos
       (RunSharedCacheCleanerTaskRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.RunSharedCacheCleanerTaskResponseProto as YarnServiceProtos
       (RunSharedCacheCleanerTaskResponseProto)
 
type SCMAdminProtocolService = P'.Service '[RunCleanerTask]
 
sCMAdminProtocolService :: SCMAdminProtocolService
sCMAdminProtocolService = P'.Service
 
type RunCleanerTask =
     P'.Method ".hadoop.yarn.SCMAdminProtocolService.runCleanerTask" YarnServiceProtos.RunSharedCacheCleanerTaskRequestProto
      YarnServiceProtos.RunSharedCacheCleanerTaskResponseProto
 
runCleanerTask :: RunCleanerTask
runCleanerTask = P'.Method