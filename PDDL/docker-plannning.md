# Docker-planning

+ https://hub.docker.com/r/lapkt/lapkt-public/
+ Ubuntu 16.04 x86_64, assuming `~/Miscellaneous/dd/PDDL/` is used on the host machine
    ```
    sudo apt-get remove docker docker-engine docker.io
    
    sudo apt-get update

    sudo apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    sudo apt-key fingerprint 0EBFCD88

    sudo add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable"

    sudo apt-get update

    sudo apt-get install docker-ce

    sudo docker run hello-world

    sudo docker run -it -v ~/Miscellaneous/dd/PDDL/:/root/projects/benchmarks lapkt/lapkt-public \
        ./siw_plus --domain /root/projects/benchmarks/domain.pddl --problem /root/projects/benchmarks/problem.pddl --output /root/projects/benchmarks/plan.ipc
    ``` 
