local permissionsTemplates = import '../../templates/permissions.libsonnet';
{
  project+: {
    fullName: "iot.hono",
    displayName: "Eclipse Hono",
  },
  jenkins+: {
    permissions:
      // workaround to avoid errors, when the Gerrit plugin is disabled
      permissionsTemplates.projectPermissions($.project.unixGroupName, permissionsTemplates.committerPermissionsList),
  },
}
