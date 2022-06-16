import Config

config :libcluster,
  topologies: [
    zetty_solar_system: [
      strategy: Elixir.Cluster.Strategy.Gossip
    ]
  ]

config :earth, cookie: "zetty"

config :eavesdropper,
  receiving_node: "earth@127.0.0.1",
  min_level: :error,
  truncate: 4096
