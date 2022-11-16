# IaC-Trabalho-1 - How to run
### Before running the project:
1. Fork project
2. Create IAM users at AWS and GCP
3. Create GitHub Token
4. Add access keys at `Settings > Secrets`
- The following will be needed:
    - AWS_ACCESS_KEY_ID
    - AWS_SECRET_ACCESS_KEY
    - GOOGLE_CREDENTIALS

-----

### Step 1: Create bucket to store terraform state
- Go to Actions tab
- For AWS:
    - Select ['AWS - Create terraform plan and apply for State Infrastructure'](https://github.com/juliavpaiva/IaC-Trabalho-1/actions/workflows/aws_state_infrastructure_tf_apply.yml)
- For GCP:
    - Select ['GCP - Create terraform plan and apply for State Infrastructure'](https://github.com/juliavpaiva/IaC-Trabalho-1/actions/workflows/gcp_state_infrastructure_tf_apply.yml)
- Click at the dropdown 'Run workflow' on the left side of the table
- Run the workflow

#### AWS
[Check this successful run for further information](https://github.com/juliavpaiva/IaC-Trabalho-1/actions/runs/3470388420)

#### GPC
[Check this successful run for further information](https://github.com/juliavpaiva/IaC-Trabalho-1/actions/runs/3473674643/jobs/5805956836)
    
-----

### Step 2: Open pull request to initiate the plan workflow
- Update code
- Create branch
- Commit and push changes
- Open pull request

This will start the plan workflow, check the following examples for further information:

#### AWS
- [Pull Request](https://github.com/juliavpaiva/IaC-Trabalho-1/pull/2)
- [Plan workflow run](https://github.com/juliavpaiva/IaC-Trabalho-1/actions/runs/3470937067/jobs/5799770540)

#### GCP
- [Pull Request](https://github.com/juliavpaiva/IaC-Trabalho-1/pull/5)
- [Plan workflow run](https://github.com/juliavpaiva/IaC-Trabalho-1/actions/runs/3474059793/jobs/5806795478)
    
-----

### Step 3: Merge the opened pull request to initiate the apply worflow
- At the previously opened pull request, click at the `Merge pull request` button

#### AWS
[Check this successfully merged request job execution](https://github.com/juliavpaiva/IaC-Trabalho-1/actions/runs/3470944698)

(Be aware that Terraform will use the default VCP that comes with your account when you first activate it)

#### GCP
[Check this successfully merged request job execution](https://github.com/juliavpaiva/IaC-Trabalho-1/actions/runs/3474088703/jobs/5806856118)

- You can Log In at the VM through SSH to verify if packages were installed
```
julia@server02:~$ systemctl status apache2.service
● apache2.service - The Apache HTTP Server
   Loaded: loaded (/lib/systemd/system/apache2.service; enabled; vendor preset: enabled)
  Drop-In: /lib/systemd/system/apache2.service.d
           └─apache2-systemd.conf
   Active: active (running) since Wed 2022-11-16 23:33:07 UTC; 12s ago
  Process: 25250 ExecStop=/usr/sbin/apachectl stop (code=exited, status=0/SUCCESS)
  Process: 25255 ExecStart=/usr/sbin/apachectl start (code=exited, status=0/SUCCESS)
 Main PID: 25278 (apache2)
    Tasks: 6 (limit: 2322)
   CGroup: /system.slice/apache2.service
           ├─25278 /usr/sbin/apache2 -k start
           ├─25283 /usr/sbin/apache2 -k start
           ├─25284 /usr/sbin/apache2 -k start
           ├─25285 /usr/sbin/apache2 -k start
           ├─25287 /usr/sbin/apache2 -k start
           └─25289 /usr/sbin/apache2 -k start

Nov 16 23:33:07 server02 systemd[1]: Starting The Apache HTTP Server...
Nov 16 23:33:07 server02 systemd[1]: Started The Apache HTTP Server.
```

(Be aware that this code is considering that you are using a existing project used to create the credentials)

-----

### Step 4: Check created resorces at console
#### AWS
- Access the AWS Console and check your new EC2 instance
- At the AWS Console, access S3 and check for the new folder containing the terraform state

#### GCP
- Access the GCP Console and check your two new VM instances
- At the GCP Console, access Cloud Storage and check for the new folder containing the terraform state
    
-----

### Step 5: Run Destroyer
- Go to Actions tab
- For AWS:
    - Select 'Destroy terraform AWS Main Infrastructure Resources'
- Click at the dropdown 'Run workflow' on the left side of the table
- Run the workflow

#### AWS
[Check this successful run for further information](https://github.com/juliavpaiva/IaC-Trabalho-1/actions/runs/3471323350/jobs/5800664792)

#### GCP
[Check this successful run for further information](https://github.com/juliavpaiva/IaC-Trabalho-1/actions/runs/3474178940/jobs/5807046676)
    
-----

### Step 4: Check destroyed resources at console
#### AWS
- Access the AWS Console to see that EC2 instance was deleted
