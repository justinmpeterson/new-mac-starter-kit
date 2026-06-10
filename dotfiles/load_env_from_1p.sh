#!/usr/bin/env bash

eval $(op signin)

BB_TOKEN_1P=$(op read op://Employee/bitbucket-api-token/credential)
echo "export BB_TOKEN=\"${BB_TOKEN_1P}\""
BB_USER_1P=$(op read op://Employee/bitbucket-api-token/username)
echo "export BB_USERNAME=\"${BB_USER_1P}\""
BB_WORKSPACE_1P=$(op read op://Employee/bitbucket-api-token/workspace)
echo "export BB_WORKSPACE=\"${BB_WORKSPACE_1P}\""

GH_TOKEN_1P=$(op read op://Employee/github-pat/credential)
echo "export GH_TOKEN=\"${GH_TOKEN_1P}\""
GH_USER_1P=$(op read op://Employee/github-pat/username)
echo "export GH_USERNAME=\"${GH_USER_1P}\""
GH_ORG_1P=$(op read op://Employee/github-pat/organization)
echo "export GH_ORG=\"${GH_ORG_1P}\""

TEAMS_HOOK_DOMAIN=$(op read op://Employee/microsoft-teams-webhook/domain)
echo "export MS_TEAMS_WEBHOOK_DOMAIN=\"${TEAMS_HOOK_DOMAIN}\""
TEAMS_HOOK_PATH=$(op read op://Employee/microsoft-teams-webhook/uri)
echo "export MS_TEAMS_WEBHOOK_PATH=\"${TEAMS_HOOK_PATH}\""

ARTIFACTORY_TOKEN_1P=$(op read op://Employee/cloud-artifactory-identity-token/credential)
echo "export ARTIFACTORY_TOKEN=\"${ARTIFACTORY_TOKEN_1P}\""
ARTIFACTORY_USER_1P=$(op read op://Employee/cloud-artifactory-identity-token/username)
echo "export ARTIFACTORY_USER=\"${ARTIFACTORY_USER_1P}\""

JIRA_TOKEN_1P=$(op read op://Employee/atlassian-api-token-jira/credential)
echo "export JIRA_TOKEN=\"${JIRA_TOKEN_1P}\""
JIRA_USER_1P=$(op read op://Employee/atlassian-api-token-jira/username)
echo "export JIRA_USER=\"${JIRA_USER_1P}\""

GH_TOK_1P=$(op read op://Employee/github-pat-ana-build/credential)
echo "export GH_TOK=\"${GH_TOK_1P}\""
GH_USR_1P=$(op read op://Employee/github-pat-ana-build/username)
echo "export GH_USER=\"${GH_USR_1P}\""

JENKINS_TOKEN_1P=$(op read op://Employee/jenkins-api-token/credential)
echo "export JENKINS_API_TOKEN_CPR=\"${JENKINS_TOKEN_1P}\""
echo "export JENKINS_API_TOKEN_CPR_STG=\"${JENKINS_TOKEN_1P}\""
JENKINS_USER_1P=$(op read op://Employee/jenkins-api-token/username)
echo "export JENKINS_USER_CPR=\"${JENKINS_USER_1P}\""
echo "export JENKINS_USER_CPR_STG=\"${JENKINS_USER_1P}\""
JENKINS_DOMAIN_1P=$(op read op://Employee/jenkins-api-token/hostname)
echo "export JENKINS_DOMAIN_CPR=\"${JENKINS_DOMAIN_1P}\""
JENKINS_DOMAIN_STG_1P=$(op read op://Employee/jenkins-api-token/hostname-stg)
echo "export JENKINS_DOMAIN_CPR_STG=\"${JENKINS_DOMAIN_STG_1P}\""
JENKINS_PORT_1P=$(op read op://Employee/jenkins-api-token/port-number)
echo "export JENKINS_PORT_CPR=\"${JENKINS_PORT_1P}\""
echo "export JENKINS_PORT_CPR_STG=\"${JENKINS_PORT_1P}\""
JENKINS_API_SUFFIX_1P=$(op read op://Employee/jenkins-api-token/api-suffix)
echo "export JENKINS_API_SUFFIX_CPR=\"${JENKINS_API_SUFFIX_1P}\""
echo "export JENKINS_API_SUFFIX_CPR_STG=\"${JENKINS_API_SUFFIX_1P}\""
