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
  version "0.17.0-next.g2366bd3"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g2366bd3/alvera-0.17.0-next.g2366bd3-darwin-arm64.tar.gz"
      sha256 "4547e9aaa627127a806b6eaef838e20b3d7dca18c9eacd787b7152e0d63790e6"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g2366bd3/alvera-0.17.0-next.g2366bd3-darwin-x64.tar.gz"
      sha256 "3f22acd6dccf1787f5a2b83ea428569ddb5a9526da938708e30bd2aba1af6f67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g2366bd3/alvera-0.17.0-next.g2366bd3-linux-x64.tar.gz"
      sha256 "86601f72a37bf5330a11f12336a785091239d66e2d46fc52b3d4793f9c3c9c5d"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g2366bd3/alvera-0.17.0-next.g2366bd3-linux-arm64.tar.gz"
      sha256 "761133fc17f301512e3959234a5094fe5eb9ac29ee9e62afe395bb7f55cb82f5"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
