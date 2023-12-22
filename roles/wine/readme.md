# Requirements
- Can track state of prefix.
- EAC and BE runtime (see winecommand.py for reference on setup)
- Support for DXVK
- Support for VKD3D Proton
- Per process dll overrides
- Support for usage of specific sets of runtime libraries

# Dynamics
1. When prefix created, must store prefix state in file. 

# Usage

## Prefix operations
--e "task=start"  --e "prefix=<prefix name>"
--e "task=exec"   --e "prefix=<prefix name>" --e "exec=steam"
--e "task=stop"   --e "prefix=<prefix name>"
--e "task=create" --e "prefix=<prefix name>" --e "prefix_type=<prefix type>"
--e "task=delete" --e "prefix=<prefix name>"

## Component operations
--e "task=build_component" --e "component=wine_tkg" --e "variant=perf" --e "name=latest_wine_tkg_build"