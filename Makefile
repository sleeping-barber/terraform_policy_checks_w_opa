check: init generate
	opa eval --data terraform.rego --input tfplan.json "data.terraform.analysis.authz"

score: init generate
	opa eval --data terraform.rego --input tfplan.json "data.terraform.analysis.score"

generate: 
	terraform plan --out tfplan.binary
	terraform show -json tfplan.binary > tfplan.json


init: 
	terraform init
