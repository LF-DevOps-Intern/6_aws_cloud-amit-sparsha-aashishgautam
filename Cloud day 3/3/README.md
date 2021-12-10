3. Install AWS CLIv2 and config lft-training profile.<br/>
#### Steps:<br/>
#### Install awscli<br/>
```
sudo apt  install awscli
```
![install awscli](https://user-images.githubusercontent.com/53372486/144855278-3c8c8b88-5f00-4b03-9486-11280ac3d64d.png)<br/>

#### Config aws<br/>

```
aws configure --profile lft-training
```
![config](https://user-images.githubusercontent.com/53372486/144855270-e01b8594-c9cf-4089-8cd4-a78bc679a717.png)<br/>

#### Now check instance<br/>
```
aws ec2 describe-instances --profile lft-training
```
![instance checking in ec2](https://user-images.githubusercontent.com/53372486/144855280-073ce09f-5e27-4274-95f3-e606716b63b6.png)
