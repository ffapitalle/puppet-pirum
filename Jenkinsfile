node {
  deleteDir()
  checkout scm

  stage 'syntax check'
  sh '''#!/bin/bash
  puppet parser validate manifests/
  '''

  stage 'lint check'
  sh '''#!/bin/bash
  puppet-lint manifests/*.pp
  '''
}
