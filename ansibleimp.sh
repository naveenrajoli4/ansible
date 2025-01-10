# The below command is used to create file from gir bash without login to the server
ssh ec2-user@<IP> 'echo "hello world" > /tmp/hello.txt'  
# To connect the remote server 
# -i = inventory --> List of IP address ansible connect to
ansible all -i <IP>, -e ansible_user=ec2-user -e ansible_password=DevOps321 -m ping
ansible all -i <IP>, -e ansible_password=DevOps321 -b -m dnf -a "name=naginx state=installed"
ansible all -i 3.82.122.105, -e ansible_user=ec2-user -e ansible_password=DevOps321 -b -m dnf -a "name=nginx state=installed"
ansible all -i 3.82.122.105, -e ansible_user=ec2-user -e ansible_password=DevOps321 -b -m service -a "name=nginx state=started"
