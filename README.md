emacs_config
============
Mostly for Python Development in Windows 7

## Installation ##
* Clone and put it somewhere (e.g. ~/emacs_config)
* Put into your .emacs the following. Assuming you don't have any other config:
~~~
  (add-to-list 'load-path "~/emacs_config")
  (require 'emacs_cfg)
~~~

## Requirements and Must-haves ##
Most of the Emacs packages in this config is already in but just for you to replicate it and myself. Here are the things that need to be in your Windows 7 system.

* MinGW - <http://www.mingw.org>. Use the windows installer. Add to your PATH. Then edit `distutils.cfg` to add :
~~~
[compiler]
mingw-32
~~~
* Github for Windows. <http://windows.github.com/>. I only use the powershell.
* msysgit - If you want more control. <http://msysgit.github.com/>
* Emacs 24.1 - Google the windows zip package. Tame it by following this Sacha Chua's [post](http://sachachua.com/blog/2012/06/making-gnu-emacs-play-well-on-microsoft-windows-7/)

These files are already in my repo but just so you know where I got them.

* python-mode.el v6.0.10 - <https://launchpad.net/python-mode/>. Extract tar.gz. Do `python setup.py install`.
* auto-complete.el v1.3 - <https://github.com/m2ym/auto-complete/tree/1.3>
* yasnippet checked out latest - <https://github.com/capitaomorte/yasnippet>
* python-pep8 - use `pip install pep8` or `easy_install pep8`. Then google for python-pep8.el
* python-pylint - use `pip install pylint` or `easy_install pylint`. Then google for python-pylint.el.