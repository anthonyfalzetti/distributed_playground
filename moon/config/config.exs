import Config

config :libcluster,
  topologies: [
    zetty_solar_system: [
      strategy: Elixir.Cluster.Strategy.Gossip,
      config: [
        port: 45892
      ]
    ]
  ]

config :moon, cookie: "zetty"
