{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.SCMUploaderProtocol.SCMUploaderProtocolService
       (SCMUploaderProtocolService, sCMUploaderProtocolService, Notify, CanUpload, notify, canUpload) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServerCommonServiceProtos.SCMUploaderNotifyRequestProto as YarnServerCommonServiceProtos
       (SCMUploaderNotifyRequestProto)
import qualified Hadoop.Protos.YarnServerCommonServiceProtos.SCMUploaderCanUploadRequestProto as YarnServerCommonServiceProtos
       (SCMUploaderCanUploadRequestProto)
import qualified Hadoop.Protos.YarnServerCommonServiceProtos.SCMUploaderNotifyResponseProto as YarnServerCommonServiceProtos
       (SCMUploaderNotifyResponseProto)
import qualified Hadoop.Protos.YarnServerCommonServiceProtos.SCMUploaderCanUploadResponseProto as YarnServerCommonServiceProtos
       (SCMUploaderCanUploadResponseProto)
 
type SCMUploaderProtocolService = P'.Service '[Notify, CanUpload]
 
sCMUploaderProtocolService :: SCMUploaderProtocolService
sCMUploaderProtocolService = P'.Service
 
type Notify =
     P'.Method ".hadoop.yarn.SCMUploaderProtocolService.notify" YarnServerCommonServiceProtos.SCMUploaderNotifyRequestProto
      YarnServerCommonServiceProtos.SCMUploaderNotifyResponseProto
 
type CanUpload =
     P'.Method ".hadoop.yarn.SCMUploaderProtocolService.canUpload" YarnServerCommonServiceProtos.SCMUploaderCanUploadRequestProto
      YarnServerCommonServiceProtos.SCMUploaderCanUploadResponseProto
 
notify :: Notify
notify = P'.Method
 
canUpload :: CanUpload
canUpload = P'.Method