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
  version "0.21.3-next.g393d024"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.3-next.g393d024/alvera-0.21.3-next.g393d024-darwin-arm64.tar.gz"
      sha256 "9477686d2e8f0edc5822527730a2e4fd5997942c7737657b2087856ff40c354d"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.3-next.g393d024/alvera-0.21.3-next.g393d024-darwin-x64.tar.gz"
      sha256 "03a330d04a44fed449df3704981a945b2e648642ee47aa3f83bff5404c1f351c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.3-next.g393d024/alvera-0.21.3-next.g393d024-linux-x64.tar.gz"
      sha256 "eb2871a885a8fe4acfecabffcea76871ae1550bc911e928e69b920b2cb7552b8"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.3-next.g393d024/alvera-0.21.3-next.g393d024-linux-arm64.tar.gz"
      sha256 "b6c17b5d8ef20afd3de53d5738a6fc76e89354c865a4758d80fb79642808eb10"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
