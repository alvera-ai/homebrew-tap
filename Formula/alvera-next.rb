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
  version "0.12.1-next.gb3a5f52"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gb3a5f52/alvera-0.12.1-next.gb3a5f52-darwin-arm64.tar.gz"
      sha256 "bf63d83ab9acf88312b19a3c60f2604f8a483b3c6001349dce6942932eba2759"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gb3a5f52/alvera-0.12.1-next.gb3a5f52-darwin-x64.tar.gz"
      sha256 "d2e167411b55efb4625595f0b24debf82e884dcc9d75e3485761ae60a56f190a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gb3a5f52/alvera-0.12.1-next.gb3a5f52-linux-x64.tar.gz"
      sha256 "a0e2dda12ddc8951627abc573bcbf0b87ce93721eee8d9d14b931ae4bac904de"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gb3a5f52/alvera-0.12.1-next.gb3a5f52-linux-arm64.tar.gz"
      sha256 "780b688a41429ec083010d7a33c5b4fae6037ad55e6b6c164500fafa7021a0c1"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
