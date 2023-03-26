self: super:
{
  ffmpeg-full = super.ffmpeg-full.override {
    gplLicensing = true;
    x264 = super.x264;
  };
}
