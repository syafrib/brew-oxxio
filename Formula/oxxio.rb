class Oxxio < Formula
  desc "Oxxio CLI"
  homepage "https://github.com/syafrib/brew-oxxio"
  version "v0.1.5"

  on_macos do
    on_intel do
      url "https://github.com/syafrib/brew-oxxio/releases/download/v0.1.5/oxxio_v0.1.5_darwin_amd64.tar.gz"
      sha256 "4e6e3daed9503038fe00530b80fec88d826bed4e9382500d47c5be8e6cb8de74"
    end
    on_arm do
      url "https://github.com/syafrib/brew-oxxio/releases/download/v0.1.5/oxxio_v0.1.5_darwin_arm64.tar.gz"
      sha256 "1a7794659bbfe17355e19eff0563353af987aeb4f7ce8b485022410a8c94de58"
    end
  end

  def install
    bin.install Dir["oxxio*"].first => "oxxio"
  end

  test do
    system "#{bin}/oxxio", "--help"
  end
end
