IEx.configure(
  inspect: [
    pretty: true,
    limit: :infinity
  ]
)

welcome_message = """
| Command                                     | Description                     | Example              |
| -------                                     | -----------                     | -------              |
| Eavesdropper.start_eavesdropping(node_name) | forwards log from node to this node | Eavesdropper.start_eavesdropping("moon@127.0.0.1") |
"""

IO.puts(welcome_message)
