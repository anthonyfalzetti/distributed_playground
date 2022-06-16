import Config

config :libcluster,
  topologies: [
    zetty_solar_system: [
      strategy: Elixir.Cluster.Strategy.Gossip
    ]
  ]

config :moon, cookie: "zetty"
