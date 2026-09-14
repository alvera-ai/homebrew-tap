class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.19.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.2/alvera-0.19.2-darwin-arm64.tar.gz"
      sha256 "6f875369ec0804f2ef296123dd96544c82f91919f268650013fcb8116ab0e7c0"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.2/alvera-0.19.2-darwin-x64.tar.gz"
      sha256 "d286cd0f367ca93e96488621f61d668db311d2bf351e2cf2976fa7c7d6d4f2cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.2/alvera-0.19.2-linux-x64.tar.gz"
      sha256 "b3a2ec79da404432b23c8721a7c10ca3effdf1a71100fa39907c8f16167895dd"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.2/alvera-0.19.2-linux-arm64.tar.gz"
      sha256 "40d238793276af1997ab7391a101c00ebdc10573bd77a663e734c359abf69a47"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
