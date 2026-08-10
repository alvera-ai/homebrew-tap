class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.16.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.16.0/alvera-0.16.0-darwin-arm64.tar.gz"
      sha256 "c98bdbd98d8a490688168aa4e248437d2f0ae6a8fd449f359e43577243f75593"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.16.0/alvera-0.16.0-darwin-x64.tar.gz"
      sha256 "b13a56605c543394221eb50d0d2b4417c4ad717de4d28ed26c02ae859c84b954"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.16.0/alvera-0.16.0-linux-x64.tar.gz"
      sha256 "38e247b64abfe5a06902f9e4a23c17a4e877617ca16c3e4c6a1d69cb892af657"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.16.0/alvera-0.16.0-linux-arm64.tar.gz"
      sha256 "4ad21b0ea40a8b30bb239209de99260dd095a3a3ed649aa647474f20a790592c"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
