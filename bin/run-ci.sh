#!/usr/bin/env bash
set -eu
set -o nounset

sbt -Dfile.encoding=UTF-8 \
  -J-XX:ReservedCodeCacheSize=512M \
  -J-Xms1024M -J-Xmx2048M -J-server \
  mimaReportBinaryIssues \
  scalafmtCheckAll \
  scalafmtSbtCheck \
  whitesourceCheckPolicies \
  Test/compile \
  doc \
  crossTestBridges \
  test \
  scripted
