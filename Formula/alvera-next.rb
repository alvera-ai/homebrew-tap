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
  version "0.21.1-next.g7fffc89"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.g7fffc89/alvera-0.21.1-next.g7fffc89-darwin-arm64.tar.gz"
      sha256 "5f024d7b83e1652fc33c43cfb94986abcfbe79a752ea7700484fa0944bd34f5e"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.g7fffc89/alvera-0.21.1-next.g7fffc89-darwin-x64.tar.gz"
      sha256 "17d9d372e815fee7f6a50057a94839268020c687dd94acf3c1ffcc15f6b4cf0a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.g7fffc89/alvera-0.21.1-next.g7fffc89-linux-x64.tar.gz"
      sha256 "2abc594c5fac8860d9b9691d99166b570dabecc09670d85f93965b90167699cd"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.g7fffc89/alvera-0.21.1-next.g7fffc89-linux-arm64.tar.gz"
      sha256 "13f126f2ebb9554d2cdc43c63e2795f4ae8d0e8add8d6ac5f30d45acff1b2567"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
