alias pa='php artisan'
alias pa71='php71 artisan'
alias pa72='php72 artisan'
alias pa73='php73 artisan'
alias pa74='php74 artisan'
alias pa80='php80 artisan'
alias pa81='php81 artisan'
alias pa82='php82 artisan'
alias pam='php artisan migrate'
alias pams='php artisan migrate --seed'
alias pamr='php artisan migrate:rollback'
alias pamf='php artisan migrate:fresh'
alias pamfs='php artisan migrate:fresh --seed'
alias pas='php artisan db:seed'
alias par='php artisan route:list --columns=Method,URI,Name,Action'
alias paq='php artisan queue:work'
alias pat='php artisan tinker'
alias phpunit='./vendor/bin/phpunit --colors=always'
alias pu='phpunit'
alias pest='./vendor/bin/pest'
alias pint='./vendor/bin/pint'
alias stan='./vendor/bin/larastan'

alias php71='/c/laragon/bin/php/php-7.1.33-Win32-VC14-x64/php'
alias php72='/c/laragon/bin/php/php-7.2.34-Win32-VC15-x64/php'
alias php73='/c/laragon/bin/php/php-7.3.33-Win32-VC15-x64/php'
alias php74='/c/laragon/bin/php/php-7.4.30-Win32-vc15-x64/php'
alias php80='/c/laragon/bin/php/php-8.0.14-Win32-vs16-x64/php'
alias php81='/c/laragon/bin/php/php-8.1.8-Win32-vs16-x64/php'
alias php82='/c/laragon/bin/php/php-8.2.1-Win32-vs16-x64/php'
alias composer71='php71 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'
alias composer72='php72 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'
alias composer73='php73 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'
alias composer74='php74 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'
alias composer80='php80 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'
alias composer81='php81 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'
alias composer82='php82 /c/Users/Lucas/AppData/Local/ComposerSetup/bin/composer.phar'

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
