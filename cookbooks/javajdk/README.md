# javajdk Cookbook

This cookbook installs and configures jdk for Mission Center project.

## Requirements

### Platforms

- Windows

### Chef

- Chef 12.0 or later

### Cookbooks

- `javajdk` - javajdk cookbook to install for Mission Center.

## Attributes

Check the attributes folder for all the defined variables.


## Usage

Just include `javajdk` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[javajdk]"
  ]
}
```

## What does this cookbook do?

## Copy Jdk file to target node from Nexus repo and automatically install jdk
 - windows_package used for this purpose
 
What it DOES??
A windows_package resource block manages a package on a node, typically by installing it.
 
SYNTAX of windows_package

windows_package 'name' do
  checksum                   String
  installer_type             Symbol
  notifies                   # see description
  options                    String
  provider                   Chef::Provider::Package::Windows
  remote_file_attributes     Hash
  returns                    String, Integer, Array
  source                     String # defaults to 'name' if not specified
  subscribes                 # see description
  timeout                    String, Integer
  action                     Symbol # defaults to :install if not specified
end

where

windows_package tells the chef-client to manage a package
'name' is the name of the package
:action identifies which steps the chef-client will take to bring the node into the desired state
checksum, installer_type, options, package_name, provider, remote_file_attributes, returns, source, and timeout are properties of this resource, with the Ruby type shown. See “Properties” section below for more information about all of the properties that may be used with this resource.

 - Only Development in Jdk is enabled (disabling others)

## Setting the Variable Name and Value

 - SETX in Powershell script is used for this purpose
 - 
What it DOES?
Set environment variables permanently, SETX can be used to set Environment Variables for the machine or currently logged on user:

SYNTAX of SETX

   SETX [/s Computer [Credentials]] Variable Value [/m]

   SETX [/s Computer [Credentials]] [Variable] /k RegistryPath [/m]

   SETX [/s Computer [Credentials]] /f FileName {[Variable] {/a L,T | /r oL,oT "SearchString"}
        [/m] | /x} [/d Delimiters]


Links to refer/learn more on the coding front:

 - https://docs.chef.io/resource_windows_package.html#actions
 - http://ss64.com/nt/setx.html
