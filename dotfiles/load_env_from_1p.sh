#!/usr/bin/env bash

eval $(op signin)

BB_TOKEN_1P=$(op read op://Employee/bitbucket-api-token/credential)
export BB_TOKEN="${BB_TOKEN_1P}"
BB_USER_1P=$(op read op://Employee/bitbucket-api-token/username)
export BB_USERNAME="${BB_USER_1P}"
BB_WORKSPACE_1P=$(op read op://Employee/bitbucket-api-token/workspace)
export BB_WORKSPACE="${BB_WORKSPACE_1P}"

GH_TOKEN_1P=$(op read op://Employee/github-pat/credential)
export GH_TOKEN="${GH_TOKEN_1P}"
GH_USER_1P=$(op read op://Employee/github-pat/username)
export GH_USERNAME="${GH_USER_1P}"
GH_ORG_1P=$(op read op://Employee/github-pat/organization)
export GH_ORG="${GH_ORG_1P}"

ARTIFACTORY_TOKEN_1P=$(op read op://Employee/cloud-artifactory-identity-token/credential)
export ARTIFACTORY_TOKEN="${ARTIFACTORY_TOKEN_1P}"
ARTIFACTORY_USER_1P=$(op read op://Employee/cloud-artifactory-identity-token/username)
export ARTIFACTORY_USER="${ARTIFACTORY_USER_1P}"

JIRA_TOKEN_1P=$(op read op://Employee/atlassian-api-token-jira/credential)
export JIRA_TOKEN="${JIRA_TOKEN_1P}"
JIRA_USER_1P=$(op read op://Employee/atlassian-api-token-jira/username)
export JIRA_USER="${JIRA_USER_1P}"

JENKINS_TOKEN_1P=$(op read op://Employee/jenkins-api-token/credential)
export JENKINS_API_TOKEN="${JENKINS_TOKEN_1P}"
JENKINS_USER_1P=$(op read op://Employee/jenkins-api-token/username)
export JENKINS_USERNAME="${JENKINS_USER_1P}"
JENKINS_DOMAIN_1P=$(op read op://Employee/jenkins-api-token/hostname)
export JENKINS_DOMAIN="${JENKINS_DOMAIN_1P}"
JENKINS_PORT_1P=$(op read op://Employee/jenkins-api-token/port-number)
export JENKINS_PORT="${JENKINS_PORT_1P}"
JENKINS_API_SUFFIX_1P=$(op read op://Employee/jenkins-api-token/api-suffix)
export JENKINS_API_SUFFIX="${JENKINS_API_SUFFIX_1P}"
