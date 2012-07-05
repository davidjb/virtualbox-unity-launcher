Changes
=======

1.1 (unreleased)
----------------

- Add change log.
  [davidjb]
- Improve script to work with ``virtualbox-ose`` and ``virtualbox`` (check which command is installed , or reports if none).
  [davidjb]
- Define the launcher locations just once at the top of the script.
  [davidjb]
- Feature the additional 'whitespace' fix as per 
  http://code.google.com/p/virtualbox-unity-launcher/issues/detail?id=2
  [davidjb]
- Check for existence of system-level launcher to copy in case it isn't there (so we don't overwrite an existing launcher).
  [davidjb]
- Check to make sure the local launcher was created correctly before proceeding
  [davidjb]


1.0 (2011-05-01)
----------------

- Initial creation.
