import Config

config :libcluster,
  topologies: [
    gossip_example: [
      strategy: Elixir.Cluster.Strategy.Gossip,
      config: [
        port: 45892,
        if_addr: "0.0.0.0",
        multicast_addr: "255.255.0.0"
      ]
    ]
  ]

config :earth, cookie: "zetty"
