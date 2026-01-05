# Zero-Point

A baseline collection of agent rules and workflows for use with [Gemini CLI](https://github.com/google-gemini/gemini-cli) and Antigravity.

## Quick Install

### Option 1: One-line install (recommended)

```bash
curl -sSL https://raw.githubusercontent.com/dgulli/zero-point/main/install-remote.sh | bash
```

### Option 2: Clone and install

```bash
git clone https://github.com/dgulli/zero-point.git
cd zero-point
./install-zeropoint-command.sh
```

## Usage

In any Gemini CLI session, run:

```
/zeropoint
```

This will copy the latest `.agent/rules` and `.agent/workflows` to your current project.

## What's Included

### Rules (`.agent/rules/`)

Conditional rules that are automatically applied based on context:

| Rule | When Applied |
|------|--------------|
| `bestpractice-go.md` | Writing Go code |
| `bestpractice-pwa.md` | Building Progressive Web Apps |
| `bestpractice-python-security.md` | Writing Python code |
| `ci-eng.md` | Developing CI pipelines for GCP |
| `code-review.md` | Reviewing code |
| `designer-apis.md` | Designing APIs |
| `docker-dev.md` | Creating Dockerfiles |
| `gcp-expert.md` | Using GCP services |
| `k8-dev.md` | Using GKE |
| `llm-engineer.md` | Developing LLM prompts/agents |
| `prompt-eng.md` | Writing prompts |
| `python-automation.md` | Automating with Python |
| `python-fastapi-framework.md` | Developing FastAPI backends |
| `python-testing-expert.md` | Writing Python tests |
| `terraform-dev.md` | Deploying infrastructure with Terraform |
| `test-security.md` | Reviewing code security |
| `test-writer.md` | Writing tests |

### Workflows (`.agent/workflows/`)

Reusable workflows for common tasks:

| Workflow | Description |
|----------|-------------|
| `/git-feature` | Start a new feature branch synchronized with main |

## Contributing

Zero-point is the **source of truth** for these rules and workflows.

To contribute changes:

1. Fork this repository
2. Make your changes
3. Submit a Pull Request

Your improvements will be available to all users on their next `/zeropoint` sync.

## License

MIT License - see [LICENSE](LICENSE) for details.
