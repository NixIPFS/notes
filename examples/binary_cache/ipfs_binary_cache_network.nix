{
  network.description = "Test binary caches stored directly in IPFS";
  bc_user = import ./ipfs_binary.nix;
  ipfs_gw = import ./ipfs_gateway.nix;
}
