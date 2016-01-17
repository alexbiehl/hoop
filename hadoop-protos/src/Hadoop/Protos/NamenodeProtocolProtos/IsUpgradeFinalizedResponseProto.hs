{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.NamenodeProtocolProtos.IsUpgradeFinalizedResponseProto (IsUpgradeFinalizedResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data IsUpgradeFinalizedResponseProto = IsUpgradeFinalizedResponseProto{isUpgradeFinalized :: !(P'.Bool)}
                                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable IsUpgradeFinalizedResponseProto where
  mergeAppend (IsUpgradeFinalizedResponseProto x'1) (IsUpgradeFinalizedResponseProto y'1)
   = IsUpgradeFinalizedResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default IsUpgradeFinalizedResponseProto where
  defaultValue = IsUpgradeFinalizedResponseProto P'.defaultValue
 
instance P'.Wire IsUpgradeFinalizedResponseProto where
  wireSize ft' self'@(IsUpgradeFinalizedResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 8 x'1)
  wirePut ft' self'@(IsUpgradeFinalizedResponseProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 8 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{isUpgradeFinalized = new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> IsUpgradeFinalizedResponseProto) IsUpgradeFinalizedResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB IsUpgradeFinalizedResponseProto
 
instance P'.ReflectDescriptor IsUpgradeFinalizedResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.namenode.IsUpgradeFinalizedResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"NamenodeProtocolProtos\"], baseName = MName \"IsUpgradeFinalizedResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"NamenodeProtocolProtos\",\"IsUpgradeFinalizedResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.namenode.IsUpgradeFinalizedResponseProto.isUpgradeFinalized\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"NamenodeProtocolProtos\",MName \"IsUpgradeFinalizedResponseProto\"], baseName' = FName \"isUpgradeFinalized\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType IsUpgradeFinalizedResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg IsUpgradeFinalizedResponseProto where
  textPut msg
   = do
       P'.tellT "isUpgradeFinalized" (isUpgradeFinalized msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'isUpgradeFinalized]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'isUpgradeFinalized
         = P'.try
            (do
               v <- P'.getT "isUpgradeFinalized"
               Prelude'.return (\ o -> o{isUpgradeFinalized = v}))