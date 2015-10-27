#!/usr/bin/env stack
-- stack --install-ghc runghc --package turtle
{-# LANGUAGE OverloadedStrings #-}
import           Data.Foldable             (for_)
import qualified Data.Text                 as Text
import           Filesystem.Path.CurrentOS
import           Prelude                   hiding (FilePath)
import           Turtle

parser :: Parser (FilePath, FilePath, Text)
parser = (,,) <$> argPath "src" "hadoop sourcecode directory"
              <*> argPath "dest" "output directory for proto files"
              <*> argText "module-prefix" "prefix for modules"

hadoopProjects :: [FilePath]
hadoopProjects = [ "hadoop-common-project/hadoop-common/src/main/proto"
                 , "hadoop-hdfs-project/hadoop-hdfs/src/main/proto"
                 , "hadoop-hdfs-project/hadoop-hdfs-client/src/main/proto"
                 , "hadoop-yarn-project/hadoop-yarn/hadoop-yarn-api/src/main/proto"
                 , "hadoop-yarn-project/hadoop-yarn/hadoop-yarn-common/src/main/proto/server"
                 , "hadoop-yarn-project/hadoop-yarn/hadoop-yarn-server/hadoop-yarn-server-applicationhistoryservice/src/main/proto"
                 , "hadoop-yarn-project/hadoop-yarn/hadoop-yarn-server/hadoop-yarn-server-common/src/main/proto"
                 , "hadoop-yarn-project/hadoop-yarn/hadoop-yarn-server/hadoop-yarn-server-nodemanager/src/main/proto"
                 , "hadoop-yarn-project/hadoop-yarn/hadoop-yarn-server/hadoop-yarn-server-resourcemanager/src/main/proto"
                 ]

pt :: FilePath -> Text
pt = either id id . toText

haskellModules :: FilePath -> Shell Text
haskellModules path  = do
  sed ("/" *> return ".") $ do hs <- dropExtension <$> find (suffix ".hs") path
                               let Just rel = stripPrefix path hs
                               return (pt rel)

prepareHprotoc :: Shell ()
prepareHprotoc = do
  _ <- proc "stack" ["install", "hprotoc"] mempty
  (_, hprotoc) <- procStrict "stack" ["exec", "which", "hprotoc"] mempty
  cp (fromText (Text.strip hprotoc)) "./protoc-gen-haskell"

main :: IO ()
main = do
  sh prepareHprotoc

  (hadoopDir, destDir, modPrefix) <- options "hadoop protobuf generator for haskell" parser

  hadoopDir' <- realpath hadoopDir
  destDir'   <- realpath destDir

  let protopaths = fmap (hadoopDir' </>) hadoopProjects
      importdirs = fmap (\p -> "--proto_path=" <> pt p) protopaths

  for_ protopaths  $ \prj -> sh $ do
    protos <- find (suffix ".proto") prj
    _ <- inproc "protoc" (importdirs <> [ pt protos,  "--haskell_out=" <> modPrefix <> ":" <> pt destDir
                                        , "--plugin=./protoc-gen-haskell" ]) mempty
    return ()

  sh $ stdout (haskellModules destDir')
