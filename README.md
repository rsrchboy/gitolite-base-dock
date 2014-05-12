# Gitolite in a box!

This image is a base gitolite image.  It's designed to be secure, robust,
easily extensible and upgradeable.

# Usage

There are two ways you can use this image:  directly, and by "inheriting" it
in another container/Dockerfile.

Using it directly involves replacing admin.pub and rebuilding it.  I don't
think this is the most awesome of ideas, so this is the last I'll mention it.

## First, create a ```Dockerfile```

...for your own image, extending this one.

Something like:

```
FROM rsrchboy/gitolite-base:latest
MAINTAINER Hi There <me@foo.org>
```

Note you can make whatever other changes you desire at this point, but at a
minimum this is all you need to do to create a custom image with your ssh
public key pre-populated.

## Add your ssh public key

Replace admin.pub with an ssh public key of your choice;
this will become the administrator's key.

## Profit!

Enjoy.  Ideas / bugs / suggestions?  Please use github to
[submit issues][4] or [pull requests][5].

# Author and License

Copyright (c) 2014 by Chris Weyl <chris.weyl@wps.io>.

[![][51]][50]

This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License][50].

[![][2]][1] [![][100]][101]

Please note **I do not expect to be gittip'ed or flattr'ed** for this work, but it is rather a very pleasant surprise.  I largely create and release works like this because I need them or I find it enjoyable; however, don't let that stop you giving me money if you feel like it ;)


[1]: https://flattr.com/submit/auto?user_id=RsrchBoy&url=https://github.com/RsrchBoy/gitolite-base-dock&title=Docker.io%20gitolite-base%20image&tags=docker
[2]: http://api.flattr.com/button/flattr-badge-large.png "Flattr this if -- and only if -- you want :)"
[4]: https://github.com/RsrchBoy/gitolite-base-dock/issues
[5]: https://github.com/RsrchBoy/gitolite-base-dock/pulls
[50]: http://creativecommons.org/licenses/by-sa/4.0/ "Creative Commons License"
[51]: http://i.creativecommons.org/l/by-sa/4.0/88x31.png "Creative Commons License CC-BY-SA"
[52]: http://i.creativecommons.org/l/by-sa/4.0/80x15.png "Creative Commons License CC-BY-SA"
[100]: https://raw.githubusercontent.com/gittip/www.gittip.com/master/www/assets/%25version/logo.png
[101]: https://www.gittip.com/RsrchBoy/

# Changes

### Sun Apr 13 15:02:25 PDT 2014

*No image changes.* Add a formal license declaration; add a flattr link; minor doc fixups.

### Wed Apr  9 22:10:59 PDT 2014

Rebuild to ensure we're using the latest openssl packages (re: CVE-2014-0160),
if any.
