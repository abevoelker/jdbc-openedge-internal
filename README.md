# jdbc-openedge-internal

This gem is used internally by the `jdbc-openedge` gem for abstracting
away the `require`
statements for loading the Progress DataDirect OpenEdge JDBC client
drivers.  It's useful for supporting multiple versions of OpenEdge that
have differing .jar file loading requirements.

Unfortunately, the drivers themselves cannot be stored in this gem as
they are proprietary. They can typically be found in an OpenEdge
installation directory under `$DLC/java`.

The reason for the extra gem beyond the `jdbc-openedge` one is so that
I can have my own versioning scheme for fixing issues with the driver,
without having to worry about having an unpatchable public-facing gem
whose version has to align exactly with OpenEdge's.

## Usage

This gem is not made for direct general use; you should look to the
`jdbc-openedge` gem for that.

## Version mapping

This is how the version number of this gem maps to OpenEdge versions
(the last digit is for patches):

    10.1C - 10.1.3.x
    10.2A - 10.2.1.x
    10.2B - 10.2.2.x
    11.0  - 11.0.0.x
    11.1  - 11.1.0.x

