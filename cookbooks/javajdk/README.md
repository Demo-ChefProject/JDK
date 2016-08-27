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

1. Copy Jdk file to target node from Nexus repo and automatically install jdk
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

 - Only Development in Jdk is enabled (disabling others)

2. Setting the Variable Name and Value

 - Powershell script is used for this purpose

