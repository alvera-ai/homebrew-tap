class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.22.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0/alvera-0.22.0-darwin-arm64.tar.gz"
      sha256 "399868361a87ecde41072ef69b9c18e01f9badc401b46ccea6d9d8def86e05e8"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0/alvera-0.22.0-darwin-x64.tar.gz"
      sha256 "e1139852c1a1e1f39d1d311fad086b4e76ef540a7cf2fd526724ec7b2a0b5a2b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0/alvera-0.22.0-linux-x64.tar.gz"
      sha256 "57ddb970ece4e6e7dcccd6d096ff125117dff8900fd99cdc8109224ad0459dc1"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0/alvera-0.22.0-linux-arm64.tar.gz"
      sha256 "bface21e8faccaf0f63504d0db78bf16b27a642075fa6b03c0a246674a47109b"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
