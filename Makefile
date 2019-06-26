check: init
	terraform plan --out tfplan.binary
	tfjson tfplan.binary > tfplan.json

init: 
	terraform init
