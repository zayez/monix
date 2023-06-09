# Taken from here
# https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh

{ config, pkgs, ... }:

{
  programs.fish.shellAliases = {
    ss="source ~/.config/fish/config.fish";
    g="git";
    ga="git add";
    gaa="git add --all";
    gapa="git add --patch";
    gau="git add --update";
    gav="git add --verbose";
    gap="git apply";
    gapt="git apply --3way";

    gb="git branch";
    gba="git branch -a";
    gbd="git branch -d";

    # needs to convert this string properly
    # missing git_main_branch function
    # gbda="git branch --no-color --merged | command grep -vE "^(\+|\*|\s*($(git_main_branch)|development|develop|devel|dev)\s*$)" | command xargs -n 1 git branch -d";

    gbD="git branch -D";
    gbl="git blame -b -w";
    gbnm="git branch --no-merged";
    gbr="git branch --remote";
    gbs="git bisect";
    gbsb="git bisect bad";
    gbsg="git bisect good";
    gbsr="git bisect reset";
    gbss="git bisect start";

    gc="git commit -v";
    "gc!"="git commit -v --amend";
    "gcn!"="git commit -v --no-edit --amend";
    gca="git commit -v -a";
    "gca!"="git commit -v -a --amend";
    "gcan!"="git commit -v -a --no-edit --amend";
    "gcans!"="git commit -v -a -s --no-edit --amend";
    gcam="git commit -a -m";
    gcsm="git commit -s -m";
    gcas="git commit -a -s";
    gcasm="git commit -a -s -m";
    gcb="git checkout -b";
    gcf="git config --list";
    gcl="git clone --recurse-submodules";
    gclean="git clean -id";
    gpristine="git reset --hard && git clean -dffx";

    # missing git_main_branch function
    # gcm="git checkout $(git_main_branch)";

    gcd="git checkout develop";
    gcmsg="git commit -m";
    gco="git checkout";
    gcor="git checkout --recurse-submodules";
    gcount="git shortlog -sn";
    gcp="git cherry-pick";
    gcpa="git cherry-pick --abort";
    gcpc="git cherry-pick --continue";
    gcs="git commit -S";
    gcss="git commit -S -s";
    gcssm="git commit -S -s -m";

    gd="git diff";
    gdca="git diff --cached";
    gdcw="git diff --cached --word-diff";
    gdct="git describe --tags (git rev-list --tags --max-count=1)";
    gds="git diff --staged";
    gdt="git diff-tree --no-commit-id --name-only -r";
    gdw="git diff --word-diff";

    gf="git fetch";
    gfo="git fetch origin";
    gfg="git ls-files | grep";
    gg="git gui citool";
    gga="git gui citool --amend";

    ggpur="ggu";
    ggpull="git pull origin (current_branch)";
    ggpush="git push origin (current_branch)";

    ggsup="git branch --set-upstream-to=origin/(git_current_branch)";
    gpsup="git push --set-upstream origin (git_current_branch)";

    ghh="git help";

    gignore="git update-index --assume-unchanged";
    # gignored="git ls-files -v | grep "^[[:lower:]]"";

    # missing git_main_branch function
    # git-svn-dcommit-push="git svn dcommit && git push github $(git_main_branch):svntrunk";

    gk="\gitk --all --branches";
    gke="\gitk --all (git log -g --pretty=%h)";

    gl="git pull";
    glg="git log --stat";
    glgp="git log --stat -p";
    glgg="git log --graph";
    glgga="git log --graph --decorate --all";
    glgm="git log --graph --max-count=10";
    glo="git log --oneline --decorate";

    # glol="git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"";
    # glols="git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset ";--stat"
    # glod="git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"";
    # glods="git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset ";--date=short"
    # glola="git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset ";--all"

    glog="git log --oneline --decorate --graph";
    gloga="git log --oneline --decorate --graph --all";
    glp="_git_log_prettily";

    gm="git merge";

    # missing git_main_branch function
    # gmom="git merge origin/$(git_main_branch)";

    gmt="git mergetool --no-prompt";
    gmtvim="git mergetool --no-prompt --tool=vimdiff";

    # missing git_main_branch function
    # gmum="git merge upstream/$(git_main_branch)";

    gma="git merge --abort";

    gp="git push";
    gpd="git push --dry-run";
    gpf="git push --force-with-lease";
    "gpf!"="git push --force";
    gpoat="git push origin --all && git push origin --tags";
    gpr="git pull --rebase";
    gpu="git push upstream";
    gpv="git push -v";

    gr="git remote";
    gra="git remote add";
    grb="git rebase";
    grba="git rebase --abort";
    grbc="git rebase --continue";
    grbd="git rebase develop";
    grbi="git rebase -i";

    # missing git_main_branch function
    # grbm="git rebase $(git_main_branch)";

    grbo="git rebase --onto";
    grbs="git rebase --skip";
    grev="git revert";
    grh="git reset";
    grhh="git reset --hard";
    groh="git reset origin/(current_branch) --hard";
    grm="git rm";
    grmc="git rm --cached";
    grmv="git remote rename";
    grrm="git remote remove";
    grs="git restore";
    grset="git remote set-url";
    grss="git restore --source";
    grst="git restore --staged";

    # grt="cd "$(git rev-parse --show-toplevel || echo .)"";

    gru="git reset --";
    grup="git remote update";
    grv="git remote -v";

    gsb="git status -sb";
    gsd="git svn dcommit";
    gsh="git show";
    gsi="git submodule init";
    gsps="git show --pretty=short --show-signature";
    gsr="git svn rebase";
    gss="git status -s";
    gst="git status";

    gstaa="git stash apply";
    gstc="git stash clear";
    gstd="git stash drop";
    gstl="git stash list";
    gstp="git stash pop";
    gsts="git stash show --text";
    gstu="gsta --include-untracked";
    gstall="git stash --all";
    gsu="git submodule update";
    gsw="git switch";
    gswc="git switch -c";

    gts="git tag -s";
    gtv="git tag | sort -V";

    # gtl="gtl(){ git tag --sort=-v:refname -n -l "${1}*" }; noglob gtl";

    gunignore="git update-index --no-assume-unchanged";

    # gunwip="git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1";

    gup="git pull --rebase";
    gupv="git pull --rebase -v";
    gupa="git pull --rebase --autostash";
    gupav="git pull --rebase --autostash -v";

    # missing git_main_branch function
    # glum="git pull upstream $(git_main_branch)";

    gwch="git whatchanged -p --abbrev-commit --pretty=medium";

    # gwip="git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"";

    gam="git am";
    gamc="git am --continue";
    gams="git am --skip";
    gama="git am --abort";
    gamscp="git am --show-current-patch";
  };
}