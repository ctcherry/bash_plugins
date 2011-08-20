bash_plugins
============

*Experimental*

An extensible system to organize bash customizations into plugins.


Install
-------

- Clone repository into `~/.bash_plugins`
- Add `source .bash_plugins/init.sh` to `.bashrc`


Activate a plugin
-----------------
Create a symlink at `~/.bash_plugins/enabled_plugins/PLUGIN_NAME` pointing to `~/.bash_plugins/available_plugins/PLUGIN_NAME`

Example:

    $ cd ~/.bash_plugins/enabled_plugins
    $ ln -s ../available_plugins/lastdir .


How to contribute a new plugin or changes
-----------------------------------------

Create Github fork and issue pull request.