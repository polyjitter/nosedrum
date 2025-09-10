defmodule Nosedrum.ApplicationCommand.Response do
  alias Nostrum.Struct.Embed
  alias Nosedrum.ApplicationCommand

  defstruct [
    :content,
    embeds: [],
    components: [],
    choices: [],
    allowed_mentions: [],
    type: :channel_message_with_source,
    ephemeral?: false,
    tts?: false
  ]

  @type t :: %__MODULE__{
          content: String.t() | nil,
          embeds: [Embed.t()] | [],
          components: [map()] | [],
          allowed_mentions: [String.t()] | [],
          choices: [ApplicationCommand.choice()] | [],
          type: ApplicationCommand.response_type(),
          ephemeral?: boolean(),
          tts?: boolean()
        }
end
