IPFS Binary Cache
=================

[A script](https://github.com/NixIPFS/nixipfs-scripts) publishes currently to

`/ipns/Qmdjn23LZJAK5qnMVZRy6v5rtRcRuoLz1uNNm2PLf3EkLy`

which is also linked from (be aware: no DNSSEC)

`/ipns/nix.ipfs.sourcediver.org`

If you want to try it out for yourself, simply deploy
the config in this folder using NixOps.
You can then do some `nix-store --realise /nix/store/PATH`
to test.

Browse through the `.narinfo` files on

https://ipfs.io/ipns/nix.ipfs.sourcediver.org/binary_cache

to find out what is currently available.

You need to deploy from this nixpkgs repo:

https://github.com/NixIPFS/nixpkgs/tree/ipfs_binary_cache

This uses this Nix repo:

https://github.com/NixIPFS/nix/tree/ipfs_binary_cache
