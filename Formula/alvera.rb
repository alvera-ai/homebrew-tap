class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.21.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.4/alvera-0.21.4-darwin-arm64.tar.gz"
      sha256 "a4636471b382301ed7350d8875aaaad3280b058cced75d4e6bcc36e45f3ad96b"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.4/alvera-0.21.4-darwin-x64.tar.gz"
      sha256 "beb0afa1ccff43b68c7605776e7af8d091e3da1d85fe7d0c849f35db50753102"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.4/alvera-0.21.4-linux-x64.tar.gz"
      sha256 "278d6215ab064b009cb82bd517ef0b420c8393e8324c09efec51bd357cd9d91a"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.4/alvera-0.21.4-linux-arm64.tar.gz"
      sha256 "561e0a8d78fcb301a72e037833bb54ea4f153e5daccc554d8aa7893e50aa3bf0"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
