{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RefreshAuthorizationPolicyProtocolProtos.RefreshAuthorizationPolicyProtocolService
       (RefreshAuthorizationPolicyProtocolService, refreshAuthorizationPolicyProtocolService, RefreshServiceAcl, refreshServiceAcl)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.RefreshAuthorizationPolicyProtocolProtos.RefreshServiceAclRequestProto
       as RefreshAuthorizationPolicyProtocolProtos (RefreshServiceAclRequestProto)
import qualified Hadoop.Protos.RefreshAuthorizationPolicyProtocolProtos.RefreshServiceAclResponseProto
       as RefreshAuthorizationPolicyProtocolProtos (RefreshServiceAclResponseProto)
 
type RefreshAuthorizationPolicyProtocolService = P'.Service '[RefreshServiceAcl]
 
refreshAuthorizationPolicyProtocolService :: RefreshAuthorizationPolicyProtocolService
refreshAuthorizationPolicyProtocolService = P'.Service
 
type RefreshServiceAcl =
     P'.Method ".hadoop.common.RefreshAuthorizationPolicyProtocolService.refreshServiceAcl"
      RefreshAuthorizationPolicyProtocolProtos.RefreshServiceAclRequestProto
      RefreshAuthorizationPolicyProtocolProtos.RefreshServiceAclResponseProto
 
refreshServiceAcl :: RefreshServiceAcl
refreshServiceAcl = P'.Method