class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.18.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2/alvera-0.18.2-darwin-arm64.tar.gz"
      sha256 "067f407e418bf239adfb45f895ff67da45f01fb8be11195f05ce8806f1b5f928"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2/alvera-0.18.2-darwin-x64.tar.gz"
      sha256 "710944ce37c88a8e57cafc39e5042809feb728f5959df2b077c0d726b892d8bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2/alvera-0.18.2-linux-x64.tar.gz"
      sha256 "de6494b9c276249bfc8338f4ed6335d27b99fc81f6aaead2e0a0851e0355c48c"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2/alvera-0.18.2-linux-arm64.tar.gz"
      sha256 "a41efdbfa61a0996238d81f72a9f7c7cbaa5fdaa9313abc7c7c7520e186e6ee6"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
