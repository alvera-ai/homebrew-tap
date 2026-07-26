class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.14.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.14.0/alvera-0.14.0-darwin-arm64.tar.gz"
      sha256 "fa2663ef005d18b76e26eb41d33d47dec89358f5ffbef9c4693c0beeb56ceaeb"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.14.0/alvera-0.14.0-darwin-x64.tar.gz"
      sha256 "2c537fd6d2c2156e7d9e65521adf0dfa81858268fcdd3979d5465395bd4ffcd6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.14.0/alvera-0.14.0-linux-x64.tar.gz"
      sha256 "a171921e9e24960105fe7ee0a2f103c52340a28da63e826e5d36c4574d8f86eb"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.14.0/alvera-0.14.0-linux-arm64.tar.gz"
      sha256 "54e6a2a17a3f50d3a3798185a2fea3f1f3eb825d4912705b930e748f0d621909"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
