class Oxxio < Formula
  desc "Oxxio CLI"
  homepage "https://github.com/syafrib/brew-oxxio"
  version "v0.1.5"

  on_macos do
    on_intel do
      url "https://github.com/syafrib/brew-oxxio/releases/download/v0.1.5/oxxio_v0.1.5_darwin_amd64.tar.gz"
      sha256 "f7ed214a24a50822e72018cb84464a2b0ee45250ae50289b859a5a438068cd78"
    end
    on_arm do
      url "https://github.com/syafrib/brew-oxxio/releases/download/v0.1.5/oxxio_v0.1.5_darwin_arm64.tar.gz"
      sha256 "bd6009b174cc3bd2f15d911a97e962a639b5689c9e2d533fc490a3becab0483f"
    end
  end

  def install
    bin.install Dir["oxxio*"].first => "oxxio"
  end

  test do
    system "#{bin}/oxxio", "--help"
  end
end
