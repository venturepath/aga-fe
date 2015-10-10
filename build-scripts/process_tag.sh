#!/bin/bash
#
#  Return the artifact tag to use derived from the CI_BRANCH
#

tag=""
case "${CI_BRANCH}" in
    develop) tag="stage" ;;
    master) tag="" ;;
    *) tag="dev" ;;
esac
echo $tag | sed 's/\//-/g'
exit 0