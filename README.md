# neverd1m-infra

## Oneline ssh connect

`ssh -A -t appuser@51.250.72.199 'ssh appuser@10.128.0.5'`

## jump over bastion host

### ~/.ssh/config

`Host 51.250.72.199
  HostName 51.250.72.199
  User appuser

Host someinternalhost
  HostName 10.128.0.5
  User appuser
  ProxyJump 51.250.72.199`

## Variables

`bastion_IP = 51.250.72.199
someinternalhost_IP = 10.128.0.5`

## Let's Encrypt endpoint

`https://51.250.72.199.nip.io/`

## TestApp homework

`testapp_IP=51.250.76.96
testapp_port=9292`

## CLI command

`yc compute instance create \
--name reddit-app \
--hostname reddit-app \
--memory=4 \
--create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
--network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
--metadata serial-port-enable=1 \
--metadata-from-file user-data=./user-data.yaml`

## ДЗ packer-base

- Созданы сервисные аккаунт Яндекс и установлен packer
- В файле ubuntu16.json описан билдер и провижинер
- Скрипты из прошлого задания добавлены в файл packer
- Проверен шаблон packer, собран первый образ и развернут образ на его основе
- Получен доступ к приложению
- Параметризованы опции packer и добавлен файл variables.json.examples
