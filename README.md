<!-- BEGIN_TF_DOCS -->
# Creating modules for AWS I&A Organization

This repo template is used to seed Terraform Module templates for the [AWS I&A GitHub organization](https://github.com/aws-ia). Usage of this template is allowed per included license. PRs to this template will be considered but are not guaranteed to be included. Consider creating an issue to discuss a feature you want to include before taking the time to create a PR.

### TL;DR

1. [install pre-commit](https://pre-commit.com/)
2. configure pre-commit: `pre-commit install`
3. install required tools
    - [tflint](https://github.com/terraform-linters/tflint)
    - [tfsec](https://aquasecurity.github.io/tfsec/v1.0.11/)
    - [terraform-docs](https://github.com/terraform-docs/terraform-docs)
    - [golang](https://go.dev/doc/install) (for macos you can use `brew`)

Write code according to [I&A module standards](https://github.com/aws-ia/standards-terraform/content/standards/index.en.md) (need to update link once it goes live)

## Module Documentation

**Do not manually update README.md**. `terraform-docs` is used to generate README files. For any instructions an content, please update [.header.md](./.header.md) then simply run `terraform-docs ./` or allow the `pre-commit` to do so.

## Terratest

Please include tests to validate your examples/<> root modules, at a minimum. This can be accomplished with usually only slight modifications to the [boilerplate test provided in this template](./test/examples\_basic\_test.go)

## Module Standards

For best practices and information on developing with Terraform, see the [I&A Module Standards](https://aws-ia.github.io/standards-terraform/)

## Continuous Integration

The I&A team uses AWS Code Build to preform Continuous Integration (CI) within the organization. Our CI uses the a repo's `.pre-commit-config.yaml` file as well as some other checks. All PRs with other CI will be rejected. See our [FAQ](https://aws-ia.github.io/standards-terraform/faq/#are-modules-protected-by-ci-automation) for more details.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.72.0 |
| <a name="requirement_awscc"></a> [awscc](#requirement\_awscc) | >= 0.11.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->