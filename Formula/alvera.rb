class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.17.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0/alvera-0.17.0-darwin-arm64.tar.gz"
      sha256 "c3f1adc2fdf6503337c41b2994a19bafec9f981f3b0959a776865b19ba13efa0"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0/alvera-0.17.0-darwin-x64.tar.gz"
      sha256 "353d3999a13f33166de572cfca9e4e7a47ce327d72a9a82a410305e4a89747b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0/alvera-0.17.0-linux-x64.tar.gz"
      sha256 "c9a288fe86002056dbe31310b642b4983493ccda8b1047cb8bca5613349adf46"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0/alvera-0.17.0-linux-arm64.tar.gz"
      sha256 "5b3f498b8abe281d40eed7466c3816ec9f485b0f40d9d57f46096f051d6aa5aa"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
