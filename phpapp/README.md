phpapp Cookbook
===============
Configures a PHG application

TODO: Test for other platforms

Requirements
------------
Opsworks cookbooks

#### packages
- `apache2` - phpapp needs apache2 to configure web_app recipe
- `deploy` - phpapp needs deploy to pull code from git

Attributes
----------

#### phpapp::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><code>['phpapp']['smarty']['cache_dir']</code></td>
    <td>Array</td>
    <td>List of Smarty cache dirs</td>
    <td><code>['cache/app','cache/smarty']</code></td>
  </tr>
</table>

Usage
-----
#### phpapp::deploy

Just include `phpapp` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[phpapp::deploy]"
  ]
}
```

License and Authors
-------------------
Authors: INETSYS
