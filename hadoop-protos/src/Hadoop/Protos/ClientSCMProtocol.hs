{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientSCMProtocol (protoInfo, fileDescriptorProto) where
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
    "ProtoInfo {protoMod = ProtoName {protobufName = FIName \".hadoop.yarn\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [], baseName = MName \"ClientSCMProtocol\"}, protoFilePath = [\"Hadoop\",\"Protos\",\"ClientSCMProtocol.hs\"], protoSource = \"client_SCM_protocol.proto\", extensionKeys = fromList [], messages = [], enums = [], knownKeyMap = fromList []}"
 
fileDescriptorProto :: FileDescriptorProto
fileDescriptorProto
 = P'.getFromBS (P'.wireGet 11)
    (P'.pack
      "\250\f\n\EMclient_SCM_protocol.proto\DC2\vhadoop.yarn\SUB\EMyarn_service_protos.proto2\250\SOH\n\CANClientSCMProtocolService\DC2h\n\ETXuse\DC2/.hadoop.yarn.UseSharedCacheResourceRequestProto\SUB0.hadoop.yarn.UseSharedCacheResourceResponseProto\DC2t\n\arelease\DC23.hadoop.yarn.ReleaseSharedCacheResourceRequestProto\SUB4.hadoop.yarn.ReleaseSharedCacheResourceResponseProtoBA\n\FSorg.apache.hadoop.yarn.protoB\DC1ClientSCMProtocolH\SOHP\NUL\128\SOH\NUL\136\SOH\SOH\144\SOH\NUL\160\SOH\SOHJ\244\t\n\b\n\NUL\DC2\EOT\DC2\NUL\GS\SOH\n\b\n\SOH\b\DC2\ETX\DC2\NUL5\n\145\ACK\n\EOT\b\231\a\NUL\DC2\ETX\DC2\NUL52\131\ACK*\n Licensed to the Apache Software Foundation (ASF) under one\n or more contributor license agreements.  See the NOTICE file\n distributed with this work for additional information\n regarding copyright ownership.  The ASF licenses this file\n to you under the Apache License, Version 2.0 (the\n \"License\"); you may not use this file except in compliance\n with the License.  You may obtain a copy of the License at\n\n     http://www.apache.org/licenses/LICENSE-2.0\n\n Unless required by applicable law or agreed to in writing, software\n distributed under the License is distributed on an \"AS IS\" BASIS,\n WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n See the License for the specific language governing permissions and\n limitations under the License.\n\n\f\n\ENQ\b\231\a\NUL\STX\DC2\ETX\DC2\a\DC3\n\r\n\ACK\b\231\a\NUL\STX\NUL\DC2\ETX\DC2\a\DC3\n\SO\n\a\b\231\a\NUL\STX\NUL\SOH\DC2\ETX\DC2\a\DC3\n\f\n\ENQ\b\231\a\NUL\a\DC2\ETX\DC2\SYN4\n\b\n\SOH\b\DC2\ETX\DC3\NUL2\n\v\n\EOT\b\231\a\SOH\DC2\ETX\DC3\NUL2\n\f\n\ENQ\b\231\a\SOH\STX\DC2\ETX\DC3\a\ESC\n\r\n\ACK\b\231\a\SOH\STX\NUL\DC2\ETX\DC3\a\ESC\n\SO\n\a\b\231\a\SOH\STX\NUL\SOH\DC2\ETX\DC3\a\ESC\n\f\n\ENQ\b\231\a\SOH\a\DC2\ETX\DC3\RS1\n\b\n\SOH\b\DC2\ETX\DC4\NUL$\n\v\n\EOT\b\231\a\STX\DC2\ETX\DC4\NUL$\n\f\n\ENQ\b\231\a\STX\STX\DC2\ETX\DC4\a\FS\n\r\n\ACK\b\231\a\STX\STX\NUL\DC2\ETX\DC4\a\FS\n\SO\n\a\b\231\a\STX\STX\NUL\SOH\DC2\ETX\DC4\a\FS\n\f\n\ENQ\b\231\a\STX\ETX\DC2\ETX\DC4\US#\n\b\n\SOH\b\DC2\ETX\NAK\NUL,\n\v\n\EOT\b\231\a\ETX\DC2\ETX\NAK\NUL,\n\f\n\ENQ\b\231\a\ETX\STX\DC2\ETX\NAK\a$\n\r\n\ACK\b\231\a\ETX\STX\NUL\DC2\ETX\NAK\a$\n\SO\n\a\b\231\a\ETX\STX\NUL\SOH\DC2\ETX\NAK\a$\n\f\n\ENQ\b\231\a\ETX\ETX\DC2\ETX\NAK'+\n\b\n\SOH\STX\DC2\ETX\SYN\b\DC3\n\t\n\STX\ETX\NUL\DC2\ETX\CAN\a\"\n\n\n\STX\ACK\NUL\DC2\EOT\SUB\NUL\GS\SOH\n\n\n\ETX\ACK\NUL\SOH\DC2\ETX\SUB\b \n\v\n\EOT\ACK\NUL\STX\NUL\DC2\ETX\ESC\STX]\n\f\n\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\ESC\ACK\t\n\f\n\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\ESC\v-\n\f\n\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\ESC8[\n\v\n\EOT\ACK\NUL\STX\SOH\DC2\ETX\FS\STXi\n\f\n\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\FS\ACK\r\n\f\n\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\FS\SI5\n\f\n\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\FS@g")