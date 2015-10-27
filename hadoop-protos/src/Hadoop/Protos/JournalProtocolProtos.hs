{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.JournalProtocolProtos (protoInfo, fileDescriptorProto) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import Text.DescriptorProtos.FileDescriptorProto (FileDescriptorProto)
import Text.ProtocolBuffers.Reflections (ProtoInfo)
import qualified Text.ProtocolBuffers.WireMessage as P' (wireGet,getFromBS)
 
protoInfo :: ProtoInfo
protoInfo
 = Prelude'.read
    "ProtoInfo {protoMod = ProtoName {protobufName = FIName \".hadoop.hdfs\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [], baseName = MName \"JournalProtocolProtos\"}, protoFilePath = [\"Hadoop\",\"Protos\",\"JournalProtocolProtos.hs\"], protoSource = \"JournalProtocol.proto\", extensionKeys = fromList [], messages = [DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.JournalInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"JournalInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"JournalProtocolProtos\",\"JournalInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalInfoProto.clusterID\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalInfoProto\"], baseName' = FName \"clusterID\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalInfoProto.layoutVersion\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalInfoProto\"], baseName' = FName \"layoutVersion\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalInfoProto.namespaceID\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalInfoProto\"], baseName' = FName \"namespaceID\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.JournalRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"JournalRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"JournalProtocolProtos\",\"JournalRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalRequestProto.journalInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalRequestProto\"], baseName' = FName \"journalInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.JournalInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"JournalInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalRequestProto.firstTxnId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalRequestProto\"], baseName' = FName \"firstTxnId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalRequestProto.numTxns\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalRequestProto\"], baseName' = FName \"numTxns\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalRequestProto.records\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalRequestProto\"], baseName' = FName \"records\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalRequestProto.epoch\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalRequestProto\"], baseName' = FName \"epoch\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.JournalResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"JournalResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"JournalProtocolProtos\",\"JournalResponseProto.hs\"], isGroup = False, fields = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.StartLogSegmentRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"StartLogSegmentRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"JournalProtocolProtos\",\"StartLogSegmentRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.StartLogSegmentRequestProto.journalInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"StartLogSegmentRequestProto\"], baseName' = FName \"journalInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.JournalInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"JournalInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.StartLogSegmentRequestProto.txid\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"StartLogSegmentRequestProto\"], baseName' = FName \"txid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.StartLogSegmentRequestProto.epoch\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"StartLogSegmentRequestProto\"], baseName' = FName \"epoch\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.StartLogSegmentResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"StartLogSegmentResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"JournalProtocolProtos\",\"StartLogSegmentResponseProto.hs\"], isGroup = False, fields = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.FenceRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"FenceRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"JournalProtocolProtos\",\"FenceRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FenceRequestProto.journalInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"FenceRequestProto\"], baseName' = FName \"journalInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.JournalInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"JournalInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FenceRequestProto.epoch\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"FenceRequestProto\"], baseName' = FName \"epoch\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FenceRequestProto.fencerInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"FenceRequestProto\"], baseName' = FName \"fencerInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.FenceResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"FenceResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"JournalProtocolProtos\",\"FenceResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FenceResponseProto.previousEpoch\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"FenceResponseProto\"], baseName' = FName \"previousEpoch\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FenceResponseProto.lastTransactionId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"FenceResponseProto\"], baseName' = FName \"lastTransactionId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FenceResponseProto.inSync\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"FenceResponseProto\"], baseName' = FName \"inSync\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}], enums = [], knownKeyMap = fromList []}"
 
fileDescriptorProto :: FileDescriptorProto
fileDescriptorProto
 = P'.getFromBS (P'.wireGet 11)
    (P'.pack
      "\159*\n\NAKJournalProtocol.proto\DC2\vhadoop.hdfs\SUB\nhdfs.proto\"Q\n\DLEJournalInfoProto\DC2\DC1\n\tclusterID\CAN\SOH \STX(\t\DC2\NAK\n\rlayoutVersion\CAN\STX \SOH(\r\DC2\DC3\n\vnamespaceID\CAN\ETX \SOH(\r\"\142\SOH\n\DC3JournalRequestProto\DC22\n\vjournalInfo\CAN\SOH \STX(\v2\GS.hadoop.hdfs.JournalInfoProto\DC2\DC2\n\nfirstTxnId\CAN\STX \STX(\EOT\DC2\SI\n\anumTxns\CAN\ETX \STX(\r\DC2\SI\n\arecords\CAN\EOT \STX(\f\DC2\r\n\ENQepoch\CAN\ENQ \STX(\EOT\"\SYN\n\DC4JournalResponseProto\"n\n\ESCStartLogSegmentRequestProto\DC22\n\vjournalInfo\CAN\SOH \STX(\v2\GS.hadoop.hdfs.JournalInfoProto\DC2\f\n\EOTtxid\CAN\STX \STX(\EOT\DC2\r\n\ENQepoch\CAN\ETX \STX(\EOT\"\RS\n\FSStartLogSegmentResponseProto\"j\n\DC1FenceRequestProto\DC22\n\vjournalInfo\CAN\SOH \STX(\v2\GS.hadoop.hdfs.JournalInfoProto\DC2\r\n\ENQepoch\CAN\STX \STX(\EOT\DC2\DC2\n\nfencerInfo\CAN\ETX \SOH(\t\"V\n\DC2FenceResponseProto\DC2\NAK\n\rpreviousEpoch\CAN\SOH \SOH(\EOT\DC2\EM\n\DC1lastTransactionId\CAN\STX \SOH(\EOT\DC2\SO\n\ACKinSync\CAN\ETX \SOH(\b2\154\STX\n\SYNJournalProtocolService\DC2N\n\ajournal\DC2 .hadoop.hdfs.JournalRequestProto\SUB!.hadoop.hdfs.JournalResponseProto\DC2f\n\SIstartLogSegment\DC2(.hadoop.hdfs.StartLogSegmentRequestProto\SUB).hadoop.hdfs.StartLogSegmentResponseProto\DC2H\n\ENQfence\DC2\RS.hadoop.hdfs.FenceRequestProto\SUB\US.hadoop.hdfs.FenceResponseProtoBN\n%org.apache.hadoop.hdfs.protocol.protoB\NAKJournalProtocolProtosH\SOHP\NUL\128\SOH\NUL\136\SOH\SOH\144\SOH\NUL\160\SOH\SOHJ\175\"\n\t\n\NUL\DC2\ENQ\ESC\NUL\128\SOH\SOH\n\b\n\SOH\b\DC2\ETX\ESC\NUL>\n\193\b\n\EOT\b\231\a\NUL\DC2\ETX\ESC\NUL>2\131\ACK*\n Licensed to the Apache Software Foundation (ASF) under one\n or more contributor license agreements.  See the NOTICE file\n distributed with this work for additional information\n regarding copyright ownership.  The ASF licenses this file\n to you under the Apache License, Version 2.0 (the\n \"License\"); you may not use this file except in compliance\n with the License.  You may obtain a copy of the License at\n\n     http://www.apache.org/licenses/LICENSE-2.0\n\n Unless required by applicable law or agreed to in writing, software\n distributed under the License is distributed on an \"AS IS\" BASIS,\n WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n See the License for the specific language governing permissions and\n limitations under the License.\n2\170\SOH*\n These .proto interfaces are private and stable.\n Please see http://wiki.apache.org/hadoop/Compatibility\n for what changes are allowed for a *stable* .proto interface.\n2\128\SOH This file contains protocol buffers that are used throughout HDFS -- i.e.\n by the client, server, and data transfer protocols.\n\n\f\n\ENQ\b\231\a\NUL\STX\DC2\ETX\ESC\a\DC3\n\r\n\ACK\b\231\a\NUL\STX\NUL\DC2\ETX\ESC\a\DC3\n\SO\n\a\b\231\a\NUL\STX\NUL\SOH\DC2\ETX\ESC\a\DC3\n\f\n\ENQ\b\231\a\NUL\a\DC2\ETX\ESC\SYN=\n\b\n\SOH\b\DC2\ETX\FS\NUL6\n\v\n\EOT\b\231\a\SOH\DC2\ETX\FS\NUL6\n\f\n\ENQ\b\231\a\SOH\STX\DC2\ETX\FS\a\ESC\n\r\n\ACK\b\231\a\SOH\STX\NUL\DC2\ETX\FS\a\ESC\n\SO\n\a\b\231\a\SOH\STX\NUL\SOH\DC2\ETX\FS\a\ESC\n\f\n\ENQ\b\231\a\SOH\a\DC2\ETX\FS\RS5\n\b\n\SOH\b\DC2\ETX\GS\NUL$\n\v\n\EOT\b\231\a\STX\DC2\ETX\GS\NUL$\n\f\n\ENQ\b\231\a\STX\STX\DC2\ETX\GS\a\FS\n\r\n\ACK\b\231\a\STX\STX\NUL\DC2\ETX\GS\a\FS\n\SO\n\a\b\231\a\STX\STX\NUL\SOH\DC2\ETX\GS\a\FS\n\f\n\ENQ\b\231\a\STX\ETX\DC2\ETX\GS\US#\n\b\n\SOH\b\DC2\ETX\RS\NUL,\n\v\n\EOT\b\231\a\ETX\DC2\ETX\RS\NUL,\n\f\n\ENQ\b\231\a\ETX\STX\DC2\ETX\RS\a$\n\r\n\ACK\b\231\a\ETX\STX\NUL\DC2\ETX\RS\a$\n\SO\n\a\b\231\a\ETX\STX\NUL\SOH\DC2\ETX\RS\a$\n\f\n\ENQ\b\231\a\ETX\ETX\DC2\ETX\RS'+\n\b\n\SOH\STX\DC2\ETX\US\b\DC3\n\t\n\STX\ETX\NUL\DC2\ETX!\a\DC3\nW\n\STX\EOT\NUL\DC2\EOT&\NUL*\SOH\SUBK*\n Journal information used by the journal receiver to identify a journal.\n\n\n\n\ETX\EOT\NUL\SOH\DC2\ETX&\b\CAN\n \n\EOT\EOT\NUL\STX\NUL\DC2\ETX'\STX \"\DC3 ID of the cluster\n\n\f\n\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX'\STX\n\n\f\n\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX'\v\DC1\n\f\n\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX'\DC2\ESC\n\f\n\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX'\RS\US\n\GS\n\EOT\EOT\NUL\STX\SOH\DC2\ETX(\STX$\"\DLE Layout version\n\n\f\n\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX(\STX\n\n\f\n\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX(\v\DC1\n\f\n\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX(\DC2\US\n\f\n\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX(\"#\n\ESC\n\EOT\EOT\NUL\STX\STX\DC2\ETX)\STX\"\"\SO Namespace ID\n\n\f\n\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX)\STX\n\n\f\n\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX)\v\DC1\n\f\n\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX)\DC2\GS\n\f\n\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX) !\n\148\STX\n\STX\EOT\SOH\DC2\EOT3\NUL9\SOH\SUB\135\STX*\n journalInfo - the information about the journal\n firstTxnId - the first txid in the journal records\n numTxns - Number of transactions in editlog\n records - bytes containing serialized journal records\n epoch - change to this represents change of journal writer\n\n\n\n\ETX\EOT\SOH\SOH\DC2\ETX3\b\ESC\n\v\n\EOT\EOT\SOH\STX\NUL\DC2\ETX4\STX,\n\f\n\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX4\STX\n\n\f\n\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX4\v\ESC\n\f\n\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX4\FS'\n\f\n\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX4*+\n\v\n\EOT\EOT\SOH\STX\SOH\DC2\ETX5\STX!\n\f\n\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX5\STX\n\n\f\n\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX5\v\DC1\n\f\n\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX5\DC2\FS\n\f\n\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX5\US \n\v\n\EOT\EOT\SOH\STX\STX\DC2\ETX6\STX\RS\n\f\n\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX6\STX\n\n\f\n\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX6\v\DC1\n\f\n\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX6\DC2\EM\n\f\n\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX6\FS\GS\n\v\n\EOT\EOT\SOH\STX\ETX\DC2\ETX7\STX\GS\n\f\n\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX7\STX\n\n\f\n\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX7\v\DLE\n\f\n\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX7\DC1\CAN\n\f\n\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX7\ESC\FS\n\v\n\EOT\EOT\SOH\STX\EOT\DC2\ETX8\STX\FS\n\f\n\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX8\STX\n\n\f\n\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX8\v\DC1\n\f\n\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX8\DC2\ETB\n\f\n\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX8\SUB\ESC\n\GS\n\STX\EOT\STX\DC2\EOT>\NUL?\SOH\SUB\DC1*\n void response\n\n\n\n\ETX\EOT\STX\SOH\DC2\ETX>\b\FS\na\n\STX\EOT\ETX\DC2\EOTE\NULI\SOH\SUBU*\n journalInfo - the information about the journal\n txid - first txid in the new log\n\n\n\n\ETX\EOT\ETX\SOH\DC2\ETXE\b#\n%\n\EOT\EOT\ETX\STX\NUL\DC2\ETXF\STX,\"\CAN Info about the journal\n\n\f\n\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETXF\STX\n\n\f\n\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXF\v\ESC\n\f\n\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXF\FS'\n\f\n\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXF*+\n\GS\n\EOT\EOT\ETX\STX\SOH\DC2\ETXG\STX\ESC\"\DLE Transaction ID\n\n\f\n\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETXG\STX\n\n\f\n\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXG\v\DC1\n\f\n\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXG\DC2\SYN\n\f\n\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXG\EM\SUB\n\v\n\EOT\EOT\ETX\STX\STX\DC2\ETXH\STX\FS\n\f\n\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETXH\STX\n\n\f\n\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETXH\v\DC1\n\f\n\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXH\DC2\ETB\n\f\n\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXH\SUB\ESC\n\GS\n\STX\EOT\EOT\DC2\EOTN\NULO\SOH\SUB\DC1*\n void response\n\n\n\n\ETX\EOT\EOT\SOH\DC2\ETXN\b$\na\n\STX\EOT\ENQ\DC2\EOTU\NULY\SOH\SUBU*\n journalInfo - the information about the journal\n txid - first txid in the new log\n\n\n\n\ETX\EOT\ENQ\SOH\DC2\ETXU\b\EM\n%\n\EOT\EOT\ENQ\STX\NUL\DC2\ETXV\STX,\"\CAN Info about the journal\n\n\f\n\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETXV\STX\n\n\f\n\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETXV\v\ESC\n\f\n\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXV\FS'\n\f\n\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXV*+\n8\n\EOT\EOT\ENQ\STX\SOH\DC2\ETXW\STX\FS\"+ Epoch - change indicates change in writer\n\n\f\n\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETXW\STX\n\n\f\n\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETXW\v\DC1\n\f\n\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXW\DC2\ETB\n\f\n\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXW\SUB\ESC\n.\n\EOT\EOT\ENQ\STX\STX\DC2\ETXX\STX!\"! Info about fencer for debugging\n\n\f\n\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETXX\STX\n\n\f\n\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETXX\v\DC1\n\f\n\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETXX\DC2\FS\n\f\n\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETXX\US \n\184\SOH\n\STX\EOT\ACK\DC2\EOT`\NULd\SOH\SUB\171\SOH*\n previousEpoch - previous epoch if any or zero\n lastTransactionId - last valid transaction Id in the journal\n inSync - if all journal segments are available and in sync\n\n\n\n\ETX\EOT\ACK\SOH\DC2\ETX`\b\SUB\n\v\n\EOT\EOT\ACK\STX\NUL\DC2\ETXa\STX$\n\f\n\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETXa\STX\n\n\f\n\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXa\v\DC1\n\f\n\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXa\DC2\US\n\f\n\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXa\"#\n\v\n\EOT\EOT\ACK\STX\SOH\DC2\ETXb\STX(\n\f\n\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETXb\STX\n\n\f\n\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETXb\v\DC1\n\f\n\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXb\DC2#\n\f\n\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXb&'\n\v\n\EOT\EOT\ACK\STX\STX\DC2\ETXc\STX\ESC\n\f\n\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETXc\STX\n\n\f\n\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETXc\v\SI\n\f\n\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXc\DLE\SYN\n\f\n\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXc\EM\SUB\n\199\SOH\n\STX\ACK\NUL\DC2\ENQl\NUL\128\SOH\SOH\SUB\185\SOH*\n Protocol used to journal edits to a remote node. Currently,\n this is used to publish edits from the NameNode to a BackupNode.\n\n See the request and response for details of rpc call.\n\n\n\n\ETX\ACK\NUL\SOH\DC2\ETXl\b\RS\nz\n\EOT\ACK\NUL\STX\NUL\DC2\ETXq\STXB\SUBm*\n Request sent by active namenode to backup node via \n EditLogBackupOutputStream to stream editlog records.\n\n\f\n\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETXq\ACK\r\n\f\n\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETXq\SO!\n\f\n\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETXq,@\n\160\SOH\n\EOT\ACK\NUL\STX\SOH\DC2\EOTx\STXy-\SUB\145\SOH*\n Request sent by active namenode to backup node to notify \n that the NameNode has rolled its edit logs and is now writing a \n new log segment.\n\n\f\n\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETXx\ACK\NAK\n\f\n\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETXx\SYN1\n\f\n\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETXy\SI+\n6\n\EOT\ACK\NUL\STX\STX\DC2\EOT~\STX\DEL#\SUB(*\n Request to fence a journal receiver.\n\n\f\n\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX~\ACK\v\n\f\n\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX~\f\GS\n\f\n\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\DEL\SI!")