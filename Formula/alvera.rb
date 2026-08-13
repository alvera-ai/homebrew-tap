class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.16.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.16.2/alvera-0.16.2-darwin-arm64.tar.gz"
      sha256 "fcd16c8acc12e8c7cd076564495f265617025cfd7dfdcb93b79c26c09c83e832"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.16.2/alvera-0.16.2-darwin-x64.tar.gz"
      sha256 "b007985a6149e958e29924ff2211f8e2daaffee1ae43cc930ad7ad98fd76a28d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.16.2/alvera-0.16.2-linux-x64.tar.gz"
      sha256 "cf8055ee2f2a2365f2acd0b7e18e7c25eff8db99fea317679ff2885e4e463765"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.16.2/alvera-0.16.2-linux-arm64.tar.gz"
      sha256 "7ce879b93ecdbb656595ae3ae53b30a2f877f250b360b385a4bb402c38e16c18"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
