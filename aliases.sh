alias ..="cd .."
alias ...="cd ../.."
alias c='clear'
alias co='code'
alias cdco='cd /d/dev/code'
alias cdte='cd /d/dev/testing'
alias g='git'

function mkcd() {
  mkdir "$1"
  cd "$1"
}

function killport() {
  sudo kill -9 $(sudo lsof -t -i:"$1")
}

# Laravel Artisan
alias pa='php artisan'
alias pa71='php71 artisan'
alias pa72='php72 artisan'
alias pa73='php73 artisan'
alias pa74='php74 artisan'
alias pa80='php80 artisan'
alias pa81='php81 artisan'
alias pa82='php82 artisan'
alias pa83='php83 artisan'
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
alias stan='./vendor/bin/phpstan analyse --memory-limit=512M'
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
alias s='sail'
alias sup='sail up'
alias supd='sail up -d'
alias sdown='sail down'
alias sa='sail artisan'

# NPM
alias ni='npm install'
alias nd='npm run dev'
alias nb='npm run build'
alias nl='npm run lint'
alias nt='npm run test'
alias y='yarn'
alias yd='yarn dev'
alias yb='yarn build'
alias yl='yarn lint'
alias ylf='yarn lint --fix'
alias yt='yarn test'
alias ytr='yarn test --run'

# PHP version
alias php71='/c/laragon/bin/php/php-7.1.33-Win32-VC14-x64/php'
alias php72='/c/laragon/bin/php/php-7.2.34-Win32-VC15-x64/php'
alias php73='/c/laragon/bin/php/php-7.3.33-Win32-VC15-x64/php'
alias php74='/c/laragon/bin/php/php-7.4.30-Win32-vc15-x64/php'
alias php80='/c/laragon/bin/php/php-8.0.14-Win32-vs16-x64/php'
alias php81='/c/laragon/bin/php/php-8.1.29-Win32-vs16-x64/php'
alias php82='/c/laragon/bin/php/php-8.2.20-Win32-vs16-x64/php'
alias php83='/c/laragon/bin/php/php-8.3.8-Win32-vs16-x64/php'
alias composer71='php71 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'
alias composer72='php72 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'
alias composer73='php73 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'
alias composer74='php74 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'
alias composer80='php80 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'
alias composer81='php81 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'
alias composer82='php82 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'
alias composer83='php83 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'

# Homestead
function vup() (
  cd ~/Homestead
  if [[ $1 == '-p' ]]; then
    vagrant up --provision
  else
    vagrant up
  fi
)

function vp() (
  cd ~/Homestead
  vagrant provision
)

function vs() (
  cd ~/Homestead
  if [[ ! -z $1 ]]; then
    vagrant ssh -c "$1"
  else
    vagrant ssh
  fi
)

function vh() (
  cd ~/Homestead
  vagrant halt
)

function vrs() (
  cd ~/Homestead
  vagrant halt
  if [[ $1 == '-p' ]]; then
    vagrant up --provision
  else
    vagrant up
  fi
)

function vst() (
  cd ~/Homestead
  vagrant status
)

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
