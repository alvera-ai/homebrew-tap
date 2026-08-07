# Prerelease channel for the alvera CLI. keg_only so it installs
# alongside the stable alvera formula without clobbering it; point the
# alvera command at this build on demand with
#   brew link --overwrite --force alvera-next
# and revert with
#   brew unlink alvera-next
# Updated by release-cli.yml on every prerelease (next dispatch or rc tag).
class AlveraNext < Formula
  desc "Alvera platform CLI (prerelease channel) — point alvera at unstable on demand"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.15.0-next.g6e4d97c"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g6e4d97c/alvera-0.15.0-next.g6e4d97c-darwin-arm64.tar.gz"
      sha256 "6f89c8914db7304980f57de52252123e8905aa88dc48ab0537cb59652e6707de"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g6e4d97c/alvera-0.15.0-next.g6e4d97c-darwin-x64.tar.gz"
      sha256 "c6852bec85c1afc11d9cf862b26268d7d7ef188d331e59e262ad6f3a0187b739"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g6e4d97c/alvera-0.15.0-next.g6e4d97c-linux-x64.tar.gz"
      sha256 "b21ebcf722c1f3cef68360a899e984b5ca032a0f80aeaa581b50f6b93fa0896d"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g6e4d97c/alvera-0.15.0-next.g6e4d97c-linux-arm64.tar.gz"
      sha256 "1a80070486955cbbad9eb088978481ab4ba69138720ba9f0202b2df89b3be809"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
