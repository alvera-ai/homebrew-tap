class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.21.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.0/alvera-0.21.0-darwin-arm64.tar.gz"
      sha256 "0aeb1a777f012c203a80db2b2c818fa15704d6fde694b313f58d3ec11d0ccf6f"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.0/alvera-0.21.0-darwin-x64.tar.gz"
      sha256 "99ceeb9f6feed8e87f1e9ac70ca3cdedb8c46127db368d4a53988179b8301329"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.0/alvera-0.21.0-linux-x64.tar.gz"
      sha256 "b31278440fb7d285f7ebcf71fbbafb41829966b2edcbeb2e89f95d5763456359"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.0/alvera-0.21.0-linux-arm64.tar.gz"
      sha256 "02209d98011719d09171661dddd8f6d633eaba5216f705a7793d27288a334a57"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
