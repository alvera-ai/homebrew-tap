class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.11.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/platform-sdk/releases/download/v0.11.0/alvera-0.11.0-darwin-arm64.tar.gz"
      sha256 "faddaea8bc68323aef3332ebc6e632d9099cafecbda7e4b3c2b2d4b791bd3112"
    end
    on_intel do
      url "https://github.com/alvera-ai/platform-sdk/releases/download/v0.11.0/alvera-0.11.0-darwin-x64.tar.gz"
      sha256 "c210ae4a3ae6b1ab7df0c9beca87570b21b9f5e393b7eda05de1f5c92501fec8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/platform-sdk/releases/download/v0.11.0/alvera-0.11.0-linux-x64.tar.gz"
      sha256 "efd00d0fe5c07a4adb9103af6a6e915eb607a1660b4a4b37d8e4d351e5057d75"
    end
    on_arm do
      url "https://github.com/alvera-ai/platform-sdk/releases/download/v0.11.0/alvera-0.11.0-linux-arm64.tar.gz"
      sha256 "06a29b1f042b955f883cebcffd016888ce0cccdf00305bf91309a9b5202edf38"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
