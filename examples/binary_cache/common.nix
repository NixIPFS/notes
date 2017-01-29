{
  system.stateVersion = "16.09";
  deployment.targetEnv = "virtualbox";
  deployment.virtualbox.memorySize = 2048;
  deployment.virtualbox.headless = true;

  i18n.defaultLocale = "en_US.UTF-8";
  services.nixosManual.showManual = false;
  services.ntp.enable = false;
  services.openssh.allowSFTP = false;
  services.openssh.passwordAuthentication = false;

  users = {
    mutableUsers = false;
    users.root.openssh.authorizedKeys.keyFiles = [ ~/.ssh/id_rsa.pub ];
  };
}
