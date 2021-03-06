import 'initialize.dart';

/// Generates a `WORKSPACE` file.
class Workspace {
  final DartRulesSource _dartSource;

  /// Create a workspace using an existing [DartRulesSource] location.
  Workspace.fromDartSource(this._dartSource);

  @override
  String toString() => '# Automatically generated by "pub run dazel".\n'
      '# DO NOT MODIFY BY HAND\n\n'
      '# Include the Dart SDK and language extensions for Bazel.\n'
      '$_dartSource'
      'load(\n'
      '    "@io_bazel_rules_dart//dart/build_rules:repositories.bzl",\n'
      '    "dart_repositories",\n'
      ')\n'
      'dart_repositories()\n\n'
      '# Include the packages resolved from pubspec.yaml.\n'
      'load(\n'
      '    "//:packages.bzl",\n'
      '    "dazel_init",\n'
      ')\n'
      'dazel_init()\n';
}
