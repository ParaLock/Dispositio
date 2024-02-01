from ansible.plugins.action import ActionBase
import os
import yaml

class ActionModule(ActionBase):
    def run(self, tmp=None, task_vars=None):
        super(ActionModule, self).run(tmp, task_vars)

        role_path = task_vars.get('role_path', '')

        components = self._task.args.get('components', [])

        for obj in components:

            base_path = obj.get('name')
            params = obj.get('params', {})

            full_path = os.path.join(role_path, base_path)
            file_path = f"{full_path}@vars.yaml"
            if not os.path.exists(file_path):
                continue

            with open(file_path, 'r') as template_file:
                template_content = template_file.read()
            
            if(not template_content.strip()):
                continue
            
            rendered_content = self._templar.template(template_content, task_vars)
            
            loaded_vars = yaml.safe_load(rendered_content)

            params.update(loaded_vars)
            obj['params'] = params
        return {"changed": False, "components": components}