class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.19.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.1/alvera-0.19.1-darwin-arm64.tar.gz"
      sha256 "fe556d8c340448a04ef08dbbf65f7793d3e2b3031bb8bda57d02e97af9fe7c41"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.1/alvera-0.19.1-darwin-x64.tar.gz"
      sha256 "9f03bda09de5512c554b14d4d37b4130b07941d412812c9d8181706e3ff88024"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.1/alvera-0.19.1-linux-x64.tar.gz"
      sha256 "51aa6d69c7085db36bd8c0358242c136efa42a8c067b529045ddca1c76ddd336"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.1/alvera-0.19.1-linux-arm64.tar.gz"
      sha256 "20aa6294a6db6688dbe72a99893c0dc15ebbf4b2f365e825370179687a92c81a"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
