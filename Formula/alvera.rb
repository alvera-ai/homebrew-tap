class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.20.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0/alvera-0.20.0-darwin-arm64.tar.gz"
      sha256 "527393ec0a8d56f85658f0f5914cc98b553ade14b4ea8bb27656eb9bc681c6a9"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0/alvera-0.20.0-darwin-x64.tar.gz"
      sha256 "179f88c9b8f9f9e693973f7644e5a2390ed1425bacc350974a92035e06bf7efd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0/alvera-0.20.0-linux-x64.tar.gz"
      sha256 "a52118e6375c4f67ce7355f88ee87c4db1ea9ed76af664309c9e636b391be755"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0/alvera-0.20.0-linux-arm64.tar.gz"
      sha256 "3a668064d0ff93de00a4ebfe2654f42e14e85d714c69524edd0ec17ec7c11f16"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
