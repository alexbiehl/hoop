{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ApplicationMasterProtocol.ApplicationMasterProtocolService
       (ApplicationMasterProtocolService, applicationMasterProtocolService, RegisterApplicationMaster, FinishApplicationMaster,
        Allocate, registerApplicationMaster, finishApplicationMaster, allocate)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServiceProtos.RegisterApplicationMasterRequestProto as YarnServiceProtos
       (RegisterApplicationMasterRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.FinishApplicationMasterRequestProto as YarnServiceProtos
       (FinishApplicationMasterRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.AllocateRequestProto as YarnServiceProtos (AllocateRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.RegisterApplicationMasterResponseProto as YarnServiceProtos
       (RegisterApplicationMasterResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.FinishApplicationMasterResponseProto as YarnServiceProtos
       (FinishApplicationMasterResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.AllocateResponseProto as YarnServiceProtos (AllocateResponseProto)
 
type ApplicationMasterProtocolService = P'.Service '[RegisterApplicationMaster, FinishApplicationMaster, Allocate]
 
applicationMasterProtocolService :: ApplicationMasterProtocolService
applicationMasterProtocolService = P'.Service
 
type RegisterApplicationMaster =
     P'.Method ".hadoop.yarn.ApplicationMasterProtocolService.registerApplicationMaster"
      YarnServiceProtos.RegisterApplicationMasterRequestProto
      YarnServiceProtos.RegisterApplicationMasterResponseProto
 
type FinishApplicationMaster =
     P'.Method ".hadoop.yarn.ApplicationMasterProtocolService.finishApplicationMaster"
      YarnServiceProtos.FinishApplicationMasterRequestProto
      YarnServiceProtos.FinishApplicationMasterResponseProto
 
type Allocate =
     P'.Method ".hadoop.yarn.ApplicationMasterProtocolService.allocate" YarnServiceProtos.AllocateRequestProto
      YarnServiceProtos.AllocateResponseProto
 
registerApplicationMaster :: RegisterApplicationMaster
registerApplicationMaster = P'.Method
 
finishApplicationMaster :: FinishApplicationMaster
finishApplicationMaster = P'.Method
 
allocate :: Allocate
allocate = P'.Method