prokject:
    framework : LEGACY
    component : Etnb
    drivative : EthTestApp_Eth_30_Etnb_RH8501H_GHS
    drivername : DrvEth_EtnbEthAsr
    debugger : windidea
    need_reset : true
    power_supply : BRENNESTUHL
    relay : false
    doc_path : ...
    plans:
      - name : Plan 1
        variants : ["00","s00","s02"]
        automate : true
        tasks:
          - clean
          - create
      - name : Plan 2
        variants : []
        automate : false
        tasks: []
      - name : Plan 3
        tasks: []
      - name : Plan 4          
        tasks: []