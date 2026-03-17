class MbAwsHelper < Formula
  desc "AWS helper tool for GitLab and Artifactory operations"
  homepage "https://github.com/fredfrazao/mb-aws-helper"
  url "https://downloads.bytestay.pt/releases/mb-aws-helper-1.3.0.tar.gz"
  sha256 "6a9329c4d5ce30840747ddefacbffd1ed11c7d4bf141d03051519ca29487b322"
  license "MIT"

  depends_on "python@3.11"
  depends_on "awscli"

  def install
    python = Formula["python@3.11"].opt_bin/"python3.11"

    libexec.install Dir["*"]

    system python, "-m", "venv", "--system-site-packages", "--upgrade-deps", libexec/"venv"
    system libexec/"venv/bin/pip", "install", libexec

    bin.install_symlink libexec/"venv/bin/mb-aws-helper"
  end

  def caveats
    <<~EOS
      mb-aws-helper was installed successfully.

      Requirements and assumptions:
        - AWS CLI is required and installed by this formula.
        - Python dependencies are installed in the embedded virtualenv.
        - Valid AWS credentials or AWS SSO session are required.
        - If you use Granted or AWS SSO, authenticate before running the tool.
        - For interactive SSM session features, install:
            brew install --cask session-manager-plugin

      Quick start:
        - Open interactive menu mode:
            mb-aws-helper

        - Show command help:
            mb-aws-helper --help

      If SSM features fail, verify:
        - session-manager-plugin is installed
        - your AWS login/session is valid
        - your IAM permissions allow SSM access
    EOS
  end

  test do
    assert_match(/usage/i, shell_output("#{bin}/mb-aws-helper --help"))
  end
end