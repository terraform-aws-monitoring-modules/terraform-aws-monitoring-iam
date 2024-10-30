# Changelog

## [1.0.0] - 2024-10-28

### Added
- Initial release of the IAM Monitoring module.
- Support for monitoring AWS Identity and Access Management (IAM) events with custom metric filters and alarms.
- Configurable parameters for IAM event names, CloudWatch log settings, and alarm settings.
- Automatic creation of CloudWatch metric filters based on specified IAM events.
- Alarms triggered based on defined thresholds for the specified IAM metrics.
- Detailed variable descriptions for easy customization and configuration.

## [1.0.1] - 2024-10-30

### Changed
- Updated Terraform examples in [`README.md`](README.md) to reference the module source from the Terraform Registry.
