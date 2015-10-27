{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerServiceProtos.GetGroupsForUserResponseProto (GetGroupsForUserResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data GetGroupsForUserResponseProto = GetGroupsForUserResponseProto{groups :: !(P'.Seq P'.Utf8)}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetGroupsForUserResponseProto where
  mergeAppend (GetGroupsForUserResponseProto x'1) (GetGroupsForUserResponseProto y'1)
   = GetGroupsForUserResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetGroupsForUserResponseProto where
  defaultValue = GetGroupsForUserResponseProto P'.defaultValue
 
instance P'.Wire GetGroupsForUserResponseProto where
  wireSize ft' self'@(GetGroupsForUserResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 9 x'1)
  wirePut ft' self'@(GetGroupsForUserResponseProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 9 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{groups = P'.append (groups old'Self) new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetGroupsForUserResponseProto) GetGroupsForUserResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetGroupsForUserResponseProto
 
instance P'.ReflectDescriptor GetGroupsForUserResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetGroupsForUserResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerServiceProtos\"], baseName = MName \"GetGroupsForUserResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerResourceManagerServiceProtos\",\"GetGroupsForUserResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetGroupsForUserResponseProto.groups\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerServiceProtos\",MName \"GetGroupsForUserResponseProto\"], baseName' = FName \"groups\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetGroupsForUserResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetGroupsForUserResponseProto where
  textPut msg
   = do
       P'.tellT "groups" (groups msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'groups]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'groups
         = P'.try
            (do
               v <- P'.getT "groups"
               Prelude'.return (\ o -> o{groups = P'.append (groups o) v}))