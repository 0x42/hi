hi
=====

An OTP application

Build
-----

    $ rebar3 compile


Git
-----
    $ git init
    $ git remote add origin git@github.com:0x42/hi.git

Git squash
    $ git rebase -i HEAD~12  12 - кол-во коммитов
    pick - оставить коммит
    squash - слить коммит

Показать все коммит сделанные в ветке
    $ git cherry -v master
    $ git cherry -v master | wc -l # кол-во коммитов