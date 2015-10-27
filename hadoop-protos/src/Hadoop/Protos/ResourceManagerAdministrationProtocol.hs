{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ResourceManagerAdministrationProtocol (protoInfo, fileDescriptorProto) where
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
    "ProtoInfo {protoMod = ProtoName {protobufName = FIName \".hadoop.yarn\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [], baseName = MName \"ResourceManagerAdministrationProtocol\"}, protoFilePath = [\"Hadoop\",\"Protos\",\"ResourceManagerAdministrationProtocol.hs\"], protoSource = \"server/resourcemanager_administration_protocol.proto\", extensionKeys = fromList [], messages = [], enums = [], knownKeyMap = fromList []}"
 
fileDescriptorProto :: FileDescriptorProto
fileDescriptorProto
 = P'.getFromBS (P'.wireGet 11)
    (P'.pack
      "\139\GS\n4server/resourcemanager_administration_protocol.proto\DC2\vhadoop.yarn\SUB7server/yarn_server_resourcemanager_service_protos.proto2\232\v\n,ResourceManagerAdministrationProtocolService\DC2`\n\rrefreshQueues\DC2&.hadoop.yarn.RefreshQueuesRequestProto\SUB'.hadoop.yarn.RefreshQueuesResponseProto\DC2]\n\frefreshNodes\DC2%.hadoop.yarn.RefreshNodesRequestProto\SUB&.hadoop.yarn.RefreshNodesResponseProto\DC2\162\SOH\n#refreshSuperUserGroupsConfiguration\DC2<.hadoop.yarn.RefreshSuperUserGroupsConfigurationRequestProto\SUB=.hadoop.yarn.RefreshSuperUserGroupsConfigurationResponseProto\DC2\138\SOH\n\ESCrefreshUserToGroupsMappings\DC24.hadoop.yarn.RefreshUserToGroupsMappingsRequestProto\SUB5.hadoop.yarn.RefreshUserToGroupsMappingsResponseProto\DC2i\n\DLErefreshAdminAcls\DC2).hadoop.yarn.RefreshAdminAclsRequestProto\SUB*.hadoop.yarn.RefreshAdminAclsResponseProto\DC2o\n\DC2refreshServiceAcls\DC2+.hadoop.yarn.RefreshServiceAclsRequestProto\SUB,.hadoop.yarn.RefreshServiceAclsResponseProto\DC2i\n\DLEgetGroupsForUser\DC2).hadoop.yarn.GetGroupsForUserRequestProto\SUB*.hadoop.yarn.GetGroupsForUserResponseProto\DC2o\n\DC2updateNodeResource\DC2+.hadoop.yarn.UpdateNodeResourceRequestProto\SUB,.hadoop.yarn.UpdateNodeResourceResponseProto\DC2{\n\SYNaddToClusterNodeLabels\DC2/.hadoop.yarn.AddToClusterNodeLabelsRequestProto\SUB0.hadoop.yarn.AddToClusterNodeLabelsResponseProto\DC2\138\SOH\n\ESCremoveFromClusterNodeLabels\DC24.hadoop.yarn.RemoveFromClusterNodeLabelsRequestProto\SUB5.hadoop.yarn.RemoveFromClusterNodeLabelsResponseProto\DC2s\n\DC4replaceLabelsOnNodes\DC2,.hadoop.yarn.ReplaceLabelsOnNodeRequestProto\SUB-.hadoop.yarn.ReplaceLabelsOnNodeResponseProto\DC2\141\SOH\n\FScheckForDecommissioningNodes\DC25.hadoop.yarn.CheckForDecommissioningNodesRequestProto\SUB6.hadoop.yarn.CheckForDecommissioningNodesResponseProtoBU\n\FSorg.apache.hadoop.yarn.protoB%ResourceManagerAdministrationProtocolH\SOHP\NUL\128\SOH\NUL\136\SOH\SOH\144\SOH\NUL\160\SOH\SOHJ\202\SI\n\b\n\NUL\DC2\EOT\CAN\NUL-\SOH\n\b\n\SOH\b\DC2\ETX\CAN\NUL5\n\190\a\n\EOT\b\231\a\NUL\DC2\ETX\CAN\NUL52\131\ACK*\n Licensed to the Apache Software Foundation (ASF) under one\n or more contributor license agreements.  See the NOTICE file\n distributed with this work for additional information\n regarding copyright ownership.  The ASF licenses this file\n to you under the Apache License, Version 2.0 (the\n \"License\"); you may not use this file except in compliance\n with the License.  You may obtain a copy of the License at\n\n     http://www.apache.org/licenses/LICENSE-2.0\n\n Unless required by applicable law or agreed to in writing, software\n distributed under the License is distributed on an \"AS IS\" BASIS,\n WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n See the License for the specific language governing permissions and\n limitations under the License.\n2\170\SOH*\n These .proto interfaces are private and stable.\n Please see http://wiki.apache.org/hadoop/Compatibility\n for what changes are allowed for a *stable* .proto interface.\n\n\f\n\ENQ\b\231\a\NUL\STX\DC2\ETX\CAN\a\DC3\n\r\n\ACK\b\231\a\NUL\STX\NUL\DC2\ETX\CAN\a\DC3\n\SO\n\a\b\231\a\NUL\STX\NUL\SOH\DC2\ETX\CAN\a\DC3\n\f\n\ENQ\b\231\a\NUL\a\DC2\ETX\CAN\SYN4\n\b\n\SOH\b\DC2\ETX\EM\NULF\n\v\n\EOT\b\231\a\SOH\DC2\ETX\EM\NULF\n\f\n\ENQ\b\231\a\SOH\STX\DC2\ETX\EM\a\ESC\n\r\n\ACK\b\231\a\SOH\STX\NUL\DC2\ETX\EM\a\ESC\n\SO\n\a\b\231\a\SOH\STX\NUL\SOH\DC2\ETX\EM\a\ESC\n\f\n\ENQ\b\231\a\SOH\a\DC2\ETX\EM\RSE\n\b\n\SOH\b\DC2\ETX\SUB\NUL$\n\v\n\EOT\b\231\a\STX\DC2\ETX\SUB\NUL$\n\f\n\ENQ\b\231\a\STX\STX\DC2\ETX\SUB\a\FS\n\r\n\ACK\b\231\a\STX\STX\NUL\DC2\ETX\SUB\a\FS\n\SO\n\a\b\231\a\STX\STX\NUL\SOH\DC2\ETX\SUB\a\FS\n\f\n\ENQ\b\231\a\STX\ETX\DC2\ETX\SUB\US#\n\b\n\SOH\b\DC2\ETX\ESC\NUL,\n\v\n\EOT\b\231\a\ETX\DC2\ETX\ESC\NUL,\n\f\n\ENQ\b\231\a\ETX\STX\DC2\ETX\ESC\a$\n\r\n\ACK\b\231\a\ETX\STX\NUL\DC2\ETX\ESC\a$\n\SO\n\a\b\231\a\ETX\STX\NUL\SOH\DC2\ETX\ESC\a$\n\f\n\ENQ\b\231\a\ETX\ETX\DC2\ETX\ESC'+\n\b\n\SOH\STX\DC2\ETX\FS\b\DC3\n\t\n\STX\ETX\NUL\DC2\ETX\RS\a@\n\n\n\STX\ACK\NUL\DC2\EOT \NUL-\SOH\n\n\n\ETX\ACK\NUL\SOH\DC2\ETX \b4\n\v\n\EOT\ACK\NUL\STX\NUL\DC2\ETX!\STXT\n\f\n\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX!\ACK\DC3\n\f\n\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX!\DC4-\n\f\n\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX!8R\n\v\n\EOT\ACK\NUL\STX\SOH\DC2\ETX\"\STXQ\n\f\n\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\"\ACK\DC2\n\f\n\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\"\DC3+\n\f\n\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\"6O\n\f\n\EOT\ACK\NUL\STX\STX\DC2\EOT#\STX\150\SOH\n\f\n\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX#\ACK)\n\f\n\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX#*Y\n\r\n\ENQ\ACK\NUL\STX\STX\ETX\DC2\EOT#d\148\SOH\n\v\n\EOT\ACK\NUL\STX\ETX\DC2\ETX$\STX~\n\f\n\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX$\ACK!\n\f\n\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX$\"I\n\f\n\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX$T|\n\v\n\EOT\ACK\NUL\STX\EOT\DC2\ETX%\STX]\n\f\n\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX%\ACK\SYN\n\f\n\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX%\ETB3\n\f\n\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX%>[\n\v\n\EOT\ACK\NUL\STX\ENQ\DC2\ETX&\STXc\n\f\n\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX&\ACK\CAN\n\f\n\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX&\EM7\n\f\n\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX&Ba\n\v\n\EOT\ACK\NUL\STX\ACK\DC2\ETX'\STX]\n\f\n\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX'\ACK\SYN\n\f\n\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX'\ETB3\n\f\n\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX'>[\n\v\n\EOT\ACK\NUL\STX\a\DC2\ETX(\STXd\n\f\n\ENQ\ACK\NUL\STX\a\SOH\DC2\ETX(\ACK\CAN\n\f\n\ENQ\ACK\NUL\STX\a\STX\DC2\ETX(\SUB8\n\f\n\ENQ\ACK\NUL\STX\a\ETX\DC2\ETX(Cb\n\v\n\EOT\ACK\NUL\STX\b\DC2\ETX)\STXo\n\f\n\ENQ\ACK\NUL\STX\b\SOH\DC2\ETX)\ACK\FS\n\f\n\ENQ\ACK\NUL\STX\b\STX\DC2\ETX)\GS?\n\f\n\ENQ\ACK\NUL\STX\b\ETX\DC2\ETX)Jm\n\v\n\EOT\ACK\NUL\STX\t\DC2\ETX*\STX~\n\f\n\ENQ\ACK\NUL\STX\t\SOH\DC2\ETX*\ACK!\n\f\n\ENQ\ACK\NUL\STX\t\STX\DC2\ETX*\"I\n\f\n\ENQ\ACK\NUL\STX\t\ETX\DC2\ETX*T|\n\v\n\EOT\ACK\NUL\STX\n\DC2\ETX+\STXg\n\f\n\ENQ\ACK\NUL\STX\n\SOH\DC2\ETX+\ACK\SUB\n\f\n\ENQ\ACK\NUL\STX\n\STX\DC2\ETX+\ESC:\n\f\n\ENQ\ACK\NUL\STX\n\ETX\DC2\ETX+Ee\n\f\n\EOT\ACK\NUL\STX\v\DC2\EOT,\STX\129\SOH\n\f\n\ENQ\ACK\NUL\STX\v\SOH\DC2\ETX,\ACK\"\n\f\n\ENQ\ACK\NUL\STX\v\STX\DC2\ETX,#K\n\f\n\ENQ\ACK\NUL\STX\v\ETX\DC2\ETX,V\DEL")