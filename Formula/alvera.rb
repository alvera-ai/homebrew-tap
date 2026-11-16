class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.23.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.23.0/alvera-0.23.0-darwin-arm64.tar.gz"
      sha256 "51e8f8c66fac338a58cc2d35f07d999382c4906fef1645d64ce626d5c5fde910"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.23.0/alvera-0.23.0-darwin-x64.tar.gz"
      sha256 "b5b38820c5f9e45684cc5a7a2191f6d50eb92cf61af0cd19fa702537e9446483"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.23.0/alvera-0.23.0-linux-x64.tar.gz"
      sha256 "e195baa8c60318de7c715d5bd9bdfc1d12ae0128e4e5c4592230e5b1d79b4018"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.23.0/alvera-0.23.0-linux-arm64.tar.gz"
      sha256 "18ef7e5fa5d223ed014dd088c84938c7ce673f9594097ff146d0e648ceabc51a"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
