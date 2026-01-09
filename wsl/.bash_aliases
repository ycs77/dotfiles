alias ..="cd .."
alias ...="cd ../.."
alias c='clear'
alias co='code'
alias cdco='cd ~/dev/code'
alias cdte='cd ~/dev/testing'
alias g='git'
alias cc='copilot'
alias ccc='claude'
alias ggg='gemini'

function mkcd() {
  mkdir "$1"
  cd "$1"
}

function killport() {
  sudo kill -9 $(sudo lsof -t -i:"$1")
}

# Laravel Artisan
alias pa='php artisan'
alias pav='php artisan serve'
alias pam='php artisan migrate'
alias pams='php artisan migrate --seed'
alias pamr='php artisan migrate:rollback'
alias pamf='php artisan migrate:fresh'
alias pamfs='php artisan migrate:fresh --seed'
alias pas='php artisan db:seed'
alias par='php artisan route:list'
alias paq='php artisan queue:work'
alias pah='php artisan horizon'
alias pat='php artisan tinker'
alias phpunit='./vendor/bin/phpunit --colors=always'
alias pu='phpunit'
alias pest='./vendor/bin/pest --colors=always'
alias p='pest'
alias pint='./vendor/bin/pint'
alias phpstan='./vendor/bin/phpstan analyse --ansi'
alias rector='./vendor/bin/rector'
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
alias s='sail'
alias sup='sail up'
alias supd='sail up -d'
alias sdown='sail down'
alias sa='sail artisan'

# NPM (requires @antfu/ni)
alias nv='nr dev' # nd exists in @antfu/ni
alias nb='nr build'
alias nl='nr lint'
alias nlf='nr lint --fix'
alias nt='nr test'
alias ntr='nr test --run'
alias yd='nr dev'
alias yb='nr build'
alias yl='nr lint'
alias ylf='nr lint --fix'
alias yt='nr test'
alias ytr='nr test --run'

# Docker
alias d='docker'
alias dis='docker images'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dr='docker run -it --rm'
alias dx='docker exec -it'

# Docker Compose
alias dc='docker compose'
alias dcr='docker compose run -it --rm'
alias dcx='docker compose exec -it'
alias dup='docker compose up'
alias dupd='docker compose up -d'
alias ddown='docker compose down'
