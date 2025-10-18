class Oxxio < Formula
  desc "Oxxio CLI"
  homepage "https://github.com/syafrib/brew-oxxio"
  version "v0.1.3"

  on_macos do
    on_intel do
      url "https://github.com/syafrib/brew-oxxio/-/releases/v0.1.3/downloads/oxxio_v0.1.3_darwin_amd64.tar.gz"
      sha256 "e4080f505e6a93f4458a73809b403996ab7c9181215d065d5bd5ca29583a6ced"
    end
    on_arm do
      url "https://github.com/syafrib/brew-oxxio/-/releases/v0.1.3/downloads/oxxio_v0.1.3_darwin_arm64.tar.gz"
      sha256 "337d6d29baec66b27d8c95fa0f1f62036e53b1a8ca4e4f2badd08c1bf5a18339"
    end
  end

  def install
    bin.install Dir["oxxio*"].first => "oxxio"
  end

  test do
    system "#{bin}/oxxio", "--help"
  end
end
