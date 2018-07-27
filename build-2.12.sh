#!/bin/sh

sbt ++2.12.6 assembly
$GRAALVM_HOME/bin/native-image -H:ReflectionConfigurationFiles=play-reflectconfig.json -H:EnableURLProtocols=resource -H:IncludeResources='^(application|reference|version)\.conf$' -H:+ReportUnsupportedElementsAtRuntime -jar target/scala-2.12/play-scala-starter-example-assembly-1.0-SNAPSHOT.jar
