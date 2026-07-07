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
  version "0.12.1-next.g25745d6"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g25745d6/alvera-0.12.1-next.g25745d6-darwin-arm64.tar.gz"
      sha256 "a017b076268bc73d9c959c2fe4b62c064733d8e2db6dd5b6386203d7f8fc11b6"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g25745d6/alvera-0.12.1-next.g25745d6-darwin-x64.tar.gz"
      sha256 "fe6c33b43abd3bf71247a82c2c36168f075351e5d0a3110f64345dd41256dcba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g25745d6/alvera-0.12.1-next.g25745d6-linux-x64.tar.gz"
      sha256 "dc6ed70ad6bac58b2da3b581ca53ce01080acb9942f33a45497f68aa231174ba"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g25745d6/alvera-0.12.1-next.g25745d6-linux-arm64.tar.gz"
      sha256 "add6b76e793c6de5e3a9b7375c41a042cf28de117e50a5d57e03fa0dc1a64932"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
