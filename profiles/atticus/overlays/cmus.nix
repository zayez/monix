self: super:
{
  cmus = super.cmus.overrideAttrs (oldAttrs: {
    buildInputs = oldAttrs.buildInputs++ [ self.systemd ];
  });
}
