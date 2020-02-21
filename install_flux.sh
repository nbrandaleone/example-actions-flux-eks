export GHOWNER=nbrandaleone
export GHREPO=example-actions-flux-eks

kubectl create ns flux

fluxctl install \
    --git-user=${GHUSER} \
    --git-email=${GHUSER}@users.noreply.github.com \
    --git-url=git@github.com:${GHOWNER}/${GHREPO} \
    --git-path=manifests \
    --namespace=flux | kubectl apply -f -
