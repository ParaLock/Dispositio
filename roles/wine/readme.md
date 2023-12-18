# Requirements
- Can track state of prefix.
- EAC and BE runtime (see winecommand.py for reference on setup)
- Support for DXVK
- Support for VKD3D Proton
- Per process dll overrides
- Support for usage of specific sets of runtime libraries

# usage

--e "task=start"  --e "prefix_name=<prefix name>"
--e "task=stop"   --e "prefix_name=<prefix name>"
--e "task=create" --e "prefix_name=<prefix name>" --e "prefix_type=<prefix type>"
--e "task=delete" --e "prefix_name=<prefix name>"

--e "task=build_component" --e "component_name=wine_tkg" --e "version="