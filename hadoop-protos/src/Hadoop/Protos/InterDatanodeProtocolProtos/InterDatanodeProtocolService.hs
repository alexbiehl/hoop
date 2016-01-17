{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InterDatanodeProtocolProtos.InterDatanodeProtocolService
       (InterDatanodeProtocolService, interDatanodeProtocolService, InitReplicaRecovery, UpdateReplicaUnderRecovery,
        initReplicaRecovery, updateReplicaUnderRecovery)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.InterDatanodeProtocolProtos.InitReplicaRecoveryRequestProto as InterDatanodeProtocolProtos
       (InitReplicaRecoveryRequestProto)
import qualified Hadoop.Protos.InterDatanodeProtocolProtos.UpdateReplicaUnderRecoveryRequestProto as InterDatanodeProtocolProtos
       (UpdateReplicaUnderRecoveryRequestProto)
import qualified Hadoop.Protos.InterDatanodeProtocolProtos.InitReplicaRecoveryResponseProto as InterDatanodeProtocolProtos
       (InitReplicaRecoveryResponseProto)
import qualified Hadoop.Protos.InterDatanodeProtocolProtos.UpdateReplicaUnderRecoveryResponseProto as InterDatanodeProtocolProtos
       (UpdateReplicaUnderRecoveryResponseProto)
 
type InterDatanodeProtocolService = P'.Service '[InitReplicaRecovery, UpdateReplicaUnderRecovery]
 
interDatanodeProtocolService :: InterDatanodeProtocolService
interDatanodeProtocolService = P'.Service
 
type InitReplicaRecovery =
     P'.Method ".hadoop.hdfs.InterDatanodeProtocolService.initReplicaRecovery"
      InterDatanodeProtocolProtos.InitReplicaRecoveryRequestProto
      InterDatanodeProtocolProtos.InitReplicaRecoveryResponseProto
 
type UpdateReplicaUnderRecovery =
     P'.Method ".hadoop.hdfs.InterDatanodeProtocolService.updateReplicaUnderRecovery"
      InterDatanodeProtocolProtos.UpdateReplicaUnderRecoveryRequestProto
      InterDatanodeProtocolProtos.UpdateReplicaUnderRecoveryResponseProto
 
initReplicaRecovery :: InitReplicaRecovery
initReplicaRecovery = P'.Method
 
updateReplicaUnderRecovery :: UpdateReplicaUnderRecovery
updateReplicaUnderRecovery = P'.Method