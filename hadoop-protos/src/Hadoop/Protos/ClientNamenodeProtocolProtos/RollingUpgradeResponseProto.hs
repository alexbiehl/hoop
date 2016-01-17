{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.RollingUpgradeResponseProto (RollingUpgradeResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.RollingUpgradeInfoProto as ClientNamenodeProtocolProtos
       (RollingUpgradeInfoProto)
 
data RollingUpgradeResponseProto = RollingUpgradeResponseProto{rollingUpgradeInfo ::
                                                               !(P'.Maybe ClientNamenodeProtocolProtos.RollingUpgradeInfoProto)}
                                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RollingUpgradeResponseProto where
  mergeAppend (RollingUpgradeResponseProto x'1) (RollingUpgradeResponseProto y'1)
   = RollingUpgradeResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default RollingUpgradeResponseProto where
  defaultValue = RollingUpgradeResponseProto P'.defaultValue
 
instance P'.Wire RollingUpgradeResponseProto where
  wireSize ft' self'@(RollingUpgradeResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1)
  wirePut ft' self'@(RollingUpgradeResponseProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 11 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{rollingUpgradeInfo = P'.mergeAppend (rollingUpgradeInfo old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RollingUpgradeResponseProto) RollingUpgradeResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB RollingUpgradeResponseProto
 
instance P'.ReflectDescriptor RollingUpgradeResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.RollingUpgradeResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"RollingUpgradeResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"RollingUpgradeResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RollingUpgradeResponseProto.rollingUpgradeInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"RollingUpgradeResponseProto\"], baseName' = FName \"rollingUpgradeInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.RollingUpgradeInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"RollingUpgradeInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RollingUpgradeResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RollingUpgradeResponseProto where
  textPut msg
   = do
       P'.tellT "rollingUpgradeInfo" (rollingUpgradeInfo msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'rollingUpgradeInfo]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'rollingUpgradeInfo
         = P'.try
            (do
               v <- P'.getT "rollingUpgradeInfo"
               Prelude'.return (\ o -> o{rollingUpgradeInfo = v}))