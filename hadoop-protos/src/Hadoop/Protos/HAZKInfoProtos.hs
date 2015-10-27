{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HAZKInfoProtos (protoInfo, fileDescriptorProto) where
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
    "ProtoInfo {protoMod = ProtoName {protobufName = FIName \".hadoop.hdfs\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [], baseName = MName \"HAZKInfoProtos\"}, protoFilePath = [\"Hadoop\",\"Protos\",\"HAZKInfoProtos.hs\"], protoSource = \"HAZKInfo.proto\", extensionKeys = fromList [], messages = [DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ActiveNodeInfo\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HAZKInfoProtos\"], baseName = MName \"ActiveNodeInfo\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HAZKInfoProtos\",\"ActiveNodeInfo.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ActiveNodeInfo.nameserviceId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HAZKInfoProtos\",MName \"ActiveNodeInfo\"], baseName' = FName \"nameserviceId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ActiveNodeInfo.namenodeId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HAZKInfoProtos\",MName \"ActiveNodeInfo\"], baseName' = FName \"namenodeId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ActiveNodeInfo.hostname\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HAZKInfoProtos\",MName \"ActiveNodeInfo\"], baseName' = FName \"hostname\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ActiveNodeInfo.port\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HAZKInfoProtos\",MName \"ActiveNodeInfo\"], baseName' = FName \"port\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ActiveNodeInfo.zkfcPort\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HAZKInfoProtos\",MName \"ActiveNodeInfo\"], baseName' = FName \"zkfcPort\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}], enums = [], knownKeyMap = fromList []}"
 
fileDescriptorProto :: FileDescriptorProto
fileDescriptorProto
 = P'.getFromBS (P'.wireGet 11)
    (P'.pack
      "\191\r\n\SO\&HAZKInfo.proto\DC2\vhadoop.hdfs\"m\n\SOActiveNodeInfo\DC2\NAK\n\rnameserviceId\CAN\SOH \STX(\t\DC2\DC2\n\nnamenodeId\CAN\STX \STX(\t\DC2\DLE\n\bhostname\CAN\ETX \STX(\t\DC2\f\n\EOTport\CAN\EOT \STX(\ENQ\DC2\DLE\n\bzkfcPort\CAN\ENQ \STX(\ENQBQ\n/org.apache.hadoop.hdfs.server.namenode.ha.protoB\SO\&HAZKInfoProtosH\SOHP\NUL\128\SOH\NUL\136\SOH\NUL\144\SOH\NUL\160\SOH\NULJ\221\v\n\b\n\NUL\DC2\EOT\CAN\NUL#\SOH\n\b\n\SOH\b\DC2\ETX\CAN\NULH\n\190\a\n\EOT\b\231\a\NUL\DC2\ETX\CAN\NULH2\131\ACK*\n Licensed to the Apache Software Foundation (ASF) under one\n or more contributor license agreements.  See the NOTICE file\n distributed with this work for additional information\n regarding copyright ownership.  The ASF licenses this file\n to you under the Apache License, Version 2.0 (the\n \"License\"); you may not use this file except in compliance\n with the License.  You may obtain a copy of the License at\n\n     http://www.apache.org/licenses/LICENSE-2.0\n\n Unless required by applicable law or agreed to in writing, software\n distributed under the License is distributed on an \"AS IS\" BASIS,\n WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n See the License for the specific language governing permissions and\n limitations under the License.\n2\170\SOH*\n These .proto interfaces are private and stable.\n Please see http://wiki.apache.org/hadoop/Compatibility\n for what changes are allowed for a *stable* .proto interface.\n\n\f\n\ENQ\b\231\a\NUL\STX\DC2\ETX\CAN\a\DC3\n\r\n\ACK\b\231\a\NUL\STX\NUL\DC2\ETX\CAN\a\DC3\n\SO\n\a\b\231\a\NUL\STX\NUL\SOH\DC2\ETX\CAN\a\DC3\n\f\n\ENQ\b\231\a\NUL\a\DC2\ETX\CAN\SYNG\n\b\n\SOH\b\DC2\ETX\EM\NUL/\n\v\n\EOT\b\231\a\SOH\DC2\ETX\EM\NUL/\n\f\n\ENQ\b\231\a\SOH\STX\DC2\ETX\EM\a\ESC\n\r\n\ACK\b\231\a\SOH\STX\NUL\DC2\ETX\EM\a\ESC\n\SO\n\a\b\231\a\SOH\STX\NUL\SOH\DC2\ETX\EM\a\ESC\n\f\n\ENQ\b\231\a\SOH\a\DC2\ETX\EM\RS.\n\b\n\SOH\STX\DC2\ETX\SUB\b\DC3\n\n\n\STX\EOT\NUL\DC2\EOT\FS\NUL#\SOH\n\n\n\ETX\EOT\NUL\SOH\DC2\ETX\FS\b\SYN\n\v\n\EOT\EOT\NUL\STX\NUL\DC2\ETX\GS\STX$\n\f\n\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\GS\STX\n\n\f\n\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\GS\v\DC1\n\f\n\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\GS\DC2\US\n\f\n\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\GS\"#\n\v\n\EOT\EOT\NUL\STX\SOH\DC2\ETX\RS\STX!\n\f\n\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\RS\STX\n\n\f\n\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\RS\v\DC1\n\f\n\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\RS\DC2\FS\n\f\n\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\RS\US \n\v\n\EOT\EOT\NUL\STX\STX\DC2\ETX \STX\US\n\f\n\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX \STX\n\n\f\n\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX \v\DC1\n\f\n\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX \DC2\SUB\n\f\n\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX \GS\RS\n\v\n\EOT\EOT\NUL\STX\ETX\DC2\ETX!\STX\SUB\n\f\n\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX!\STX\n\n\f\n\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX!\v\DLE\n\f\n\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX!\DC1\NAK\n\f\n\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX!\CAN\EM\n\v\n\EOT\EOT\NUL\STX\EOT\DC2\ETX\"\STX\RS\n\f\n\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\"\STX\n\n\f\n\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\"\v\DLE\n\f\n\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\"\DC1\EM\n\f\n\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\"\FS\GS")