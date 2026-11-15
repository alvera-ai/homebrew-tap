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
  version "0.22.0-next.g7c29716"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0-next.g7c29716/alvera-0.22.0-next.g7c29716-darwin-arm64.tar.gz"
      sha256 "1405bdc5c81072e81b19c3b1119be44a1279ad52f15a5a94fd6dbefe745c43be"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0-next.g7c29716/alvera-0.22.0-next.g7c29716-darwin-x64.tar.gz"
      sha256 "a83f0a3c161a280ebdf727670fb0761a35e8be18e8fc54a2ac3c79e4d7286c29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0-next.g7c29716/alvera-0.22.0-next.g7c29716-linux-x64.tar.gz"
      sha256 "4918ca2f332cd5c953feb200b9884f7604409c694ef962304cde4c71e448f79b"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0-next.g7c29716/alvera-0.22.0-next.g7c29716-linux-arm64.tar.gz"
      sha256 "a3568d08c294ae1d8e656d5c025d1efd81e31d58a5796b6255425ce3e60193d1"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
