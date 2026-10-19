class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.21.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.3/alvera-0.21.3-darwin-arm64.tar.gz"
      sha256 "f4a5087dcfb6bb1cc69352ab80861e9caff6958c6e194d2c66d88a47496b5986"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.3/alvera-0.21.3-darwin-x64.tar.gz"
      sha256 "27bba14da34c0a4970d1c29b3c6ca5d45591872d3f53bb5b9900953d9d9ab1e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.3/alvera-0.21.3-linux-x64.tar.gz"
      sha256 "692067f1777c76aa937f5de579b1edd2bbfd34a9bb283d4ad2aa8d53bbd6d103"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.3/alvera-0.21.3-linux-arm64.tar.gz"
      sha256 "ff2f6c66b8d7142aecc3ffe9cb416c94e9e837768f5b3bf5c4e369a275b0238d"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
