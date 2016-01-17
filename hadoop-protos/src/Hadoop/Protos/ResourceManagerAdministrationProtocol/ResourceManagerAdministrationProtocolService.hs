{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ResourceManagerAdministrationProtocol.ResourceManagerAdministrationProtocolService
       (ResourceManagerAdministrationProtocolService, resourceManagerAdministrationProtocolService, RefreshQueues, RefreshNodes,
        RefreshSuperUserGroupsConfiguration, RefreshUserToGroupsMappings, RefreshAdminAcls, RefreshServiceAcls, GetGroupsForUser,
        UpdateNodeResource, AddToClusterNodeLabels, RemoveFromClusterNodeLabels, ReplaceLabelsOnNodes, CheckForDecommissioningNodes,
        RefreshClusterMaxPriority, refreshQueues, refreshNodes, refreshSuperUserGroupsConfiguration, refreshUserToGroupsMappings,
        refreshAdminAcls, refreshServiceAcls, getGroupsForUser, updateNodeResource, addToClusterNodeLabels,
        removeFromClusterNodeLabels, replaceLabelsOnNodes, checkForDecommissioningNodes, refreshClusterMaxPriority)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshQueuesRequestProto
       as YarnServerResourceManagerServiceProtos (RefreshQueuesRequestProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshNodesRequestProto
       as YarnServerResourceManagerServiceProtos (RefreshNodesRequestProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshSuperUserGroupsConfigurationRequestProto
       as YarnServerResourceManagerServiceProtos (RefreshSuperUserGroupsConfigurationRequestProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshUserToGroupsMappingsRequestProto
       as YarnServerResourceManagerServiceProtos (RefreshUserToGroupsMappingsRequestProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshAdminAclsRequestProto
       as YarnServerResourceManagerServiceProtos (RefreshAdminAclsRequestProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshServiceAclsRequestProto
       as YarnServerResourceManagerServiceProtos (RefreshServiceAclsRequestProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.GetGroupsForUserRequestProto
       as YarnServerResourceManagerServiceProtos (GetGroupsForUserRequestProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.UpdateNodeResourceRequestProto
       as YarnServerResourceManagerServiceProtos (UpdateNodeResourceRequestProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.AddToClusterNodeLabelsRequestProto
       as YarnServerResourceManagerServiceProtos (AddToClusterNodeLabelsRequestProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RemoveFromClusterNodeLabelsRequestProto
       as YarnServerResourceManagerServiceProtos (RemoveFromClusterNodeLabelsRequestProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.ReplaceLabelsOnNodeRequestProto
       as YarnServerResourceManagerServiceProtos (ReplaceLabelsOnNodeRequestProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.CheckForDecommissioningNodesRequestProto
       as YarnServerResourceManagerServiceProtos (CheckForDecommissioningNodesRequestProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshClusterMaxPriorityRequestProto
       as YarnServerResourceManagerServiceProtos (RefreshClusterMaxPriorityRequestProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshQueuesResponseProto
       as YarnServerResourceManagerServiceProtos (RefreshQueuesResponseProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshNodesResponseProto
       as YarnServerResourceManagerServiceProtos (RefreshNodesResponseProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshSuperUserGroupsConfigurationResponseProto
       as YarnServerResourceManagerServiceProtos (RefreshSuperUserGroupsConfigurationResponseProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshUserToGroupsMappingsResponseProto
       as YarnServerResourceManagerServiceProtos (RefreshUserToGroupsMappingsResponseProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshAdminAclsResponseProto
       as YarnServerResourceManagerServiceProtos (RefreshAdminAclsResponseProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshServiceAclsResponseProto
       as YarnServerResourceManagerServiceProtos (RefreshServiceAclsResponseProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.GetGroupsForUserResponseProto
       as YarnServerResourceManagerServiceProtos (GetGroupsForUserResponseProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.UpdateNodeResourceResponseProto
       as YarnServerResourceManagerServiceProtos (UpdateNodeResourceResponseProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.AddToClusterNodeLabelsResponseProto
       as YarnServerResourceManagerServiceProtos (AddToClusterNodeLabelsResponseProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RemoveFromClusterNodeLabelsResponseProto
       as YarnServerResourceManagerServiceProtos (RemoveFromClusterNodeLabelsResponseProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.ReplaceLabelsOnNodeResponseProto
       as YarnServerResourceManagerServiceProtos (ReplaceLabelsOnNodeResponseProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.CheckForDecommissioningNodesResponseProto
       as YarnServerResourceManagerServiceProtos (CheckForDecommissioningNodesResponseProto)
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshClusterMaxPriorityResponseProto
       as YarnServerResourceManagerServiceProtos (RefreshClusterMaxPriorityResponseProto)
 
type ResourceManagerAdministrationProtocolService =
     P'.Service
      '[RefreshQueues, RefreshNodes, RefreshSuperUserGroupsConfiguration, RefreshUserToGroupsMappings, RefreshAdminAcls,
        RefreshServiceAcls, GetGroupsForUser, UpdateNodeResource, AddToClusterNodeLabels, RemoveFromClusterNodeLabels,
        ReplaceLabelsOnNodes, CheckForDecommissioningNodes, RefreshClusterMaxPriority]
 
resourceManagerAdministrationProtocolService :: ResourceManagerAdministrationProtocolService
resourceManagerAdministrationProtocolService = P'.Service
 
type RefreshQueues =
     P'.Method ".hadoop.yarn.ResourceManagerAdministrationProtocolService.refreshQueues"
      YarnServerResourceManagerServiceProtos.RefreshQueuesRequestProto
      YarnServerResourceManagerServiceProtos.RefreshQueuesResponseProto
 
type RefreshNodes =
     P'.Method ".hadoop.yarn.ResourceManagerAdministrationProtocolService.refreshNodes"
      YarnServerResourceManagerServiceProtos.RefreshNodesRequestProto
      YarnServerResourceManagerServiceProtos.RefreshNodesResponseProto
 
type RefreshSuperUserGroupsConfiguration =
     P'.Method ".hadoop.yarn.ResourceManagerAdministrationProtocolService.refreshSuperUserGroupsConfiguration"
      YarnServerResourceManagerServiceProtos.RefreshSuperUserGroupsConfigurationRequestProto
      YarnServerResourceManagerServiceProtos.RefreshSuperUserGroupsConfigurationResponseProto
 
type RefreshUserToGroupsMappings =
     P'.Method ".hadoop.yarn.ResourceManagerAdministrationProtocolService.refreshUserToGroupsMappings"
      YarnServerResourceManagerServiceProtos.RefreshUserToGroupsMappingsRequestProto
      YarnServerResourceManagerServiceProtos.RefreshUserToGroupsMappingsResponseProto
 
type RefreshAdminAcls =
     P'.Method ".hadoop.yarn.ResourceManagerAdministrationProtocolService.refreshAdminAcls"
      YarnServerResourceManagerServiceProtos.RefreshAdminAclsRequestProto
      YarnServerResourceManagerServiceProtos.RefreshAdminAclsResponseProto
 
type RefreshServiceAcls =
     P'.Method ".hadoop.yarn.ResourceManagerAdministrationProtocolService.refreshServiceAcls"
      YarnServerResourceManagerServiceProtos.RefreshServiceAclsRequestProto
      YarnServerResourceManagerServiceProtos.RefreshServiceAclsResponseProto
 
type GetGroupsForUser =
     P'.Method ".hadoop.yarn.ResourceManagerAdministrationProtocolService.getGroupsForUser"
      YarnServerResourceManagerServiceProtos.GetGroupsForUserRequestProto
      YarnServerResourceManagerServiceProtos.GetGroupsForUserResponseProto
 
type UpdateNodeResource =
     P'.Method ".hadoop.yarn.ResourceManagerAdministrationProtocolService.updateNodeResource"
      YarnServerResourceManagerServiceProtos.UpdateNodeResourceRequestProto
      YarnServerResourceManagerServiceProtos.UpdateNodeResourceResponseProto
 
type AddToClusterNodeLabels =
     P'.Method ".hadoop.yarn.ResourceManagerAdministrationProtocolService.addToClusterNodeLabels"
      YarnServerResourceManagerServiceProtos.AddToClusterNodeLabelsRequestProto
      YarnServerResourceManagerServiceProtos.AddToClusterNodeLabelsResponseProto
 
type RemoveFromClusterNodeLabels =
     P'.Method ".hadoop.yarn.ResourceManagerAdministrationProtocolService.removeFromClusterNodeLabels"
      YarnServerResourceManagerServiceProtos.RemoveFromClusterNodeLabelsRequestProto
      YarnServerResourceManagerServiceProtos.RemoveFromClusterNodeLabelsResponseProto
 
type ReplaceLabelsOnNodes =
     P'.Method ".hadoop.yarn.ResourceManagerAdministrationProtocolService.replaceLabelsOnNodes"
      YarnServerResourceManagerServiceProtos.ReplaceLabelsOnNodeRequestProto
      YarnServerResourceManagerServiceProtos.ReplaceLabelsOnNodeResponseProto
 
type CheckForDecommissioningNodes =
     P'.Method ".hadoop.yarn.ResourceManagerAdministrationProtocolService.checkForDecommissioningNodes"
      YarnServerResourceManagerServiceProtos.CheckForDecommissioningNodesRequestProto
      YarnServerResourceManagerServiceProtos.CheckForDecommissioningNodesResponseProto
 
type RefreshClusterMaxPriority =
     P'.Method ".hadoop.yarn.ResourceManagerAdministrationProtocolService.refreshClusterMaxPriority"
      YarnServerResourceManagerServiceProtos.RefreshClusterMaxPriorityRequestProto
      YarnServerResourceManagerServiceProtos.RefreshClusterMaxPriorityResponseProto
 
refreshQueues :: RefreshQueues
refreshQueues = P'.Method
 
refreshNodes :: RefreshNodes
refreshNodes = P'.Method
 
refreshSuperUserGroupsConfiguration :: RefreshSuperUserGroupsConfiguration
refreshSuperUserGroupsConfiguration = P'.Method
 
refreshUserToGroupsMappings :: RefreshUserToGroupsMappings
refreshUserToGroupsMappings = P'.Method
 
refreshAdminAcls :: RefreshAdminAcls
refreshAdminAcls = P'.Method
 
refreshServiceAcls :: RefreshServiceAcls
refreshServiceAcls = P'.Method
 
getGroupsForUser :: GetGroupsForUser
getGroupsForUser = P'.Method
 
updateNodeResource :: UpdateNodeResource
updateNodeResource = P'.Method
 
addToClusterNodeLabels :: AddToClusterNodeLabels
addToClusterNodeLabels = P'.Method
 
removeFromClusterNodeLabels :: RemoveFromClusterNodeLabels
removeFromClusterNodeLabels = P'.Method
 
replaceLabelsOnNodes :: ReplaceLabelsOnNodes
replaceLabelsOnNodes = P'.Method
 
checkForDecommissioningNodes :: CheckForDecommissioningNodes
checkForDecommissioningNodes = P'.Method
 
refreshClusterMaxPriority :: RefreshClusterMaxPriority
refreshClusterMaxPriority = P'.Method