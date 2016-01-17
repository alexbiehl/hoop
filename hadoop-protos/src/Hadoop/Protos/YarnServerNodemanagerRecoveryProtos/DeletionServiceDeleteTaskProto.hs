{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerNodemanagerRecoveryProtos.DeletionServiceDeleteTaskProto (DeletionServiceDeleteTaskProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data DeletionServiceDeleteTaskProto = DeletionServiceDeleteTaskProto{id :: !(P'.Maybe P'.Int32), user :: !(P'.Maybe P'.Utf8),
                                                                     subdir :: !(P'.Maybe P'.Utf8),
                                                                     deletionTime :: !(P'.Maybe P'.Int64),
                                                                     basedirs :: !(P'.Seq P'.Utf8),
                                                                     successorIds :: !(P'.Seq P'.Int32)}
                                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DeletionServiceDeleteTaskProto where
  mergeAppend (DeletionServiceDeleteTaskProto x'1 x'2 x'3 x'4 x'5 x'6) (DeletionServiceDeleteTaskProto y'1 y'2 y'3 y'4 y'5 y'6)
   = DeletionServiceDeleteTaskProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
 
instance P'.Default DeletionServiceDeleteTaskProto where
  defaultValue
   = DeletionServiceDeleteTaskProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire DeletionServiceDeleteTaskProto where
  wireSize ft' self'@(DeletionServiceDeleteTaskProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 5 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 3 x'4 +
             P'.wireSizeRep 1 9 x'5
             + P'.wireSizeRep 1 5 x'6)
  wirePut ft' self'@(DeletionServiceDeleteTaskProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 5 x'1
             P'.wirePutOpt 18 9 x'2
             P'.wirePutOpt 26 9 x'3
             P'.wirePutOpt 32 3 x'4
             P'.wirePutRep 42 9 x'5
             P'.wirePutRep 48 5 x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{id = Prelude'.Just new'Field}) (P'.wireGet 5)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{user = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{subdir = Prelude'.Just new'Field}) (P'.wireGet 9)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{deletionTime = Prelude'.Just new'Field}) (P'.wireGet 3)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{basedirs = P'.append (basedirs old'Self) new'Field}) (P'.wireGet 9)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{successorIds = P'.append (successorIds old'Self) new'Field})
                    (P'.wireGet 5)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{successorIds = P'.mergeAppend (successorIds old'Self) new'Field})
                    (P'.wireGetPacked 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DeletionServiceDeleteTaskProto) DeletionServiceDeleteTaskProto where
  getVal m' f' = f' m'
 
instance P'.GPB DeletionServiceDeleteTaskProto
 
instance P'.ReflectDescriptor DeletionServiceDeleteTaskProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 26, 32, 42, 48, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.DeletionServiceDeleteTaskProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerRecoveryProtos\"], baseName = MName \"DeletionServiceDeleteTaskProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerNodemanagerRecoveryProtos\",\"DeletionServiceDeleteTaskProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.DeletionServiceDeleteTaskProto.id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"DeletionServiceDeleteTaskProto\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.DeletionServiceDeleteTaskProto.user\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"DeletionServiceDeleteTaskProto\"], baseName' = FName \"user\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.DeletionServiceDeleteTaskProto.subdir\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"DeletionServiceDeleteTaskProto\"], baseName' = FName \"subdir\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.DeletionServiceDeleteTaskProto.deletionTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"DeletionServiceDeleteTaskProto\"], baseName' = FName \"deletionTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.DeletionServiceDeleteTaskProto.basedirs\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"DeletionServiceDeleteTaskProto\"], baseName' = FName \"basedirs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.DeletionServiceDeleteTaskProto.successorIds\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"DeletionServiceDeleteTaskProto\"], baseName' = FName \"successorIds\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Just (WireTag {getWireTag = 48},WireTag {getWireTag = 50}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DeletionServiceDeleteTaskProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DeletionServiceDeleteTaskProto where
  textPut msg
   = do
       P'.tellT "id" (id msg)
       P'.tellT "user" (user msg)
       P'.tellT "subdir" (subdir msg)
       P'.tellT "deletionTime" (deletionTime msg)
       P'.tellT "basedirs" (basedirs msg)
       P'.tellT "successorIds" (successorIds msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'id, parse'user, parse'subdir, parse'deletionTime, parse'basedirs, parse'successorIds])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'id
         = P'.try
            (do
               v <- P'.getT "id"
               Prelude'.return (\ o -> o{id = v}))
        parse'user
         = P'.try
            (do
               v <- P'.getT "user"
               Prelude'.return (\ o -> o{user = v}))
        parse'subdir
         = P'.try
            (do
               v <- P'.getT "subdir"
               Prelude'.return (\ o -> o{subdir = v}))
        parse'deletionTime
         = P'.try
            (do
               v <- P'.getT "deletionTime"
               Prelude'.return (\ o -> o{deletionTime = v}))
        parse'basedirs
         = P'.try
            (do
               v <- P'.getT "basedirs"
               Prelude'.return (\ o -> o{basedirs = P'.append (basedirs o) v}))
        parse'successorIds
         = P'.try
            (do
               v <- P'.getT "successorIds"
               Prelude'.return (\ o -> o{successorIds = P'.append (successorIds o) v}))