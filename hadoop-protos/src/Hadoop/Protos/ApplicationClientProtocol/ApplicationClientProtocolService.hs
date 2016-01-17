{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ApplicationClientProtocol.ApplicationClientProtocolService
       (ApplicationClientProtocolService, applicationClientProtocolService, GetNewApplication, GetApplicationReport,
        SubmitApplication, ForceKillApplication, GetClusterMetrics, GetApplications, GetClusterNodes, GetQueueInfo,
        GetQueueUserAcls, GetDelegationToken, RenewDelegationToken, CancelDelegationToken, MoveApplicationAcrossQueues,
        GetApplicationAttemptReport, GetApplicationAttempts, GetContainerReport, GetContainers, SubmitReservation,
        UpdateReservation, DeleteReservation, GetNodeToLabels, GetLabelsToNodes, GetClusterNodeLabels, UpdateApplicationPriority,
        getNewApplication, getApplicationReport, submitApplication, forceKillApplication, getClusterMetrics, getApplications,
        getClusterNodes, getQueueInfo, getQueueUserAcls, getDelegationToken, renewDelegationToken, cancelDelegationToken,
        moveApplicationAcrossQueues, getApplicationAttemptReport, getApplicationAttempts, getContainerReport, getContainers,
        submitReservation, updateReservation, deleteReservation, getNodeToLabels, getLabelsToNodes, getClusterNodeLabels,
        updateApplicationPriority)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServiceProtos.GetNewApplicationRequestProto as YarnServiceProtos (GetNewApplicationRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationReportRequestProto as YarnServiceProtos
       (GetApplicationReportRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.SubmitApplicationRequestProto as YarnServiceProtos (SubmitApplicationRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.KillApplicationRequestProto as YarnServiceProtos (KillApplicationRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetClusterMetricsRequestProto as YarnServiceProtos (GetClusterMetricsRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationsRequestProto as YarnServiceProtos (GetApplicationsRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetClusterNodesRequestProto as YarnServiceProtos (GetClusterNodesRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetQueueInfoRequestProto as YarnServiceProtos (GetQueueInfoRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetQueueUserAclsInfoRequestProto as YarnServiceProtos
       (GetQueueUserAclsInfoRequestProto)
import qualified Hadoop.Protos.SecurityProtos.GetDelegationTokenRequestProto as SecurityProtos (GetDelegationTokenRequestProto)
import qualified Hadoop.Protos.SecurityProtos.RenewDelegationTokenRequestProto as SecurityProtos (RenewDelegationTokenRequestProto)
import qualified Hadoop.Protos.SecurityProtos.CancelDelegationTokenRequestProto as SecurityProtos
       (CancelDelegationTokenRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.MoveApplicationAcrossQueuesRequestProto as YarnServiceProtos
       (MoveApplicationAcrossQueuesRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationAttemptReportRequestProto as YarnServiceProtos
       (GetApplicationAttemptReportRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationAttemptsRequestProto as YarnServiceProtos
       (GetApplicationAttemptsRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetContainerReportRequestProto as YarnServiceProtos
       (GetContainerReportRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetContainersRequestProto as YarnServiceProtos (GetContainersRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.ReservationSubmissionRequestProto as YarnServiceProtos
       (ReservationSubmissionRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.ReservationUpdateRequestProto as YarnServiceProtos (ReservationUpdateRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.ReservationDeleteRequestProto as YarnServiceProtos (ReservationDeleteRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetNodesToLabelsRequestProto as YarnServiceProtos (GetNodesToLabelsRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetLabelsToNodesRequestProto as YarnServiceProtos (GetLabelsToNodesRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetClusterNodeLabelsRequestProto as YarnServiceProtos
       (GetClusterNodeLabelsRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.UpdateApplicationPriorityRequestProto as YarnServiceProtos
       (UpdateApplicationPriorityRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetNewApplicationResponseProto as YarnServiceProtos
       (GetNewApplicationResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationReportResponseProto as YarnServiceProtos
       (GetApplicationReportResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.SubmitApplicationResponseProto as YarnServiceProtos
       (SubmitApplicationResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.KillApplicationResponseProto as YarnServiceProtos (KillApplicationResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetClusterMetricsResponseProto as YarnServiceProtos
       (GetClusterMetricsResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationsResponseProto as YarnServiceProtos (GetApplicationsResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetClusterNodesResponseProto as YarnServiceProtos (GetClusterNodesResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetQueueInfoResponseProto as YarnServiceProtos (GetQueueInfoResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetQueueUserAclsInfoResponseProto as YarnServiceProtos
       (GetQueueUserAclsInfoResponseProto)
import qualified Hadoop.Protos.SecurityProtos.GetDelegationTokenResponseProto as SecurityProtos (GetDelegationTokenResponseProto)
import qualified Hadoop.Protos.SecurityProtos.RenewDelegationTokenResponseProto as SecurityProtos
       (RenewDelegationTokenResponseProto)
import qualified Hadoop.Protos.SecurityProtos.CancelDelegationTokenResponseProto as SecurityProtos
       (CancelDelegationTokenResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.MoveApplicationAcrossQueuesResponseProto as YarnServiceProtos
       (MoveApplicationAcrossQueuesResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationAttemptReportResponseProto as YarnServiceProtos
       (GetApplicationAttemptReportResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationAttemptsResponseProto as YarnServiceProtos
       (GetApplicationAttemptsResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetContainerReportResponseProto as YarnServiceProtos
       (GetContainerReportResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetContainersResponseProto as YarnServiceProtos (GetContainersResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.ReservationSubmissionResponseProto as YarnServiceProtos
       (ReservationSubmissionResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.ReservationUpdateResponseProto as YarnServiceProtos
       (ReservationUpdateResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.ReservationDeleteResponseProto as YarnServiceProtos
       (ReservationDeleteResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetNodesToLabelsResponseProto as YarnServiceProtos (GetNodesToLabelsResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetLabelsToNodesResponseProto as YarnServiceProtos (GetLabelsToNodesResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetClusterNodeLabelsResponseProto as YarnServiceProtos
       (GetClusterNodeLabelsResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.UpdateApplicationPriorityResponseProto as YarnServiceProtos
       (UpdateApplicationPriorityResponseProto)
 
type ApplicationClientProtocolService =
     P'.Service
      '[GetNewApplication, GetApplicationReport, SubmitApplication, ForceKillApplication, GetClusterMetrics, GetApplications,
        GetClusterNodes, GetQueueInfo, GetQueueUserAcls, GetDelegationToken, RenewDelegationToken, CancelDelegationToken,
        MoveApplicationAcrossQueues, GetApplicationAttemptReport, GetApplicationAttempts, GetContainerReport, GetContainers,
        SubmitReservation, UpdateReservation, DeleteReservation, GetNodeToLabels, GetLabelsToNodes, GetClusterNodeLabels,
        UpdateApplicationPriority]
 
applicationClientProtocolService :: ApplicationClientProtocolService
applicationClientProtocolService = P'.Service
 
type GetNewApplication =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getNewApplication" YarnServiceProtos.GetNewApplicationRequestProto
      YarnServiceProtos.GetNewApplicationResponseProto
 
type GetApplicationReport =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getApplicationReport"
      YarnServiceProtos.GetApplicationReportRequestProto
      YarnServiceProtos.GetApplicationReportResponseProto
 
type SubmitApplication =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.submitApplication" YarnServiceProtos.SubmitApplicationRequestProto
      YarnServiceProtos.SubmitApplicationResponseProto
 
type ForceKillApplication =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.forceKillApplication" YarnServiceProtos.KillApplicationRequestProto
      YarnServiceProtos.KillApplicationResponseProto
 
type GetClusterMetrics =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getClusterMetrics" YarnServiceProtos.GetClusterMetricsRequestProto
      YarnServiceProtos.GetClusterMetricsResponseProto
 
type GetApplications =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getApplications" YarnServiceProtos.GetApplicationsRequestProto
      YarnServiceProtos.GetApplicationsResponseProto
 
type GetClusterNodes =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getClusterNodes" YarnServiceProtos.GetClusterNodesRequestProto
      YarnServiceProtos.GetClusterNodesResponseProto
 
type GetQueueInfo =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getQueueInfo" YarnServiceProtos.GetQueueInfoRequestProto
      YarnServiceProtos.GetQueueInfoResponseProto
 
type GetQueueUserAcls =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getQueueUserAcls" YarnServiceProtos.GetQueueUserAclsInfoRequestProto
      YarnServiceProtos.GetQueueUserAclsInfoResponseProto
 
type GetDelegationToken =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getDelegationToken" SecurityProtos.GetDelegationTokenRequestProto
      SecurityProtos.GetDelegationTokenResponseProto
 
type RenewDelegationToken =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.renewDelegationToken" SecurityProtos.RenewDelegationTokenRequestProto
      SecurityProtos.RenewDelegationTokenResponseProto
 
type CancelDelegationToken =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.cancelDelegationToken"
      SecurityProtos.CancelDelegationTokenRequestProto
      SecurityProtos.CancelDelegationTokenResponseProto
 
type MoveApplicationAcrossQueues =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.moveApplicationAcrossQueues"
      YarnServiceProtos.MoveApplicationAcrossQueuesRequestProto
      YarnServiceProtos.MoveApplicationAcrossQueuesResponseProto
 
type GetApplicationAttemptReport =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getApplicationAttemptReport"
      YarnServiceProtos.GetApplicationAttemptReportRequestProto
      YarnServiceProtos.GetApplicationAttemptReportResponseProto
 
type GetApplicationAttempts =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getApplicationAttempts"
      YarnServiceProtos.GetApplicationAttemptsRequestProto
      YarnServiceProtos.GetApplicationAttemptsResponseProto
 
type GetContainerReport =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getContainerReport" YarnServiceProtos.GetContainerReportRequestProto
      YarnServiceProtos.GetContainerReportResponseProto
 
type GetContainers =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getContainers" YarnServiceProtos.GetContainersRequestProto
      YarnServiceProtos.GetContainersResponseProto
 
type SubmitReservation =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.submitReservation" YarnServiceProtos.ReservationSubmissionRequestProto
      YarnServiceProtos.ReservationSubmissionResponseProto
 
type UpdateReservation =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.updateReservation" YarnServiceProtos.ReservationUpdateRequestProto
      YarnServiceProtos.ReservationUpdateResponseProto
 
type DeleteReservation =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.deleteReservation" YarnServiceProtos.ReservationDeleteRequestProto
      YarnServiceProtos.ReservationDeleteResponseProto
 
type GetNodeToLabels =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getNodeToLabels" YarnServiceProtos.GetNodesToLabelsRequestProto
      YarnServiceProtos.GetNodesToLabelsResponseProto
 
type GetLabelsToNodes =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getLabelsToNodes" YarnServiceProtos.GetLabelsToNodesRequestProto
      YarnServiceProtos.GetLabelsToNodesResponseProto
 
type GetClusterNodeLabels =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.getClusterNodeLabels"
      YarnServiceProtos.GetClusterNodeLabelsRequestProto
      YarnServiceProtos.GetClusterNodeLabelsResponseProto
 
type UpdateApplicationPriority =
     P'.Method ".hadoop.yarn.ApplicationClientProtocolService.updateApplicationPriority"
      YarnServiceProtos.UpdateApplicationPriorityRequestProto
      YarnServiceProtos.UpdateApplicationPriorityResponseProto
 
getNewApplication :: GetNewApplication
getNewApplication = P'.Method
 
getApplicationReport :: GetApplicationReport
getApplicationReport = P'.Method
 
submitApplication :: SubmitApplication
submitApplication = P'.Method
 
forceKillApplication :: ForceKillApplication
forceKillApplication = P'.Method
 
getClusterMetrics :: GetClusterMetrics
getClusterMetrics = P'.Method
 
getApplications :: GetApplications
getApplications = P'.Method
 
getClusterNodes :: GetClusterNodes
getClusterNodes = P'.Method
 
getQueueInfo :: GetQueueInfo
getQueueInfo = P'.Method
 
getQueueUserAcls :: GetQueueUserAcls
getQueueUserAcls = P'.Method
 
getDelegationToken :: GetDelegationToken
getDelegationToken = P'.Method
 
renewDelegationToken :: RenewDelegationToken
renewDelegationToken = P'.Method
 
cancelDelegationToken :: CancelDelegationToken
cancelDelegationToken = P'.Method
 
moveApplicationAcrossQueues :: MoveApplicationAcrossQueues
moveApplicationAcrossQueues = P'.Method
 
getApplicationAttemptReport :: GetApplicationAttemptReport
getApplicationAttemptReport = P'.Method
 
getApplicationAttempts :: GetApplicationAttempts
getApplicationAttempts = P'.Method
 
getContainerReport :: GetContainerReport
getContainerReport = P'.Method
 
getContainers :: GetContainers
getContainers = P'.Method
 
submitReservation :: SubmitReservation
submitReservation = P'.Method
 
updateReservation :: UpdateReservation
updateReservation = P'.Method
 
deleteReservation :: DeleteReservation
deleteReservation = P'.Method
 
getNodeToLabels :: GetNodeToLabels
getNodeToLabels = P'.Method
 
getLabelsToNodes :: GetLabelsToNodes
getLabelsToNodes = P'.Method
 
getClusterNodeLabels :: GetClusterNodeLabels
getClusterNodeLabels = P'.Method
 
updateApplicationPriority :: UpdateApplicationPriority
updateApplicationPriority = P'.Method