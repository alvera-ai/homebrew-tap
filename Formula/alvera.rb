class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.18.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.1/alvera-0.18.1-darwin-arm64.tar.gz"
      sha256 "c366716dd1b433848910353a271d052b2e124d7c79c8142fb3a4460102759c27"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.1/alvera-0.18.1-darwin-x64.tar.gz"
      sha256 "1b96b8d60b12bd2debb6ee6bb2efb2f24582b23dc9dbf646aec427a7dd93ac11"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.1/alvera-0.18.1-linux-x64.tar.gz"
      sha256 "2d6bbcbd424b645c7b4f92d11eece3ea27522b23e7ba1c58ba5f017d0145142d"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.1/alvera-0.18.1-linux-arm64.tar.gz"
      sha256 "ecf838b20d5cb2346c29cbff5a1bcb14f8ad3c25f1847819ee4273202ff735de"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
