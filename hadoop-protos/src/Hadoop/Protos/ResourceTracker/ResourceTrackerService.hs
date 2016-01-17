{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ResourceTracker.ResourceTrackerService
       (ResourceTrackerService, resourceTrackerService, RegisterNodeManager, NodeHeartbeat, UnRegisterNodeManager,
        registerNodeManager, nodeHeartbeat, unRegisterNodeManager)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServerCommonServiceProtos.RegisterNodeManagerRequestProto as YarnServerCommonServiceProtos
       (RegisterNodeManagerRequestProto)
import qualified Hadoop.Protos.YarnServerCommonServiceProtos.NodeHeartbeatRequestProto as YarnServerCommonServiceProtos
       (NodeHeartbeatRequestProto)
import qualified Hadoop.Protos.YarnServerCommonServiceProtos.UnRegisterNodeManagerRequestProto as YarnServerCommonServiceProtos
       (UnRegisterNodeManagerRequestProto)
import qualified Hadoop.Protos.YarnServerCommonServiceProtos.RegisterNodeManagerResponseProto as YarnServerCommonServiceProtos
       (RegisterNodeManagerResponseProto)
import qualified Hadoop.Protos.YarnServerCommonServiceProtos.NodeHeartbeatResponseProto as YarnServerCommonServiceProtos
       (NodeHeartbeatResponseProto)
import qualified Hadoop.Protos.YarnServerCommonServiceProtos.UnRegisterNodeManagerResponseProto as YarnServerCommonServiceProtos
       (UnRegisterNodeManagerResponseProto)
 
type ResourceTrackerService = P'.Service '[RegisterNodeManager, NodeHeartbeat, UnRegisterNodeManager]
 
resourceTrackerService :: ResourceTrackerService
resourceTrackerService = P'.Service
 
type RegisterNodeManager =
     P'.Method ".hadoop.yarn.ResourceTrackerService.registerNodeManager"
      YarnServerCommonServiceProtos.RegisterNodeManagerRequestProto
      YarnServerCommonServiceProtos.RegisterNodeManagerResponseProto
 
type NodeHeartbeat =
     P'.Method ".hadoop.yarn.ResourceTrackerService.nodeHeartbeat" YarnServerCommonServiceProtos.NodeHeartbeatRequestProto
      YarnServerCommonServiceProtos.NodeHeartbeatResponseProto
 
type UnRegisterNodeManager =
     P'.Method ".hadoop.yarn.ResourceTrackerService.unRegisterNodeManager"
      YarnServerCommonServiceProtos.UnRegisterNodeManagerRequestProto
      YarnServerCommonServiceProtos.UnRegisterNodeManagerResponseProto
 
registerNodeManager :: RegisterNodeManager
registerNodeManager = P'.Method
 
nodeHeartbeat :: NodeHeartbeat
nodeHeartbeat = P'.Method
 
unRegisterNodeManager :: UnRegisterNodeManager
unRegisterNodeManager = P'.Method