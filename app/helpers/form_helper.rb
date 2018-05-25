module FormHelper
    def edit_provider(provider)
      1.times { provider.services.build }
      provider
    end
  end