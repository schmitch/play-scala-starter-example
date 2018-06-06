#!/bin/sh

sbt ++2.12.5 assembly
$GRAALVM_HOME/bin/native-image -H:IncludeResources=src/main/resources/application.conf,src/main/resources/reference.conf -H:+ReportUnsupportedElementsAtRuntime -jar target/scala-2.12/play-scala-starter-example-assembly-1.0-SNAPSHOT.jar
