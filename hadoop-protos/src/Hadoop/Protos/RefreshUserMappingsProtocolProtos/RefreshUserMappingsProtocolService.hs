{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RefreshUserMappingsProtocolProtos.RefreshUserMappingsProtocolService
       (RefreshUserMappingsProtocolService, refreshUserMappingsProtocolService, RefreshUserToGroupsMappings,
        RefreshSuperUserGroupsConfiguration, refreshUserToGroupsMappings, refreshSuperUserGroupsConfiguration)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.RefreshUserMappingsProtocolProtos.RefreshUserToGroupsMappingsRequestProto
       as RefreshUserMappingsProtocolProtos (RefreshUserToGroupsMappingsRequestProto)
import qualified Hadoop.Protos.RefreshUserMappingsProtocolProtos.RefreshSuperUserGroupsConfigurationRequestProto
       as RefreshUserMappingsProtocolProtos (RefreshSuperUserGroupsConfigurationRequestProto)
import qualified Hadoop.Protos.RefreshUserMappingsProtocolProtos.RefreshUserToGroupsMappingsResponseProto
       as RefreshUserMappingsProtocolProtos (RefreshUserToGroupsMappingsResponseProto)
import qualified Hadoop.Protos.RefreshUserMappingsProtocolProtos.RefreshSuperUserGroupsConfigurationResponseProto
       as RefreshUserMappingsProtocolProtos (RefreshSuperUserGroupsConfigurationResponseProto)
 
type RefreshUserMappingsProtocolService = P'.Service '[RefreshUserToGroupsMappings, RefreshSuperUserGroupsConfiguration]
 
refreshUserMappingsProtocolService :: RefreshUserMappingsProtocolService
refreshUserMappingsProtocolService = P'.Service
 
type RefreshUserToGroupsMappings =
     P'.Method ".hadoop.common.RefreshUserMappingsProtocolService.refreshUserToGroupsMappings"
      RefreshUserMappingsProtocolProtos.RefreshUserToGroupsMappingsRequestProto
      RefreshUserMappingsProtocolProtos.RefreshUserToGroupsMappingsResponseProto
 
type RefreshSuperUserGroupsConfiguration =
     P'.Method ".hadoop.common.RefreshUserMappingsProtocolService.refreshSuperUserGroupsConfiguration"
      RefreshUserMappingsProtocolProtos.RefreshSuperUserGroupsConfigurationRequestProto
      RefreshUserMappingsProtocolProtos.RefreshSuperUserGroupsConfigurationResponseProto
 
refreshUserToGroupsMappings :: RefreshUserToGroupsMappings
refreshUserToGroupsMappings = P'.Method
 
refreshSuperUserGroupsConfiguration :: RefreshSuperUserGroupsConfiguration
refreshSuperUserGroupsConfiguration = P'.Method