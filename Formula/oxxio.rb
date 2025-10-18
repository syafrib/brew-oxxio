class Oxxio < Formula
  desc "Oxxio CLI"
  homepage "https://github.com/syafrib/brew-oxxio"
  version "v0.1.3"

  on_macos do
    on_intel do
      url "https://github.com/syafrib/brew-oxxio/releases/download/v0.1.3/oxxio_v0.1.3_darwin_amd64.tar.gz"
      sha256 "99dffe15458ec1f566ae6157b7fe8697c33d5a569db72f5d2ed5fb08eacc212f"
    end
    on_arm do
      url "https://github.com/syafrib/brew-oxxio/releases/download/v0.1.3/oxxio_v0.1.3_darwin_arm64.tar.gz"
      sha256 "a6a0f65e04f08ee9f9e09390a03b9d3674ed3c9d8283feb8af248bb8593f616a"
    end
  end

  def install
    bin.install Dir["oxxio*"].first => "oxxio"
  end

  test do
    system "#{bin}/oxxio", "--help"
  end
end
