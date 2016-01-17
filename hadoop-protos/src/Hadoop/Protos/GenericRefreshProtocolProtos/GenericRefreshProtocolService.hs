{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.GenericRefreshProtocolProtos.GenericRefreshProtocolService
       (GenericRefreshProtocolService, genericRefreshProtocolService, Refresh, refresh) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.GenericRefreshProtocolProtos.GenericRefreshRequestProto as GenericRefreshProtocolProtos
       (GenericRefreshRequestProto)
import qualified Hadoop.Protos.GenericRefreshProtocolProtos.GenericRefreshResponseCollectionProto as GenericRefreshProtocolProtos
       (GenericRefreshResponseCollectionProto)
 
type GenericRefreshProtocolService = P'.Service '[Refresh]
 
genericRefreshProtocolService :: GenericRefreshProtocolService
genericRefreshProtocolService = P'.Service
 
type Refresh =
     P'.Method ".hadoop.common.GenericRefreshProtocolService.refresh" GenericRefreshProtocolProtos.GenericRefreshRequestProto
      GenericRefreshProtocolProtos.GenericRefreshResponseCollectionProto
 
refresh :: Refresh
refresh = P'.Method