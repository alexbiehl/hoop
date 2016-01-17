{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ApplicationHistoryProtocol.ApplicationHistoryProtocolService
       (ApplicationHistoryProtocolService, applicationHistoryProtocolService, GetApplicationReport, GetApplications,
        GetApplicationAttemptReport, GetApplicationAttempts, GetContainerReport, GetContainers, GetDelegationToken,
        RenewDelegationToken, CancelDelegationToken, getApplicationReport, getApplications, getApplicationAttemptReport,
        getApplicationAttempts, getContainerReport, getContainers, getDelegationToken, renewDelegationToken, cancelDelegationToken)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationReportRequestProto as YarnServiceProtos
       (GetApplicationReportRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationsRequestProto as YarnServiceProtos (GetApplicationsRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationAttemptReportRequestProto as YarnServiceProtos
       (GetApplicationAttemptReportRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationAttemptsRequestProto as YarnServiceProtos
       (GetApplicationAttemptsRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetContainerReportRequestProto as YarnServiceProtos
       (GetContainerReportRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetContainersRequestProto as YarnServiceProtos (GetContainersRequestProto)
import qualified Hadoop.Protos.SecurityProtos.GetDelegationTokenRequestProto as SecurityProtos (GetDelegationTokenRequestProto)
import qualified Hadoop.Protos.SecurityProtos.RenewDelegationTokenRequestProto as SecurityProtos (RenewDelegationTokenRequestProto)
import qualified Hadoop.Protos.SecurityProtos.CancelDelegationTokenRequestProto as SecurityProtos
       (CancelDelegationTokenRequestProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationReportResponseProto as YarnServiceProtos
       (GetApplicationReportResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationsResponseProto as YarnServiceProtos (GetApplicationsResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationAttemptReportResponseProto as YarnServiceProtos
       (GetApplicationAttemptReportResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetApplicationAttemptsResponseProto as YarnServiceProtos
       (GetApplicationAttemptsResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetContainerReportResponseProto as YarnServiceProtos
       (GetContainerReportResponseProto)
import qualified Hadoop.Protos.YarnServiceProtos.GetContainersResponseProto as YarnServiceProtos (GetContainersResponseProto)
import qualified Hadoop.Protos.SecurityProtos.GetDelegationTokenResponseProto as SecurityProtos (GetDelegationTokenResponseProto)
import qualified Hadoop.Protos.SecurityProtos.RenewDelegationTokenResponseProto as SecurityProtos
       (RenewDelegationTokenResponseProto)
import qualified Hadoop.Protos.SecurityProtos.CancelDelegationTokenResponseProto as SecurityProtos
       (CancelDelegationTokenResponseProto)
 
type ApplicationHistoryProtocolService =
     P'.Service
      '[GetApplicationReport, GetApplications, GetApplicationAttemptReport, GetApplicationAttempts, GetContainerReport,
        GetContainers, GetDelegationToken, RenewDelegationToken, CancelDelegationToken]
 
applicationHistoryProtocolService :: ApplicationHistoryProtocolService
applicationHistoryProtocolService = P'.Service
 
type GetApplicationReport =
     P'.Method ".hadoop.yarn.ApplicationHistoryProtocolService.getApplicationReport"
      YarnServiceProtos.GetApplicationReportRequestProto
      YarnServiceProtos.GetApplicationReportResponseProto
 
type GetApplications =
     P'.Method ".hadoop.yarn.ApplicationHistoryProtocolService.getApplications" YarnServiceProtos.GetApplicationsRequestProto
      YarnServiceProtos.GetApplicationsResponseProto
 
type GetApplicationAttemptReport =
     P'.Method ".hadoop.yarn.ApplicationHistoryProtocolService.getApplicationAttemptReport"
      YarnServiceProtos.GetApplicationAttemptReportRequestProto
      YarnServiceProtos.GetApplicationAttemptReportResponseProto
 
type GetApplicationAttempts =
     P'.Method ".hadoop.yarn.ApplicationHistoryProtocolService.getApplicationAttempts"
      YarnServiceProtos.GetApplicationAttemptsRequestProto
      YarnServiceProtos.GetApplicationAttemptsResponseProto
 
type GetContainerReport =
     P'.Method ".hadoop.yarn.ApplicationHistoryProtocolService.getContainerReport" YarnServiceProtos.GetContainerReportRequestProto
      YarnServiceProtos.GetContainerReportResponseProto
 
type GetContainers =
     P'.Method ".hadoop.yarn.ApplicationHistoryProtocolService.getContainers" YarnServiceProtos.GetContainersRequestProto
      YarnServiceProtos.GetContainersResponseProto
 
type GetDelegationToken =
     P'.Method ".hadoop.yarn.ApplicationHistoryProtocolService.getDelegationToken" SecurityProtos.GetDelegationTokenRequestProto
      SecurityProtos.GetDelegationTokenResponseProto
 
type RenewDelegationToken =
     P'.Method ".hadoop.yarn.ApplicationHistoryProtocolService.renewDelegationToken" SecurityProtos.RenewDelegationTokenRequestProto
      SecurityProtos.RenewDelegationTokenResponseProto
 
type CancelDelegationToken =
     P'.Method ".hadoop.yarn.ApplicationHistoryProtocolService.cancelDelegationToken"
      SecurityProtos.CancelDelegationTokenRequestProto
      SecurityProtos.CancelDelegationTokenResponseProto
 
getApplicationReport :: GetApplicationReport
getApplicationReport = P'.Method
 
getApplications :: GetApplications
getApplications = P'.Method
 
getApplicationAttemptReport :: GetApplicationAttemptReport
getApplicationAttemptReport = P'.Method
 
getApplicationAttempts :: GetApplicationAttempts
getApplicationAttempts = P'.Method
 
getContainerReport :: GetContainerReport
getContainerReport = P'.Method
 
getContainers :: GetContainers
getContainers = P'.Method
 
getDelegationToken :: GetDelegationToken
getDelegationToken = P'.Method
 
renewDelegationToken :: RenewDelegationToken
renewDelegationToken = P'.Method
 
cancelDelegationToken :: CancelDelegationToken
cancelDelegationToken = P'.Method