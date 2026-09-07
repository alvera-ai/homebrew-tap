class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.18.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0/alvera-0.18.0-darwin-arm64.tar.gz"
      sha256 "f1bac2f9ebfdc5c112094066f876c38cdc5337910ff5cf432a2ae528cb00072b"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0/alvera-0.18.0-darwin-x64.tar.gz"
      sha256 "ca5299799b49988e3d9b0328b272639708a1a22cde8f700a6cfeeb23c769d012"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0/alvera-0.18.0-linux-x64.tar.gz"
      sha256 "c1c62707a8166266e364eaab5e9917718e3379b3c344c318e655c7898bd0cd5e"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0/alvera-0.18.0-linux-arm64.tar.gz"
      sha256 "14067c153b4ce79f1f6e4cca43e5dd47938e685dcf40720648998d9d7443ef71"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
