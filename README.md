hi
=====

An OTP application

Build
-----

    $ rebar3 compile

Debug
-----
% _ = dbg:tracer(),
% _ = dbg:tpl({ff_withdrawal, '_', '_'}, []),
% _ = dbg:p(all, [c, timestamp]),
% dbg:stop_clear(),

Git
-----
    $ git init
    $ git remote add origin git@github.com:0x42/hi.git

Git squash
    $ git rebase -i HEAD~12  12 - кол-во коммитов
    pick - оставить коммит
    squash - слить коммит

    $ git push --force origin <branch>

Показать все коммит сделанные в ветке
    $ git cherry -v master
    $ git cherry -v master | wc -l # кол-во коммитов
