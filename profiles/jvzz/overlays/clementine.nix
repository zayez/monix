self: super:
{
  clementine = super.clementine.override {
    libgpod = true;
  };
}
