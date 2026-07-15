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
  version "0.12.1-next.ga66b8a5"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ga66b8a5/alvera-0.12.1-next.ga66b8a5-darwin-arm64.tar.gz"
      sha256 "4e86e0309f62347bb37907adac87f4f0908cde81899e08916d96b98a580d602f"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ga66b8a5/alvera-0.12.1-next.ga66b8a5-darwin-x64.tar.gz"
      sha256 "9e09adadbcca730af34fab3af0d565f397908c774a268eb30ba64874bb4e763d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ga66b8a5/alvera-0.12.1-next.ga66b8a5-linux-x64.tar.gz"
      sha256 "9a9440f39791ad086237790e2b9e6196ebaf03589cd218ae288d5abc7fdf9ae4"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ga66b8a5/alvera-0.12.1-next.ga66b8a5-linux-arm64.tar.gz"
      sha256 "45043bb96ff0b5bff4155888932efdf5ba1b2642700513327045b1c981e86917"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
