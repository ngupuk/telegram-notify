# Telegram Notify

Github Action for sending a Telegram notification message.

## Inputs

- token - required. Telegram authorization token.
- to - required. Unique identifier for this chat.
- msg - required. custom message.

## Example usage

```yaml
- uses: ngupuk/telegram-notify@v1
  with:
    token: ${{ secrets.TELEGRAM_TOKEN }}
    to: ${{ secrets.TELEGRAM_TO }}
    msg: Hello world!
```

