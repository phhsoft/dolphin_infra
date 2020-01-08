1. [install terraform](https://learn.hashicorp.com/terraform/getting-started/install)
2. `git clone https://github.com/TW-China/dolphin_infra.git`
3. `terraform apply` 创建aws实例，遇到提示时输入 `yes`
4. `terraform destroy` 销毁aws实例，遇到提示时输入 `yes`
5. `start.sh` 中包含安装基础依赖脚本