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
  version "0.12.1-next.gc6dc923"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gc6dc923/alvera-0.12.1-next.gc6dc923-darwin-arm64.tar.gz"
      sha256 "06487cebc28e87f1b0c1048fc2b4597ece09a482e85ffefa44ed79f5eedf726a"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gc6dc923/alvera-0.12.1-next.gc6dc923-darwin-x64.tar.gz"
      sha256 "a5426e9737dae9dc65c8c4d6f36726ce6c3a4d7b3bb4575d703dba69b11321f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gc6dc923/alvera-0.12.1-next.gc6dc923-linux-x64.tar.gz"
      sha256 "8c01de1a017431b7cd1ca249907f83ae93fcc02f87b4a4615c15233883c9b61d"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gc6dc923/alvera-0.12.1-next.gc6dc923-linux-arm64.tar.gz"
      sha256 "01392ae299ce5080a5fc38cb9ae3ac35471cd920dd4100822b0bc18c7696feee"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
