class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.21.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1/alvera-0.21.1-darwin-arm64.tar.gz"
      sha256 "217ee150ebeb597d0579f7a2492189c55ad9b65395a0492ac4fa9e2d82f8a9d0"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1/alvera-0.21.1-darwin-x64.tar.gz"
      sha256 "ff674d0dfa34b2e5b2dbf1116e5092ecff3c5be9fff041655d64543977a5470b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1/alvera-0.21.1-linux-x64.tar.gz"
      sha256 "d5a184434e099997af7dd4b6136cf40dece7c87b28b075092f5065bc208c970c"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1/alvera-0.21.1-linux-arm64.tar.gz"
      sha256 "c010dd8438ec2b436967186914acf369075160b259cdf48b2b5471ab23e1f0d3"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
