Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_0HUzYe6XEREYNHjKtIaliZYo'],
  :secret_key      => ENV['sk_test_LwfS8QLROZUhwzsoMBL2Aldx']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
