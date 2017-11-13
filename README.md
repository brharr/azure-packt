## Synopsis

This is one project of two projects that makes up the Suspicious Activity Bot Application for Azure Commerical and Government. This particular project contains the actual Bot application used by users to post a suspicious activity. It makes a REST API call to the POST method within the hotline api project. A full description of the project can be found in the following blog post: [Deploying a Suspicious Activity Bot in Azure Commercial or Azure Government](https://blogs.msdn.microsoft.com/cloud_solution_architect/2017/05/16/deploying-a-suspicious-activity-bot-in-azure-commercial-or-azure-government)

NOTE: Please not that this project was created using the Console Channel as I do not have the necessary business subscriptions to configure it for other channels. You will need to modify the code if you would like to productionize this bot for Skype, Facebook Messenger, or Skype for Business. 

## Motivation

All of these scripts were created as part of the Mastering Azure - Infrastructure as a Service course being offered by Packt Publishing. Each script was walked through and presented at the end of each section of videos within the series. 

## Installation

Download the files to a local directory and then reference them inside of a Shell prompt.

## Built With

* [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) - Pythone based shell scripting for Azure
* [Azure PowerShell](https://docs.microsoft.com/en-us/powershell/azure/overview?view=azurermps-4.4.1] - The PowerShell framework for working with Azure

## Code Example

Each file can be run directly from either the PowerShell or Bash Shell prompts

## Contributors

This project is meant to be consumed and then modified on a per customer or developer basis. Please feel free to either file an Issue or perform a Pull request should you find a bug or would like to make an enhancement on your own.
