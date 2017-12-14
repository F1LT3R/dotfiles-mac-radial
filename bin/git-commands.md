ga = git add -A -v | git add $@ -v
gp = git push
gl = git pull
gf = git fetch
gc = git commit -m "$@"
gam = git commit --amend -m "$@"

gd = git diff | git diff $@
