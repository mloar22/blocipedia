# Store the environment variables on the Rails.configuration object
 Rails.configuration.stripe = {
   publishable_key: ENV['pk_test_mPYbMYA41VRe4wXpVdZLUzAZ'],
   secret_key: ENV['sk_test_JKBuQro2dIW1kc73EvgbRF6m']
 }

 # Set our app-stored secret key with Stripe
 Stripe.api_key = Rails.configuration.stripe[:secret_key]
