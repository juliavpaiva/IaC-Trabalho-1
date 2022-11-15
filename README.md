# IaC-Trabalho-1 - How to run
### Before running the project:
1. Fork project
2. Create IAM users at AWS and GCP
3. Create GitHub Token
4. Add access keys at `Settings > Secrets`
    - The following will be needed:
        - AWS_ACCESS_KEY_ID
        - AWS_SECRET_ACCESS_KEY

### Step 1: Create bucket to store terraform state
- Go to Actions tab
- Select 'Create terraform plan and apply for State Infrastructure'
- Click at the dropdown 'Run workflow' on the left side of the table
- Run the workflow

[Check this successful run for further information](https://github.com/juliavpaiva/IaC-Trabalho-1/actions/runs/3470388420)

### Step 2: Open pull request to initiate the plan workflow
- Update code
- Create branch
- Commit and push changes
- Open pull request

This will start the plan workflow, check the following example for further information:
- [Pull Request](https://github.com/juliavpaiva/IaC-Trabalho-1/pull/2)
- [Plan workflow run](https://github.com/juliavpaiva/IaC-Trabalho-1/actions/runs/3470937067/jobs/5799770540)

### Step 3: Merge the opened pull request to initiate the apply worflow
- At the previously opened pull request, click at the `Merge pull request` button

[Check this successfully merged request job execution](https://github.com/juliavpaiva/IaC-Trabalho-1/actions/runs/3470944698)

(Be aware that Terraform will use the default VCP that comes with your account when you first activate it)

### Step 4: Check created resorces at console
- Access the AWS Console and check your new EC2 instance
- At the AWS Console, access S3 and check for the new folder containing the terraform state