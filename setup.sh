sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ZSH_THEME="powerlevel10k/powerlevel10k"


alias start_jupyter='bazel run //config:switch_environment hjoonkim-ejnar ; bazel run //jupyter:deploy.apply'
alias ns_redeploy='bazel run //config:switch_environment hjoonkim ; bazel run //jupyter:deploy.delete ; bazel run //k8s_base:deploy.apply ; start_jupyter'
alias jupyter_pf='kubectl port-forward jupyter-0-0 4040:4040'
alias stop_jupyter='bazel run //config:switch_environment hjoonkim-ejnar ; bazel run //jupyter:deploy.delete'
alias gb='git branch --sort=committerdate'
alias k='kubectl'
alias kg='kubectl get'
alias kgp='kubectl get pods | grep '
alias kgd='kubectl get deployment | grep '
alias kt='kubetail'
alias ki='kubectl-internal'
alias kig='kubectl-internal get'
alias kigp='kubectl-internal get pods | grep '
alias kigd='kubectl-internal get deployment | grep '
alias kiex='kubectl-internal exec -it'
alias kex='kubectl exec -it'
alias kde='kubectl describe'
alias bsw='bazel run //config:switch_environment'
alias lcs2_local='bazel run discovery/local_content_v2/local_content_service:local_content_service_v2 --define execution_environment=dev'
alias lcs2_local_db='bazel run discovery/local_content_v2/local_content_service:local_content_service_v2 --define execution_environment=dev -- --jvm_flags="-Dmicronaut.environments=localdb"'
alias lcs_local='bazel run //discovery/local_content -- server ./discovery/local_content/local_config.yaml'
alias local_jupyter='bazel run //jupyter:jupyter_notebook_local -- --notebook-dir ~/my_notebook'
alias deploy_jupyter='bazel run //jupyter:deploy.apply'