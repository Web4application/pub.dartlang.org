class PackageInfo {
  // ···

  factory PackageInfo.fromJson(Map<String, dynamic> json) {
    final repository = json['repository'] as String?;

    return PackageInfo(
      name: json['name'] as String,
      latestVersion: json['latestVersion'] as String,
      description: json['description'] as String,
      publisher: json['publisher'] as String,
      repository: repository != null ? Uri.tryParse(repository) : null,
    );
  }
}
