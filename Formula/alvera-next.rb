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
  version "0.12.1-next.g1532a90"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g1532a90/alvera-0.12.1-next.g1532a90-darwin-arm64.tar.gz"
      sha256 "0b13be4d7f6e122532c30e99fc3d6e5caccb4a0c28f0af59aa7973c9a87d5874"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g1532a90/alvera-0.12.1-next.g1532a90-darwin-x64.tar.gz"
      sha256 "4c047944d097f8f3c7d7601db02c9e9fec36a330ae53431df9410b68fe24006d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g1532a90/alvera-0.12.1-next.g1532a90-linux-x64.tar.gz"
      sha256 "c666ab33f63f87f700f0868a3f6ff0b125c0b560615dda42c2bb5ee1a4d616fe"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g1532a90/alvera-0.12.1-next.g1532a90-linux-arm64.tar.gz"
      sha256 "2869d5dcb3cafbfea1e5100cdd863952a252988424c3ad98acb3046788af7697"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
