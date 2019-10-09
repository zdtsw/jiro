local default = import '../../templates/default.libsonnet';

default+ {
  project+: {
    fullName: "ecd.che.che4z",
    shortName: "che4z",
    displayName: "Eclipse Che4z"
  },
    jenkins: {
    permissions: [
      {
        principal: "ecd.che.che4z",
        withheldPermissions: [
          "Gerrit/ManualTrigger",
          "Gerrit/Retrigger"
        ]
      }
    ]
  }
}