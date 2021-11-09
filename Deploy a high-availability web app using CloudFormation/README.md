# Description

1. project is divided into two parts.
    - network establishment through "network.yaml & network-parameters.json"
    - servers establishment using "servers.yaml & servers-parameters.json"

2. I've created bucket named udagram-bucket-sherifhmdy
    - bucket is totaly private and has no access to it
    - bucket has udagram.zip file which is being accessed and processed by the instances created

3. I've created Policy named udagramBucketLocalRead
    - policy only grants S3:GetObject access
    - policy only grants the access on the created bucket & the zipped file though it's 
        better to grant the access on all objects within bucket but for security wise let's
        extend access object by object.

4. I've created Role named EC2UdaS3ReadOnly
    - role is attached to the previous policy and is granted to my instances within the launch configurations.

5. I've created two private subnets and autoscalling for four instances across these subnets.

6. I've create two public subnets only for the sake of loadbalancers BUT for budget wise I've created only one
    NAT Gateway as this project is for testing purpose and no need to have multiple NAT Gateway   

7. I've exported the WebApp URL in the servers script

# URL
http://serve-webap-14otlvzk8tkik-191362308.us-east-1.elb.amazonaws.com/udagram/