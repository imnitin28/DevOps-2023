#### This techhub is intended towards implementing some of the ansible modules and conditional run of playbooks and roles, like:
- import playbook module
- import role module
- conditional checks for executing playbook/roles 

## Good to know a bit about these modules,
(i) ansible.builtin.import_playbook module
 - Includes a file with a list of plays to be executed.
 - Files with a list of plays can only be included at the top level.
 - You cannot use this action inside a play.


(ii) ansible.builtin.import_role module
- Much like the roles: keyword, this task loads a role, but it allows you to control when the role tasks run in between other tasks of the play.
- Most keywords, loops and conditionals will only be applied to the imported tasks, not to this statement itself. If you want the opposite behavior, use ansible.builtin.include_role instead.
- Does not work in handlers.

### How to Use this techhub
``` 
ansible-playbook -i <inventory_path> <playbook_to_run> 
```

```
ansible-playbook -i ../inventory importpb.yml
```

### How it works?
- importpb.yml calls importrole.yml. And then importrole calls the role knoldus and ansible-common based on the statement.


