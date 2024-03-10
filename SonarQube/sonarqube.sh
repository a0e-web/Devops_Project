#! /bin/bash
# bash (tercihiniz olsun) ancak bh eskidi
mvn clean verify sonar:sonar \
  -Dsonar.projectKey=JavaDevopsProject \
  -Dsonar.projectName='JavaDevopsProject' \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.token=sqp_e052f2fdcfc15a5b0a764d11f06ff2b842f717d7

