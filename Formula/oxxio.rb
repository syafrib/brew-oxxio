class Oxxio < Formula
  desc "Oxxio CLI"
  homepage "https://gitlab.com/oxxio	/brew-oxxio"
  version "v0.1.2"

  on_macos do
    on_intel do
      url "https://gitlab.com/oxxio	/brew-oxxio/-/releases/v0.1.2/downloads/oxxio_v0.1.2_darwin_amd64.tar.gz"
      sha256 "32e0243087865c5d70bd21dfae46b853511afb037a60a6db1e413608ac1a9549"
    end
    on_arm do
      url "https://gitlab.com/oxxio	/brew-oxxio/-/releases/v0.1.2/downloads/oxxio_v0.1.2_darwin_arm64.tar.gz"
      sha256 "a4f09d382cdf1d73416ee9b7fd811fb41cfd71306a793e812bc95f117433cc40"
    end
  end

  def install
    bin.install Dir["oxxio*"].first => "oxxio"
  end

  test do
    system "#{bin}/oxxio", "--help"
  end
end
