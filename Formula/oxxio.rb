class Oxxio < Formula
  desc "Oxxio CLI"
  homepage "https://github.com/syafrib/brew-oxxio"
  version "v0.1.3"

  on_macos do
    on_intel do
      url "https://github.com/syafrib/brew-oxxio/releases/download/v0.1.3/oxxio_v0.1.3_darwin_amd64.tar.gz"
      sha256 "160939bfc97307b1444d9b1ac45741ffe4c0fb92c0d69f213f28fc18c16a10d1"
    end
    on_arm do
      url "https://github.com/syafrib/brew-oxxio/releases/download/v0.1.3/oxxio_v0.1.3_darwin_arm64.tar.gz"
      sha256 "010845697e6ff95f3ae5073c8df8bc73ce5f22564c4c443d9ba2a1a8d90ed395"
    end
  end

  def install
    bin.install Dir["oxxio*"].first => "oxxio"
  end

  test do
    system "#{bin}/oxxio", "--help"
  end
end
