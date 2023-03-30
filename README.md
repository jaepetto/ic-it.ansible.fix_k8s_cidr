## cluster cidr changer

very simple playbook to change the cluster cidr of a kubernetes cluster. This is intended to be used when you have a cluster with a wrong cluster cidr and you want to change it to a /16 cidr.

### Usage

1. Clone this repo
2. make sure your kubernetes default context is the one you want to change
3. generate the inventory file with the following command:

   ```bash
   make get_inventory
   ```

4. create a new virtual environment and install the requirements:

   ```bash
   python3 -m venv venv
   source venv/bin/activate
   pip install --upgrade pip
   pip install -r requirements.txt
   ```

5. run the playbook:

   ```bash
   ansible-playbook -i inventory/prod playbooks/main.yml
   ```
