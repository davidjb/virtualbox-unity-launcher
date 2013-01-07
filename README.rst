About
=====

This is a bash script to integrate Virtualbox to the Unity launcher. Install
and run the script as per the instructions, and you'll get a super-shiny
VirtualBox listing of all your VMs.


Original Credit
===============

This script was originally from http://code.google.com/p/virtualbox-unity-launcher/.
This GitHub repository is its official home now.

A very big thanks to Daniel Scholtus for starting this.


Installation
============

Tested under Ubuntu 12.10 and with VirtualBox 4.2. Testing will keep in
lockstep with what I'm running on my computer.


#. Create the folders needed (just in case they are not present)::

    mkdir -p ~/.local/{bin,share/applications}

#. Download this script and make it executable::

    cd ~/.local/bin
    wget https://github.com/davidjb/virtualbox-unity-launcher/raw/master/virtualbox-unity.sh
    chmod u+x virtualbox-unity.sh

#. Run the script you just downloaded - doing so will create the Launcher item::

    ~/local/bin/virtualbox-unity.sh

#. Unlock VirtualBox from the Launcher and close any
   VirtualBox instance running (so its Launcher item disappears).

#. Start VirtualBox and right-click its Launcher item - you will see your shiny
   saved sessions list.

#. Click ``Lock to Launcher`` in this context menu to keep VirtualBox in your
   Launcher. See below about how to update the listing.

Backwards compatibility is not guaranteed, but will probbaly work just fine.
If something goes amiss, feel free to fork, fix, and send a pull request.

Updating your Launcher item
===========================

If you already have followed the instructions above, then the easiest way
to update your Launcher item is to re-run the ``virtualbox-unity.sh`` script.

If you re-run the script whilst VirtualBox is still running, the Launcher
item will update immediately.  If VirtualBox is not running, the Laucnher
item will disappear (but be available correctly once you start VirtualBox
again). In either case, you will need to 're-lock' your Launcher item
using the instructions above.


Fork me
=======

Feel free to improve this script however you would like. Send through pull 
requests at your leisure.  Current future ideas for implementation are:

* Prevent VirtualBox from needing to be manually re-added during updates
  (eg start VirtualBox if not running, update, and then quit VirtualBox
  if it wasn't running)
* Automatic updating (or instructions for cron, etc)


License
=======

Copyright (c) 2012 David Beitey (and Daniel Scholtus) 

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


