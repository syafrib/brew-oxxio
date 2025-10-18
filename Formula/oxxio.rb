class Oxxio < Formula
  desc "Oxxio CLI"
  homepage "https://github.com/syafrib/brew-oxxio"
  version "v0.1.4"

  on_macos do
    on_intel do
      url "https://github.com/syafrib/brew-oxxio/releases/download/v0.1.4/oxxio_v0.1.4_darwin_amd64.tar.gz"
      sha256 "399623401beb4a3168d1bc41acd5ec20b9d1e09e50764fe40b1d9b64b51c4f6b"
    end
    on_arm do
      url "https://github.com/syafrib/brew-oxxio/releases/download/v0.1.4/oxxio_v0.1.4_darwin_arm64.tar.gz"
      sha256 "e60d262dd75a27867fe410f234ee6755bd96705b88bb764dee06aebce28ca867"
    end
  end

  def install
    bin.install Dir["oxxio*"].first => "oxxio"
  end

  test do
    system "#{bin}/oxxio", "--help"
  end
end
