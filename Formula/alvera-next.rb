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
  version "0.12.1-next.g7ea655d"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g7ea655d/alvera-0.12.1-next.g7ea655d-darwin-arm64.tar.gz"
      sha256 "5f0596ee11ee4fcaf4f3f3f1d0deb00d60e0cc7b74ffa38b5d8605939c2bf1b8"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g7ea655d/alvera-0.12.1-next.g7ea655d-darwin-x64.tar.gz"
      sha256 "b6f2937f00151139894b4d4e533199924f6fd823c4eb7d1b0cd4b7040f705f70"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g7ea655d/alvera-0.12.1-next.g7ea655d-linux-x64.tar.gz"
      sha256 "2a470fb4a69b08a251c2a3bf41a940ff72fd672705b39dc76884acfff40f553a"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g7ea655d/alvera-0.12.1-next.g7ea655d-linux-arm64.tar.gz"
      sha256 "cf2ac5b22d981ba97d17b91a1c392a76cff20303d0dff16fb359e35d39bc564f"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
