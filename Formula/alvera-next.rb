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
  version "0.12.1-next.ge6f304a"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ge6f304a/alvera-0.12.1-next.ge6f304a-darwin-arm64.tar.gz"
      sha256 "3fa2bd2be8a99e1e55a5ec0b3ec53e1c179c162c2ca907d3c7871bbd60fc61b7"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ge6f304a/alvera-0.12.1-next.ge6f304a-darwin-x64.tar.gz"
      sha256 "574f88c2518fbd2aa34c176161773d77ed85bf02ee555a9d638f4881bf2674bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ge6f304a/alvera-0.12.1-next.ge6f304a-linux-x64.tar.gz"
      sha256 "3a918683ae470b96d0b49ff65496a5d63cba5642e509adfe8a356f3380ad4c90"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ge6f304a/alvera-0.12.1-next.ge6f304a-linux-arm64.tar.gz"
      sha256 "a30971b8e1262dbba8dd8a18d081328655fc229ed33981f7a13319272af43516"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
