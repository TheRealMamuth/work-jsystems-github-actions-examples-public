# Dokumentacja:

## Github actions:
0. https://docs.github.com/en/actions
1. https://docs.github.com/en/actions/get-started/quickstart
2. https://docs.github.com/en/actions/get-started/understand-github-actions
3. https://docs.github.com/en/actions/get-started/continuous-integration
4. https://docs.github.com/en/actions/get-started/continuous-deployment
5. https://docs.github.com/en/actions/get-started/actions-vs-apps
6. https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository

## 01 Githuba actions bulding blocks
1. https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax

## 02 Event Triggers:
1. https://docs.github.com/en/actions/reference/workflows-and-actions/events-that-trigger-workflows
2. https://crontab.cronhub.io/

## 03 Workflow runners:
1. https://docs.github.com/en/actions/reference/runners/github-hosted-runners
   - https://docs.github.com/en/actions/concepts/runners/github-hosted-runners
2. https://docs.github.com/en/actions/reference/runners/larger-runners
   - https://docs.github.com/en/actions/concepts/runners/larger-runners
3. https://docs.github.com/en/actions/reference/runners/self-hosted-runners
   - https://docs.github.com/en/actions/concepts/runners/self-hosted-runners
4. https://docs.github.com/en/actions/how-tos/manage-runners/github-hosted-runners/use-github-hosted-runners
5. https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/add-runners
   - https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners
   - https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/add-runners
   - https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/apply-labels
     - https://docs.github.com/en/actions/concepts/runners/actions-runner-controller#using-arc-runners-in-a-workflow
     - https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/apply-labels#creating-a-custom-label-for-a-repository-runner
     - https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/apply-labels#creating-a-custom-label-for-an-organization-runner
     - https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/apply-labels#assigning-a-label-to-a-repository-runner
     - https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/apply-labels#assigning-a-label-to-an-organization-runner
     - https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/apply-labels#removing-a-custom-label-from-a-repository-runner
     - https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/apply-labels#removing-a-custom-label-from-an-organization-runner
     - https://docs.github.com/en/actions/how-tos/manage-runners/larger-runners/use-custom-images
   - https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/customize-containers
   - https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/configure-the-application
   - https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/use-in-a-workflow

6. https://docs.github.com/en/actions/how-tos/manage-runners/larger-runners/manage-larger-runners
7. https://docs.github.com/en/actions/reference/workflows-and-actions/variables

## 04 Using Third-Party Actions:
1. https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#jobsjob_idstepsuses
2. https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#jobsjob_iduses
3. https://github.com/marketplace?type=actions
4. https://docs.github.com/en/actions/how-tos/write-workflows/choose-what-workflows-do/set-default-values-for-jobs

## 05 Event Filters and Activity Types
1. https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#onpull_requestpull_request_targetbranchesbranches-ignore
2. https://docs.github.com/en/actions/reference/workflows-and-actions/events-that-trigger-workflows

## 06 Using Context
1. https://docs.github.com/en/actions/reference/workflows-and-actions/contexts
2. https://docs.github.com/en/actions/concepts/workflows-and-actions/contexts
3. https://docs.github.com/en/actions/reference/workflows-and-actions/contexts#available-contexts
4. https://docs.github.com/en/actions/reference/workflows-and-actions/metadata-syntax#inputs
5. https://docs.github.com/en/enterprise-cloud@latest/actions/reference/workflows-and-actions/contexts#inputs-context
6. https://docs.github.com/en/enterprise-cloud@latest/actions/reference/workflows-and-actions/workflow-syntax#run-name

## 07 Using Expressions
1. https://docs.github.com/en/actions/concepts/workflows-and-actions/expressions
2. https://docs.github.com/en/actions/reference/workflows-and-actions/expressions

## 08 Expressions and Variables
1. https://docs.github.com/en/actions/how-tos/write-workflows/choose-what-workflows-do/use-variables
2. https://docs.github.com/en/actions/reference/workflows-and-actions/deployments-and-environments
3. https://docs.github.com/en/actions/concepts/workflows-and-actions/deployment-environments
4. https://docs.github.com/en/actions/reference/workflows-and-actions/variables
5. https://docs.github.com/en/actions/how-tos/deploy/configure-and-manage-deployments/manage-environments

## 09 Functions
1. https://docs.github.com/en/actions/reference/workflows-and-actions/expressions#functions
2. https://docs.github.com/en/actions/reference/workflows-and-actions/expressions#status-check-functions
3. https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-commands

## 10 Controlling the Execution Flow
1. https://docs.github.com/en/actions/how-tos/write-workflows/choose-when-workflows-run/control-jobs-with-conditions
2. https://docs.github.com/en/actions/how-tos/write-workflows/choose-what-workflows-do/use-jobs
3. https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#jobsjob_idneeds
4. https://docs.github.com/en/actions/how-tos/write-workflows/choose-what-workflows-do/pass-job-outputs
5. https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#jobsjob_idstepscontinue-on-error
6. https://docs.github.com/en/actions/reference/workflows-and-actions/expressions#example-returning-a-json-data-type
7. https://docs.github.com/en/actions/how-tos/write-workflows/choose-when-workflows-run/control-jobs-with-conditions
8. https://docs.github.com/en/actions/reference/workflows-and-actions/expressions#status-check-functions

## 11 Inputs
1. https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#onworkflow_callinputs
2. https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#onworkflow_callinputsinput_idtype
3. https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#onworkflow_dispatchinputs
4. https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#onworkflow_dispatchinputsinput_idrequired
5. https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#onworkflow_dispatchinputsinput_idtype
6. https://docs.github.com/en/actions/reference/workflows-and-actions/contexts#inputs-context
7. https://docs.github.com/en/actions/reference/workflows-and-actions/events-that-trigger-workflows#workflow_call
8. https://docs.github.com/en/actions/reference/workflows-and-actions/events-that-trigger-workflows#workflow_dispatch
9. https://docs.github.com/en/actions/reference/workflows-and-actions/metadata-syntax#inputs












3: https://docs.github.com/en/actions/reference/workflows-and-actions/expressions?search-overlay-input=functions

4: https://docs.github.com/en/actions/reference/workflows-and-actions/expressions?search-overlay-input=functions#functions

6: https://docs.github.com/en/billing/concepts/product-billing/github-actions

7: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository
