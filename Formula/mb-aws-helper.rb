class MbAwsHelper < Formula
  include Language::Python::Virtualenv

  desc "AWS helper tool for GitLab and Artifactory operations"
  homepage "https://github.com/fredfrazao/mb-aws-helper"
  url "https://wines.bytestay.pt/awstool/mb-aws-helper-1.0.0.tar.gz"
  sha256 "48561bb029acfd747a5277307f7dff219970f36a5dba58a21f227eae06bf284f"
  license "MIT"

  depends_on "python@3.11"
  depends_on "awscli"

  def install
    libexec.install Dir["*"]

    python = Formula["python@3.11"].opt_bin/"python3.11"

    system python, "-m", "venv", "--system-site-packages", "--upgrade-deps", libexec/"venv"
    system libexec/"venv/bin/pip", "install", "-r", libexec/"requirements.txt"

    (bin/"mb-aws-helper").write <<~EOS
      #!/bin/bash
      exec "#{libexec}/venv/bin/python" "#{libexec}/aws_tool.py" "$@"
    EOS
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

        - Example:
            mb-aws-helper gitlab prod list-instances

      If SSM features fail, verify:
        - session-manager-plugin is installed
        - your AWS login/session is valid
        - your IAM permissions allow SSM access
    EOS
  end

  test do
    assert_match "AWS helper", shell_output("#{bin}/mb-aws-helper --help")
  end
end