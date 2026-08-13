class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.16.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.16.3/alvera-0.16.3-darwin-arm64.tar.gz"
      sha256 "9b3da2527d7fd1ee646e236a99d07687c4a0f79a2105cc511e00fe9d1b0d19d2"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.16.3/alvera-0.16.3-darwin-x64.tar.gz"
      sha256 "9b49a7f7e4f4eb6a82851274bc9b01c57a27816c9f362c66bd8f3de230e8b7ba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.16.3/alvera-0.16.3-linux-x64.tar.gz"
      sha256 "b379e6f745537f3b1651e0797bfe8f86af109cf8b7234c74a0a8df1497ed4780"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.16.3/alvera-0.16.3-linux-arm64.tar.gz"
      sha256 "0ed10f11a01937b743012890be6e832c19df9492ebddc85601a5feb84467c7fa"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
