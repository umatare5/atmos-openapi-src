# Release library
function release_library(){
  local GO_RELEASE_DIR=$1
  local GIT_LATEST_TAG=$2

  cd ${GO_RELEASE_DIR}
  git add .
  git commit -m "Bump version to ${GIT_LATEST_TAG}"
  git tag ${GIT_LATEST_TAG}
  git push origin main

  goreleaser release --rm-dist
  cd - > /dev/null
}

# Update subprojects
function update_subprojects(){
  local GIT_LATEST_TAG=$2

  git add .
  git commit -m "Update subprojects"
  git push origin main
}
