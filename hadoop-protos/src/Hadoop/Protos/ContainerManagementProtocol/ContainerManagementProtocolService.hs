{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ContainerManagementProtocol.ContainerManagementProtocolService
       (ContainerManagementProtocolService, containerManagementProtocolService, StartContainers, StopContainers,
        GetContainerStatuses, startContainers, stopContainers, getContainerStatuses)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServiceProtos.StartContainersRequestProto as YarnServiceProtos (StartContainersRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.StopContainersRequestProto as YarnServiceProtos (StopContainersRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetContainerStatusesRequestProto as YarnServiceProtos
       (GetContainerStatusesRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.StartContainersResponseProto as YarnServiceProtos (StartContainersResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.StopContainersResponseProto as YarnServiceProtos (StopContainersResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetContainerStatusesResponseProto as YarnServiceProtos
       (GetContainerStatusesResponseProto)
 
type ContainerManagementProtocolService = P'.Service '[StartContainers, StopContainers, GetContainerStatuses]
 
containerManagementProtocolService :: ContainerManagementProtocolService
containerManagementProtocolService = P'.Service
 
type StartContainers =
     P'.Method ".hadoop.yarn.ContainerManagementProtocolService.startContainers" YarnServiceProtos.StartContainersRequestProto
      YarnServiceProtos.StartContainersResponseProto
 
type StopContainers =
     P'.Method ".hadoop.yarn.ContainerManagementProtocolService.stopContainers" YarnServiceProtos.StopContainersRequestProto
      YarnServiceProtos.StopContainersResponseProto
 
type GetContainerStatuses =
     P'.Method ".hadoop.yarn.ContainerManagementProtocolService.getContainerStatuses"
      YarnServiceProtos.GetContainerStatusesRequestProto
      YarnServiceProtos.GetContainerStatusesResponseProto
 
startContainers :: StartContainers
startContainers = P'.Method
 
stopContainers :: StopContainers
stopContainers = P'.Method
 
getContainerStatuses :: GetContainerStatuses
getContainerStatuses = P'.Method