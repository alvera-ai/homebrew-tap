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
  version "0.17.0-next.g2f956c9"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g2f956c9/alvera-0.17.0-next.g2f956c9-darwin-arm64.tar.gz"
      sha256 "0c1e6c3e5707758c2782bd209fd034b98ba26b7afb16f45a6c14bf4e852bd0b0"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g2f956c9/alvera-0.17.0-next.g2f956c9-darwin-x64.tar.gz"
      sha256 "5fd453b3fe64e6f60a3d0a9a524c358cd4289d9ac9d238f261b66685aa5a6f5b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g2f956c9/alvera-0.17.0-next.g2f956c9-linux-x64.tar.gz"
      sha256 "25483dfb1fa2a559e78612b9d3ae012a13f4014c7999d4b085fda52c97d396ff"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g2f956c9/alvera-0.17.0-next.g2f956c9-linux-arm64.tar.gz"
      sha256 "423768c5d5b0a3e8e5d8bfa1064f7ffaaf17500c697c31b4dee2a6225b94a75a"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
