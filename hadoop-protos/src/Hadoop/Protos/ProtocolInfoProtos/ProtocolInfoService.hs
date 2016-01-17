{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ProtocolInfoProtos.ProtocolInfoService
       (ProtocolInfoService, protocolInfoService, GetProtocolVersions, GetProtocolSignature, getProtocolVersions,
        getProtocolSignature)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.ProtocolInfoProtos.GetProtocolVersionsRequestProto as ProtocolInfoProtos
       (GetProtocolVersionsRequestProto)
import qualified Hadoop.Protos.ProtocolInfoProtos.GetProtocolSignatureRequestProto as ProtocolInfoProtos
       (GetProtocolSignatureRequestProto)
import qualified Hadoop.Protos.ProtocolInfoProtos.GetProtocolVersionsResponseProto as ProtocolInfoProtos
       (GetProtocolVersionsResponseProto)
import qualified Hadoop.Protos.ProtocolInfoProtos.GetProtocolSignatureResponseProto as ProtocolInfoProtos
       (GetProtocolSignatureResponseProto)
 
type ProtocolInfoService = P'.Service '[GetProtocolVersions, GetProtocolSignature]
 
protocolInfoService :: ProtocolInfoService
protocolInfoService = P'.Service
 
type GetProtocolVersions =
     P'.Method ".hadoop.common.ProtocolInfoService.getProtocolVersions" ProtocolInfoProtos.GetProtocolVersionsRequestProto
      ProtocolInfoProtos.GetProtocolVersionsResponseProto
 
type GetProtocolSignature =
     P'.Method ".hadoop.common.ProtocolInfoService.getProtocolSignature" ProtocolInfoProtos.GetProtocolSignatureRequestProto
      ProtocolInfoProtos.GetProtocolSignatureResponseProto
 
getProtocolVersions :: GetProtocolVersions
getProtocolVersions = P'.Method
 
getProtocolSignature :: GetProtocolSignature
getProtocolSignature = P'.Method