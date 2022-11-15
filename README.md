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
