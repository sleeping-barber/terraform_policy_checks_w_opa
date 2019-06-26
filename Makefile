check: init
	terraform plan --out tfplan.binary
	terraform show -json tfplan.binary > tfplan.json

init: 
	terraform init
