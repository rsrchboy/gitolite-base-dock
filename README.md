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
minimum all you need

## Replace admin.pub with an ssh public key of your choice

This will become the administrator's key.

# Profit!

Enjoy.  Ideas / bugs / suggestions?  Feel free to submit issues or pull
requests via github :)
