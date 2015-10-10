## A copy of this script is in the repository at:
## /build-scripts/codeship_deploy-step-1.sh
## If you make changes directly on Codeship, make sure to
## check in the changes to the repository.  It is actually
## best to update the one in source control and copy/paste
## the script into the Codeship page.

## Variables
PACKAGE_OWNER=venturepath
PACKAGE_NAME=aga-fe
QA_TAG=$(build-scripts/process_tag.sh)

## used in step 2
export S3_ARTIFACT_BUCKET_NAME=aga-static/${QA_TAG}

# Change directory to home
cd ~

## Create the artifact directory, this is required due to the
## way the Codeship S3 deployment mechanism works.
mkdir artifact

## Move the artifact to the artifact directory, this is
## required due to the way the Codeship S3 deployment
## mechanism works.
mv "src/github.com/${PACKAGE_OWNER}/${PACKAGE_NAME}/static" "artifact"