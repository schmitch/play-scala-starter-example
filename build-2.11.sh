#!/bin/sh

sbt assembly
$GRAALVM_HOME/bin/native-image -H:+ReportUnsupportedElementsAtRuntime -jar target/scala-2.11/play-scala-starter-example-assembly-1.0-SNAPSHOT.jar
