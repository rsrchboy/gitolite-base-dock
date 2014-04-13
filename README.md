# Gitolite in a box!

This image is a base gitolite image.  It's designed to be secure, robust,
easily extensible and upgradeable.

# Usage

There are two ways you can use this image:  directly, and by "inheriting" it
in another container/Dockerfile.

Using it directly involves replacing admin.pub and rebuilding it.  I don't
think this is the most awesome of ideas, so this is the last I'll mention it.

## First, create a ```Dockerfile``` for your own image, extending this one:

Something like:

```
FROM rsrchboy/gitolite-base:latest
MAINTAINER Hi There <me@foo.org>
```

Note you can make whatever other changes you desire at this point, but at a
minimum this is all you need to do to create a custom image with your ssh
public key pre-populated.

## Replace admin.pub with an ssh public key of your choice

This will become the administrator's key.

# Profit!

Enjoy.  Ideas / bugs / suggestions?  Feel free to submit issues or pull
requests via github :)

# Author and License

Copyright (c) 2014 by Chris Weyl <chris.weyl@wps.io>.

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>

This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

# Changes

## Wed Apr  9 22:10:59 PDT 2014

Rebuild to ensure we're using the latest openssl packages (re: CVE-2014-0160),
if any.
