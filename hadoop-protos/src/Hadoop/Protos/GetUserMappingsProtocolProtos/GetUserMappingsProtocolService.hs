{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.GetUserMappingsProtocolProtos.GetUserMappingsProtocolService
       (GetUserMappingsProtocolService, getUserMappingsProtocolService, GetGroupsForUser, getGroupsForUser) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.GetUserMappingsProtocolProtos.GetGroupsForUserRequestProto as GetUserMappingsProtocolProtos
       (GetGroupsForUserRequestProto)
import qualified Hadoop.Protos.GetUserMappingsProtocolProtos.GetGroupsForUserResponseProto as GetUserMappingsProtocolProtos
       (GetGroupsForUserResponseProto)
 
type GetUserMappingsProtocolService = P'.Service '[GetGroupsForUser]
 
getUserMappingsProtocolService :: GetUserMappingsProtocolService
getUserMappingsProtocolService = P'.Service
 
type GetGroupsForUser =
     P'.Method ".hadoop.common.GetUserMappingsProtocolService.getGroupsForUser"
      GetUserMappingsProtocolProtos.GetGroupsForUserRequestProto
      GetUserMappingsProtocolProtos.GetGroupsForUserResponseProto
 
getGroupsForUser :: GetGroupsForUser
getGroupsForUser = P'.Method