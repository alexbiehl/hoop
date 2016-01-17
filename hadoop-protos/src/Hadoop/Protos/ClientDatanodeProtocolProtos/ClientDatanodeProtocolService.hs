{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientDatanodeProtocolProtos.ClientDatanodeProtocolService
       (ClientDatanodeProtocolService, clientDatanodeProtocolService, GetReplicaVisibleLength, RefreshNamenodes, DeleteBlockPool,
        GetBlockLocalPathInfo, ShutdownDatanode, GetDatanodeInfo, GetReconfigurationStatus, StartReconfiguration,
        ListReconfigurableProperties, TriggerBlockReport, GetBalancerBandwidth, getReplicaVisibleLength, refreshNamenodes,
        deleteBlockPool, getBlockLocalPathInfo, shutdownDatanode, getDatanodeInfo, getReconfigurationStatus, startReconfiguration,
        listReconfigurableProperties, triggerBlockReport, getBalancerBandwidth)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.GetReplicaVisibleLengthRequestProto as ClientDatanodeProtocolProtos
       (GetReplicaVisibleLengthRequestProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.RefreshNamenodesRequestProto as ClientDatanodeProtocolProtos
       (RefreshNamenodesRequestProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.DeleteBlockPoolRequestProto as ClientDatanodeProtocolProtos
       (DeleteBlockPoolRequestProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.GetBlockLocalPathInfoRequestProto as ClientDatanodeProtocolProtos
       (GetBlockLocalPathInfoRequestProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.ShutdownDatanodeRequestProto as ClientDatanodeProtocolProtos
       (ShutdownDatanodeRequestProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.GetDatanodeInfoRequestProto as ClientDatanodeProtocolProtos
       (GetDatanodeInfoRequestProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.GetReconfigurationStatusRequestProto as ClientDatanodeProtocolProtos
       (GetReconfigurationStatusRequestProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.StartReconfigurationRequestProto as ClientDatanodeProtocolProtos
       (StartReconfigurationRequestProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.ListReconfigurablePropertiesRequestProto as ClientDatanodeProtocolProtos
       (ListReconfigurablePropertiesRequestProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.TriggerBlockReportRequestProto as ClientDatanodeProtocolProtos
       (TriggerBlockReportRequestProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.GetBalancerBandwidthRequestProto as ClientDatanodeProtocolProtos
       (GetBalancerBandwidthRequestProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.GetReplicaVisibleLengthResponseProto as ClientDatanodeProtocolProtos
       (GetReplicaVisibleLengthResponseProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.RefreshNamenodesResponseProto as ClientDatanodeProtocolProtos
       (RefreshNamenodesResponseProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.DeleteBlockPoolResponseProto as ClientDatanodeProtocolProtos
       (DeleteBlockPoolResponseProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.GetBlockLocalPathInfoResponseProto as ClientDatanodeProtocolProtos
       (GetBlockLocalPathInfoResponseProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.ShutdownDatanodeResponseProto as ClientDatanodeProtocolProtos
       (ShutdownDatanodeResponseProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.GetDatanodeInfoResponseProto as ClientDatanodeProtocolProtos
       (GetDatanodeInfoResponseProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.GetReconfigurationStatusResponseProto as ClientDatanodeProtocolProtos
       (GetReconfigurationStatusResponseProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.StartReconfigurationResponseProto as ClientDatanodeProtocolProtos
       (StartReconfigurationResponseProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.ListReconfigurablePropertiesResponseProto
       as ClientDatanodeProtocolProtos (ListReconfigurablePropertiesResponseProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.TriggerBlockReportResponseProto as ClientDatanodeProtocolProtos
       (TriggerBlockReportResponseProto)
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.GetBalancerBandwidthResponseProto as ClientDatanodeProtocolProtos
       (GetBalancerBandwidthResponseProto)
 
type ClientDatanodeProtocolService =
     P'.Service
      '[GetReplicaVisibleLength, RefreshNamenodes, DeleteBlockPool, GetBlockLocalPathInfo, ShutdownDatanode, GetDatanodeInfo,
        GetReconfigurationStatus, StartReconfiguration, ListReconfigurableProperties, TriggerBlockReport, GetBalancerBandwidth]
 
clientDatanodeProtocolService :: ClientDatanodeProtocolService
clientDatanodeProtocolService = P'.Service
 
type GetReplicaVisibleLength =
     P'.Method ".hadoop.hdfs.ClientDatanodeProtocolService.getReplicaVisibleLength"
      ClientDatanodeProtocolProtos.GetReplicaVisibleLengthRequestProto
      ClientDatanodeProtocolProtos.GetReplicaVisibleLengthResponseProto
 
type RefreshNamenodes =
     P'.Method ".hadoop.hdfs.ClientDatanodeProtocolService.refreshNamenodes"
      ClientDatanodeProtocolProtos.RefreshNamenodesRequestProto
      ClientDatanodeProtocolProtos.RefreshNamenodesResponseProto
 
type DeleteBlockPool =
     P'.Method ".hadoop.hdfs.ClientDatanodeProtocolService.deleteBlockPool" ClientDatanodeProtocolProtos.DeleteBlockPoolRequestProto
      ClientDatanodeProtocolProtos.DeleteBlockPoolResponseProto
 
type GetBlockLocalPathInfo =
     P'.Method ".hadoop.hdfs.ClientDatanodeProtocolService.getBlockLocalPathInfo"
      ClientDatanodeProtocolProtos.GetBlockLocalPathInfoRequestProto
      ClientDatanodeProtocolProtos.GetBlockLocalPathInfoResponseProto
 
type ShutdownDatanode =
     P'.Method ".hadoop.hdfs.ClientDatanodeProtocolService.shutdownDatanode"
      ClientDatanodeProtocolProtos.ShutdownDatanodeRequestProto
      ClientDatanodeProtocolProtos.ShutdownDatanodeResponseProto
 
type GetDatanodeInfo =
     P'.Method ".hadoop.hdfs.ClientDatanodeProtocolService.getDatanodeInfo" ClientDatanodeProtocolProtos.GetDatanodeInfoRequestProto
      ClientDatanodeProtocolProtos.GetDatanodeInfoResponseProto
 
type GetReconfigurationStatus =
     P'.Method ".hadoop.hdfs.ClientDatanodeProtocolService.getReconfigurationStatus"
      ClientDatanodeProtocolProtos.GetReconfigurationStatusRequestProto
      ClientDatanodeProtocolProtos.GetReconfigurationStatusResponseProto
 
type StartReconfiguration =
     P'.Method ".hadoop.hdfs.ClientDatanodeProtocolService.startReconfiguration"
      ClientDatanodeProtocolProtos.StartReconfigurationRequestProto
      ClientDatanodeProtocolProtos.StartReconfigurationResponseProto
 
type ListReconfigurableProperties =
     P'.Method ".hadoop.hdfs.ClientDatanodeProtocolService.listReconfigurableProperties"
      ClientDatanodeProtocolProtos.ListReconfigurablePropertiesRequestProto
      ClientDatanodeProtocolProtos.ListReconfigurablePropertiesResponseProto
 
type TriggerBlockReport =
     P'.Method ".hadoop.hdfs.ClientDatanodeProtocolService.triggerBlockReport"
      ClientDatanodeProtocolProtos.TriggerBlockReportRequestProto
      ClientDatanodeProtocolProtos.TriggerBlockReportResponseProto
 
type GetBalancerBandwidth =
     P'.Method ".hadoop.hdfs.ClientDatanodeProtocolService.getBalancerBandwidth"
      ClientDatanodeProtocolProtos.GetBalancerBandwidthRequestProto
      ClientDatanodeProtocolProtos.GetBalancerBandwidthResponseProto
 
getReplicaVisibleLength :: GetReplicaVisibleLength
getReplicaVisibleLength = P'.Method
 
refreshNamenodes :: RefreshNamenodes
refreshNamenodes = P'.Method
 
deleteBlockPool :: DeleteBlockPool
deleteBlockPool = P'.Method
 
getBlockLocalPathInfo :: GetBlockLocalPathInfo
getBlockLocalPathInfo = P'.Method
 
shutdownDatanode :: ShutdownDatanode
shutdownDatanode = P'.Method
 
getDatanodeInfo :: GetDatanodeInfo
getDatanodeInfo = P'.Method
 
getReconfigurationStatus :: GetReconfigurationStatus
getReconfigurationStatus = P'.Method
 
startReconfiguration :: StartReconfiguration
startReconfiguration = P'.Method
 
listReconfigurableProperties :: ListReconfigurableProperties
listReconfigurableProperties = P'.Method
 
triggerBlockReport :: TriggerBlockReport
triggerBlockReport = P'.Method
 
getBalancerBandwidth :: GetBalancerBandwidth
getBalancerBandwidth = P'.Method