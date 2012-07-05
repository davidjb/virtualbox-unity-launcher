About
=====

This is a bash script to integrate Virtualbox to the Unity launcher.
A 'friendly' fork of http://code.google.com/p/virtualbox-unity-launcher/,
made available for your further forking and hacking pleasure here on GitHub
(and thus in version control).


Original Credit
===============

Thanks to Daniel Scholtus for starting this.


Installation
============

Tested under Ubuntu 12.04 and with VirtualBox 4.1.

#. Create the folders needed (just in case they are not present)::

    mkdir -p ~/.local/{bin,share/applications}

#. Download this script and make it executable::

    cd ~/.local/bin
    wget http://virtualbox-unity-launcher.googlecode.com/files/virtualbox-unity.sh
    chmod u+x virtualbox-unity.sh

#. Run it - this will create the Launcher item::

    ~/local/bin/virtualbox-unity.sh

#. Unlock VirtualBox from the Launcher and close any
   VirtualBox instance running (so its Launcher item disappears).

#. Start VirtualBox and right-click its Launcher item - you will see your shiny
   saved sessions list.

#. Click ``Lock to Launcher`` in this context menu to keep VirtualBox in your
   Launcher. See below about how to update the listing.

Updating
========

If you already have followed the instructions above, then the easiest way
to update your Launcher item is to re-run the ``virtualbox-unity.sh`` script.

If you re-run the script whilst VirtualBox is still running, the Launcher
item will update immediately.  If VirtualBox is not running, the Laucnher
item will disappear (but be available correctly once you start VirtualBox
again). In either case, you will need to 're-lock' your Launcher item
using the instructions above.

