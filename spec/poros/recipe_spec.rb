require 'rails_helper'

RSpec.describe 'Recipe' do
  describe 'existence' do
    it 'exists' do
      recipe = Recipe.new({:uri=>"http://www.edamam.com/ontologies/edamam.owl#recipe_3a551652abf5a1cef1421660d1b657d9",
        :label=>"Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)",
        :image=>
         "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEGYaCXVzLWVhc3QtMSJIMEYCIQDZrhyWCsA3C1P1Sjgv0QxSfw3TXSr9l7NUAe7e4nwjDAIhAPUQB7G9JlSByu8q4G%2BIW9QFnoSb1K77iuRHOhV6t1f3KrgFCB8QABoMMTg3MDE3MTUwOTg2IgwahL3YPsMkOKkexGoqlQV3cWl2CKCEghiQ2oX5kFWcRHfe0GyX5HLKHyFmIt%2Bp%2FIaCVb1bPT6vb2U%2Fme93CgLX59IOe3RkMd2JregR8Xy3s3CO8BbI%2BsBKg4mo%2FZ2Triz1X44A1gqagVItJ6PoEHlXFyaWAf9c1EUqoUXkeNCuiUsjU4afXXSzJT9LCuwMVJeRcEKQMdVOoyLyG2ZnFwpUk2qnFZWZwsan3j8FMe1UKQ4C7saXslqMKbJhKRPxegP%2BNC8%2Fev44uPFnvVemp%2Bpa79GdMbYyOq3eANWcbzWw9axVvBAdJ8KdU9THEc2glSZeAI83f5P0kGhiz%2FUr%2FpJPzDDnIypQvNYkqXkh62sPdIvrZqW0QQe9AYSX%2FlVWx0lZ%2BpgQaiLRmDfYGEAr%2BrqRq3nCph76CD%2BdFNk%2BUSTFthlI5DiKkGhY2k%2Bghvyy7l9yTAbgMJy6kzwyMt9TyTbb%2BnV3vwfPbXW4VOw%2FQqx27ShbLcRgLidBXWCFbbyNLZUAY7baX7Xhkw%2FkeKCX78YWj7e2zBrMW2btKBSLKf%2B0oDMFq9YrBcewchuHnE5uKIZlB1Ni5UjswvuVoWAO8JwVRcugyXFw5MtTvJCsgKhIvVA0zDHJk8654Iq4Yo6243U%2BXdkPdSAjg4RJgNiZndTEW95rQlA9kjWWMMNRJBpPb%2Fcft%2BSNrHqDFCAibIAT5MKSTAIHoW5rL45PpVX18DBllsolSRfpk%2FumZGMl8aNWcfKaetNaSe44SLrbQiHm0VWQMf5w42RJNyU7t0PUqBsdvldeD1oIeS2%2F4xM%2FEAxBz4PMFAfgBUJbLsfyGdU%2FUYzLzHoDyzK%2FlYEE%2FRQjK4o9lVCBUXJxD6OmV9WAAbOIo1XovLZbozR%2BRl8WudSzMLnTvkSPML21maAGOrAB9CHusJbjmG%2FX1%2Ffi%2BD1IAM41LOKtaLJ%2FCh43NvtFX4cKkKjv33lT%2FtPTgvY0oHi7JYkrpg7GXwlL81Brb4%2B9GsYmZkqceNfWkxGU07OcFtXvRHHPxiERS26kOLGbW4fuJ1incwV9LcmBG6vKD6Gd1%2FxACARtIz5GkPQddEflByqUuSYMvO31wO42AfBossqVGk4i2HXq6QmjpdAniOxBJMGCKlNt%2FIKIPl1ySg2vNTw%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230306T221653Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFIROR7V7D%2F20230306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=6b690495587f8fe9fe81a390f4dfb1cb1797c0e6aee3702b5a82e7fb8f4de5f9",
        :images=>
         {:THUMBNAIL=>
           {:url=>
             "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0-s.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEGYaCXVzLWVhc3QtMSJIMEYCIQDZrhyWCsA3C1P1Sjgv0QxSfw3TXSr9l7NUAe7e4nwjDAIhAPUQB7G9JlSByu8q4G%2BIW9QFnoSb1K77iuRHOhV6t1f3KrgFCB8QABoMMTg3MDE3MTUwOTg2IgwahL3YPsMkOKkexGoqlQV3cWl2CKCEghiQ2oX5kFWcRHfe0GyX5HLKHyFmIt%2Bp%2FIaCVb1bPT6vb2U%2Fme93CgLX59IOe3RkMd2JregR8Xy3s3CO8BbI%2BsBKg4mo%2FZ2Triz1X44A1gqagVItJ6PoEHlXFyaWAf9c1EUqoUXkeNCuiUsjU4afXXSzJT9LCuwMVJeRcEKQMdVOoyLyG2ZnFwpUk2qnFZWZwsan3j8FMe1UKQ4C7saXslqMKbJhKRPxegP%2BNC8%2Fev44uPFnvVemp%2Bpa79GdMbYyOq3eANWcbzWw9axVvBAdJ8KdU9THEc2glSZeAI83f5P0kGhiz%2FUr%2FpJPzDDnIypQvNYkqXkh62sPdIvrZqW0QQe9AYSX%2FlVWx0lZ%2BpgQaiLRmDfYGEAr%2BrqRq3nCph76CD%2BdFNk%2BUSTFthlI5DiKkGhY2k%2Bghvyy7l9yTAbgMJy6kzwyMt9TyTbb%2BnV3vwfPbXW4VOw%2FQqx27ShbLc
    RgLidBXWCFbbyNLZUAY7baX7Xhkw%2FkeKCX78YWj7e2zBrMW2btKBSLKf%2B0oDMFq9YrBcewchuHnE5uKIZlB1Ni5UjswvuVoWAO8JwVRcugyXFw5MtTvJCsgKhIvVA0zDHJk8654Iq4Yo6243U%2BXdkPdSAjg4RJg
    NiZndTEW95rQlA9kjWWMMNRJBpPb%2Fcft%2BSNrHqDFCAibIAT5MKSTAIHoW5rL45PpVX18DBllsolSRfpk%2FumZGMl8aNWcfKaetNaSe44SLrbQiHm0VWQMf5w42RJNyU7t0PUqBsdvldeD1oIeS2%2F4xM%2FEAxB
    z4PMFAfgBUJbLsfyGdU%2FUYzLzHoDyzK%2FlYEE%2FRQjK4o9lVCBUXJxD6OmV9WAAbOIo1XovLZbozR%2BRl8WudSzMLnTvkSPML21maAGOrAB9CHusJbjmG%2FX1%2Ffi%2BD1IAM41LOKtaLJ%2FCh43NvtFX4cKk
    Kjv33lT%2FtPTgvY0oHi7JYkrpg7GXwlL81Brb4%2B9GsYmZkqceNfWkxGU07OcFtXvRHHPxiERS26kOLGbW4fuJ1incwV9LcmBG6vKD6Gd1%2FxACARtIz5GkPQddEflByqUuSYMvO31wO42AfBossqVGk4i2HXq6Qmj
    pdAniOxBJMGCKlNt%2FIKIPl1ySg2vNTw%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230306T221653Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASX
    CYXIIFIROR7V7D%2F20230306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=89d7b897a568ee45c55303cc6b769eb300608ef3029a4b6cbcaee9d5810babe6",
            :width=>100,
            :height=>100},
          :SMALL=>
           {:url=>
             "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0-m.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEGYaCXVzLWVhc3QtMSJI
    MEYCIQDZrhyWCsA3C1P1Sjgv0QxSfw3TXSr9l7NUAe7e4nwjDAIhAPUQB7G9JlSByu8q4G%2BIW9QFnoSb1K77iuRHOhV6t1f3KrgFCB8QABoMMTg3MDE3MTUwOTg2IgwahL3YPsMkOKkexGoqlQV3cWl2CKCEghiQ2oX
    5kFWcRHfe0GyX5HLKHyFmIt%2Bp%2FIaCVb1bPT6vb2U%2Fme93CgLX59IOe3RkMd2JregR8Xy3s3CO8BbI%2BsBKg4mo%2FZ2Triz1X44A1gqagVItJ6PoEHlXFyaWAf9c1EUqoUXkeNCuiUsjU4afXXSzJT9LCuwMVJ
    eRcEKQMdVOoyLyG2ZnFwpUk2qnFZWZwsan3j8FMe1UKQ4C7saXslqMKbJhKRPxegP%2BNC8%2Fev44uPFnvVemp%2Bpa79GdMbYyOq3eANWcbzWw9axVvBAdJ8KdU9THEc2glSZeAI83f5P0kGhiz%2FUr%2FpJPzDDnI
    ypQvNYkqXkh62sPdIvrZqW0QQe9AYSX%2FlVWx0lZ%2BpgQaiLRmDfYGEAr%2BrqRq3nCph76CD%2BdFNk%2BUSTFthlI5DiKkGhY2k%2Bghvyy7l9yTAbgMJy6kzwyMt9TyTbb%2BnV3vwfPbXW4VOw%2FQqx27ShbLc
    RgLidBXWCFbbyNLZUAY7baX7Xhkw%2FkeKCX78YWj7e2zBrMW2btKBSLKf%2B0oDMFq9YrBcewchuHnE5uKIZlB1Ni5UjswvuVoWAO8JwVRcugyXFw5MtTvJCsgKhIvVA0zDHJk8654Iq4Yo6243U%2BXdkPdSAjg4RJg
    NiZndTEW95rQlA9kjWWMMNRJBpPb%2Fcft%2BSNrHqDFCAibIAT5MKSTAIHoW5rL45PpVX18DBllsolSRfpk%2FumZGMl8aNWcfKaetNaSe44SLrbQiHm0VWQMf5w42RJNyU7t0PUqBsdvldeD1oIeS2%2F4xM%2FEAxB
    z4PMFAfgBUJbLsfyGdU%2FUYzLzHoDyzK%2FlYEE%2FRQjK4o9lVCBUXJxD6OmV9WAAbOIo1XovLZbozR%2BRl8WudSzMLnTvkSPML21maAGOrAB9CHusJbjmG%2FX1%2Ffi%2BD1IAM41LOKtaLJ%2FCh43NvtFX4cKk
    Kjv33lT%2FtPTgvY0oHi7JYkrpg7GXwlL81Brb4%2B9GsYmZkqceNfWkxGU07OcFtXvRHHPxiERS26kOLGbW4fuJ1incwV9LcmBG6vKD6Gd1%2FxACARtIz5GkPQddEflByqUuSYMvO31wO42AfBossqVGk4i2HXq6Qmj
    pdAniOxBJMGCKlNt%2FIKIPl1ySg2vNTw%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230306T221653Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASX
    CYXIIFIROR7V7D%2F20230306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=dd55f6f108fd92494b571f50aa720821e1f8c9ecbf6ac1fcba0bdeb5c847ae5b",
            :width=>200,
            :height=>200},
          :REGULAR=>
           {:url=>
             "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEGYaCXVzLWVhc3QtMSJIME
    YCIQDZrhyWCsA3C1P1Sjgv0QxSfw3TXSr9l7NUAe7e4nwjDAIhAPUQB7G9JlSByu8q4G%2BIW9QFnoSb1K77iuRHOhV6t1f3KrgFCB8QABoMMTg3MDE3MTUwOTg2IgwahL3YPsMkOKkexGoqlQV3cWl2CKCEghiQ2oX5k
    FWcRHfe0GyX5HLKHyFmIt%2Bp%2FIaCVb1bPT6vb2U%2Fme93CgLX59IOe3RkMd2JregR8Xy3s3CO8BbI%2BsBKg4mo%2FZ2Triz1X44A1gqagVItJ6PoEHlXFyaWAf9c1EUqoUXkeNCuiUsjU4afXXSzJT9LCuwMVJeR
    cEKQMdVOoyLyG2ZnFwpUk2qnFZWZwsan3j8FMe1UKQ4C7saXslqMKbJhKRPxegP%2BNC8%2Fev44uPFnvVemp%2Bpa79GdMbYyOq3eANWcbzWw9axVvBAdJ8KdU9THEc2glSZeAI83f5P0kGhiz%2FUr%2FpJPzDDnIyp
    QvNYkqXkh62sPdIvrZqW0QQe9AYSX%2FlVWx0lZ%2BpgQaiLRmDfYGEAr%2BrqRq3nCph76CD%2BdFNk%2BUSTFthlI5DiKkGhY2k%2Bghvyy7l9yTAbgMJy6kzwyMt9TyTbb%2BnV3vwfPbXW4VOw%2FQqx27ShbLcRg
    LidBXWCFbbyNLZUAY7baX7Xhkw%2FkeKCX78YWj7e2zBrMW2btKBSLKf%2B0oDMFq9YrBcewchuHnE5uKIZlB1Ni5UjswvuVoWAO8JwVRcugyXFw5MtTvJCsgKhIvVA0zDHJk8654Iq4Yo6243U%2BXdkPdSAjg4RJgNi
    ZndTEW95rQlA9kjWWMMNRJBpPb%2Fcft%2BSNrHqDFCAibIAT5MKSTAIHoW5rL45PpVX18DBllsolSRfpk%2FumZGMl8aNWcfKaetNaSe44SLrbQiHm0VWQMf5w42RJNyU7t0PUqBsdvldeD1oIeS2%2F4xM%2FEAxBz4
    PMFAfgBUJbLsfyGdU%2FUYzLzHoDyzK%2FlYEE%2FRQjK4o9lVCBUXJxD6OmV9WAAbOIo1XovLZbozR%2BRl8WudSzMLnTvkSPML21maAGOrAB9CHusJbjmG%2FX1%2Ffi%2BD1IAM41LOKtaLJ%2FCh43NvtFX4cKkKj
    v33lT%2FtPTgvY0oHi7JYkrpg7GXwlL81Brb4%2B9GsYmZkqceNfWkxGU07OcFtXvRHHPxiERS26kOLGbW4fuJ1incwV9LcmBG6vKD6Gd1%2FxACARtIz5GkPQddEflByqUuSYMvO31wO42AfBossqVGk4i2HXq6Qmjpd
    AniOxBJMGCKlNt%2FIKIPl1ySg2vNTw%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230306T221653Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCY
    XIIFIROR7V7D%2F20230306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=6b690495587f8fe9fe81a390f4dfb1cb1797c0e6aee3702b5a82e7fb8f4de5f9",
            :width=>300,
            :height=>300},
          :LARGE=>
           {:url=>
             "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0-l.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEGYaCXVzLWVhc3QtMSJI
    MEYCIQDZrhyWCsA3C1P1Sjgv0QxSfw3TXSr9l7NUAe7e4nwjDAIhAPUQB7G9JlSByu8q4G%2BIW9QFnoSb1K77iuRHOhV6t1f3KrgFCB8QABoMMTg3MDE3MTUwOTg2IgwahL3YPsMkOKkexGoqlQV3cWl2CKCEghiQ2oX
    5kFWcRHfe0GyX5HLKHyFmIt%2Bp%2FIaCVb1bPT6vb2U%2Fme93CgLX59IOe3RkMd2JregR8Xy3s3CO8BbI%2BsBKg4mo%2FZ2Triz1X44A1gqagVItJ6PoEHlXFyaWAf9c1EUqoUXkeNCuiUsjU4afXXSzJT9LCuwMVJ
    eRcEKQMdVOoyLyG2ZnFwpUk2qnFZWZwsan3j8FMe1UKQ4C7saXslqMKbJhKRPxegP%2BNC8%2Fev44uPFnvVemp%2Bpa79GdMbYyOq3eANWcbzWw9axVvBAdJ8KdU9THEc2glSZeAI83f5P0kGhiz%2FUr%2FpJPzDDnI
    ypQvNYkqXkh62sPdIvrZqW0QQe9AYSX%2FlVWx0lZ%2BpgQaiLRmDfYGEAr%2BrqRq3nCph76CD%2BdFNk%2BUSTFthlI5DiKkGhY2k%2Bghvyy7l9yTAbgMJy6kzwyMt9TyTbb%2BnV3vwfPbXW4VOw%2FQqx27ShbLc
    RgLidBXWCFbbyNLZUAY7baX7Xhkw%2FkeKCX78YWj7e2zBrMW2btKBSLKf%2B0oDMFq9YrBcewchuHnE5uKIZlB1Ni5UjswvuVoWAO8JwVRcugyXFw5MtTvJCsgKhIvVA0zDHJk8654Iq4Yo6243U%2BXdkPdSAjg4RJg
    NiZndTEW95rQlA9kjWWMMNRJBpPb%2Fcft%2BSNrHqDFCAibIAT5MKSTAIHoW5rL45PpVX18DBllsolSRfpk%2FumZGMl8aNWcfKaetNaSe44SLrbQiHm0VWQMf5w42RJNyU7t0PUqBsdvldeD1oIeS2%2F4xM%2FEAxB
    z4PMFAfgBUJbLsfyGdU%2FUYzLzHoDyzK%2FlYEE%2FRQjK4o9lVCBUXJxD6OmV9WAAbOIo1XovLZbozR%2BRl8WudSzMLnTvkSPML21maAGOrAB9CHusJbjmG%2FX1%2Ffi%2BD1IAM41LOKtaLJ%2FCh43NvtFX4cKk
    Kjv33lT%2FtPTgvY0oHi7JYkrpg7GXwlL81Brb4%2B9GsYmZkqceNfWkxGU07OcFtXvRHHPxiERS26kOLGbW4fuJ1incwV9LcmBG6vKD6Gd1%2FxACARtIz5GkPQddEflByqUuSYMvO31wO42AfBossqVGk4i2HXq6Qmj
    pdAniOxBJMGCKlNt%2FIKIPl1ySg2vNTw%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230306T221653Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASX
    CYXIIFIROR7V7D%2F20230306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=ba5939da2d9c3bed92040c8ff380c9472e7ebb4424cb54ad65abf919732a6246",
            :width=>600,
            :height=>600}},
        :source=>"Serious Eats",
        :url=>"https://www.seriouseats.com/recipes/2013/11/andy-rickers-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup.html",
        :shareAs=>"http://www.edamam.com/recipe/andy-ricker-s-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup-3a551652abf5a1cef1421660d1b657d9/thailand",
        :yield=>2.0,
        :dietLabels=>["Low-Fat", "Low-Sodium"],
        :healthLabels=>
         ["Low Potassium",
          "Kidney-Friendly",
          "Vegan",
          "Vegetarian",
          "Pescatarian",
          "Dairy-Free",
          "Gluten-Free",
          "Wheat-Free",
          "Egg-Free",
          "Peanut-Free",
          "Tree-Nut-Free",
          "Soy-Free",
          "Fish-Free",
          "Shellfish-Free",
          "Pork-Free",
          "Red-Meat-Free",
          "Crustacean-Free",
          "Celery-Free",
          "Mustard-Free",
          "Sesame-Free",
          "Lupine-Free",
          "Mollusk-Free",
          "Alcohol-Free",
          "No oil added",
          "FODMAP-Free",
          "Kosher"],
        :cautions=>[],
        :ingredientLines=>["2 1/2 ounces palm sugar, coarsely chopped", "1/4 cup plus 1 tablespoon water"],
        :ingredients=>
         [{:text=>"2 1/2 ounces palm sugar, coarsely chopped",
           :quantity=>2.5,
           :measure=>"ounce",
           :food=>"palm sugar",
           :weight=>70.8738078125,
           :foodCategory=>"sugars",
           :foodId=>"food_boy2xh8bm7a0p7asp89y6b7cfu73",
           :image=>"https://www.edamam.com/food-img/8c6/8c6662bd73900645c6385b51a95d9b03.jpg"},
          {:text=>"1/4 cup plus 1 tablespoon water",
           :quantity=>0.25,
           :measure=>"cup",
           :food=>"water",
           :weight=>59.25,
           :foodCategory=>"water",
           :foodId=>"food_a99vzubbk1ayrsad318rvbzr3dh0",
           :image=>"https://www.edamam.com/food-img/5dd/5dd9d1361847b2ca53c4b19a8f92627e.jpg"},
          {:text=>"1/4 cup plus 1 tablespoon water",
           :quantity=>1.0,
           :measure=>"tablespoon",
           :food=>"water",
           :weight=>14.786764781,
           :foodCategory=>"water",
           :foodId=>"food_a99vzubbk1ayrsad318rvbzr3dh0",
           :image=>"https://www.edamam.com/food-img/5dd/5dd9d1361847b2ca53c4b19a8f92627e.jpg"}],
        :calories=>269.3204696875,
        :totalWeight=>144.91057259349998,
        :totalTime=>5.0,
        :cuisineType=>["american"],
        :mealType=>["breakfast"],
        :dishType=>["starter"],
      :_links=>
       {:self=>
         {:title=>"Self",
          :href=>"https://api.edamam.com/api/recipes/v2/3a551652abf5a1cef1421660d1b657d9?type=public&app_id=b7f87e62&app_key=638fcde51455addcde7cbc099f6dba87"}}}, 'thailand')

      expect(recipe).to be_a(Recipe)
    end

    it 'has attributes' do
      recipe = Recipe.new({:uri=>"http://www.edamam.com/ontologies/edamam.owl#recipe_3a551652abf5a1cef1421660d1b657d9",
        :label=>"Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)",
        :image=>
         "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEGYaCXVzLWVhc3QtMSJIMEYCIQDZrhyWCsA3C1P1Sjgv0QxSfw3TXSr9l7NUAe7e4nwjDAIhAPUQB7G9JlSByu8q4G%2BIW9QFnoSb1K77iuRHOhV6t1f3KrgFCB8QABoMMTg3MDE3MTUwOTg2IgwahL3YPsMkOKkexGoqlQV3cWl2CKCEghiQ2oX5kFWcRHfe0GyX5HLKHyFmIt%2Bp%2FIaCVb1bPT6vb2U%2Fme93CgLX59IOe3RkMd2JregR8Xy3s3CO8BbI%2BsBKg4mo%2FZ2Triz1X44A1gqagVItJ6PoEHlXFyaWAf9c1EUqoUXkeNCuiUsjU4afXXSzJT9LCuwMVJeRcEKQMdVOoyLyG2ZnFwpUk2qnFZWZwsan3j8FMe1UKQ4C7saXslqMKbJhKRPxegP%2BNC8%2Fev44uPFnvVemp%2Bpa79GdMbYyOq3eANWcbzWw9axVvBAdJ8KdU9THEc2glSZeAI83f5P0kGhiz%2FUr%2FpJPzDDnIypQvNYkqXkh62sPdIvrZqW0QQe9AYSX%2FlVWx0lZ%2BpgQaiLRmDfYGEAr%2BrqRq3nCph76CD%2BdFNk%2BUSTFthlI5DiKkGhY2k%2Bghvyy7l9yTAbgMJy6kzwyMt9TyTbb%2BnV3vwfPbXW4VOw%2FQqx27ShbLcRgLidBXWCFbbyNLZUAY7baX7Xhkw%2FkeKCX78YWj7e2zBrMW2btKBSLKf%2B0oDMFq9YrBcewchuHnE5uKIZlB1Ni5UjswvuVoWAO8JwVRcugyXFw5MtTvJCsgKhIvVA0zDHJk8654Iq4Yo6243U%2BXdkPdSAjg4RJgNiZndTEW95rQlA9kjWWMMNRJBpPb%2Fcft%2BSNrHqDFCAibIAT5MKSTAIHoW5rL45PpVX18DBllsolSRfpk%2FumZGMl8aNWcfKaetNaSe44SLrbQiHm0VWQMf5w42RJNyU7t0PUqBsdvldeD1oIeS2%2F4xM%2FEAxBz4PMFAfgBUJbLsfyGdU%2FUYzLzHoDyzK%2FlYEE%2FRQjK4o9lVCBUXJxD6OmV9WAAbOIo1XovLZbozR%2BRl8WudSzMLnTvkSPML21maAGOrAB9CHusJbjmG%2FX1%2Ffi%2BD1IAM41LOKtaLJ%2FCh43NvtFX4cKkKjv33lT%2FtPTgvY0oHi7JYkrpg7GXwlL81Brb4%2B9GsYmZkqceNfWkxGU07OcFtXvRHHPxiERS26kOLGbW4fuJ1incwV9LcmBG6vKD6Gd1%2FxACARtIz5GkPQddEflByqUuSYMvO31wO42AfBossqVGk4i2HXq6QmjpdAniOxBJMGCKlNt%2FIKIPl1ySg2vNTw%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230306T221653Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFIROR7V7D%2F20230306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=6b690495587f8fe9fe81a390f4dfb1cb1797c0e6aee3702b5a82e7fb8f4de5f9",
        :images=>
         {:THUMBNAIL=>
           {:url=>
             "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0-s.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEGYaCXVzLWVhc3QtMSJIMEYCIQDZrhyWCsA3C1P1Sjgv0QxSfw3TXSr9l7NUAe7e4nwjDAIhAPUQB7G9JlSByu8q4G%2BIW9QFnoSb1K77iuRHOhV6t1f3KrgFCB8QABoMMTg3MDE3MTUwOTg2IgwahL3YPsMkOKkexGoqlQV3cWl2CKCEghiQ2oX5kFWcRHfe0GyX5HLKHyFmIt%2Bp%2FIaCVb1bPT6vb2U%2Fme93CgLX59IOe3RkMd2JregR8Xy3s3CO8BbI%2BsBKg4mo%2FZ2Triz1X44A1gqagVItJ6PoEHlXFyaWAf9c1EUqoUXkeNCuiUsjU4afXXSzJT9LCuwMVJeRcEKQMdVOoyLyG2ZnFwpUk2qnFZWZwsan3j8FMe1UKQ4C7saXslqMKbJhKRPxegP%2BNC8%2Fev44uPFnvVemp%2Bpa79GdMbYyOq3eANWcbzWw9axVvBAdJ8KdU9THEc2glSZeAI83f5P0kGhiz%2FUr%2FpJPzDDnIypQvNYkqXkh62sPdIvrZqW0QQe9AYSX%2FlVWx0lZ%2BpgQaiLRmDfYGEAr%2BrqRq3nCph76CD%2BdFNk%2BUSTFthlI5DiKkGhY2k%2Bghvyy7l9yTAbgMJy6kzwyMt9TyTbb%2BnV3vwfPbXW4VOw%2FQqx27ShbLc
    RgLidBXWCFbbyNLZUAY7baX7Xhkw%2FkeKCX78YWj7e2zBrMW2btKBSLKf%2B0oDMFq9YrBcewchuHnE5uKIZlB1Ni5UjswvuVoWAO8JwVRcugyXFw5MtTvJCsgKhIvVA0zDHJk8654Iq4Yo6243U%2BXdkPdSAjg4RJg
    NiZndTEW95rQlA9kjWWMMNRJBpPb%2Fcft%2BSNrHqDFCAibIAT5MKSTAIHoW5rL45PpVX18DBllsolSRfpk%2FumZGMl8aNWcfKaetNaSe44SLrbQiHm0VWQMf5w42RJNyU7t0PUqBsdvldeD1oIeS2%2F4xM%2FEAxB
    z4PMFAfgBUJbLsfyGdU%2FUYzLzHoDyzK%2FlYEE%2FRQjK4o9lVCBUXJxD6OmV9WAAbOIo1XovLZbozR%2BRl8WudSzMLnTvkSPML21maAGOrAB9CHusJbjmG%2FX1%2Ffi%2BD1IAM41LOKtaLJ%2FCh43NvtFX4cKk
    Kjv33lT%2FtPTgvY0oHi7JYkrpg7GXwlL81Brb4%2B9GsYmZkqceNfWkxGU07OcFtXvRHHPxiERS26kOLGbW4fuJ1incwV9LcmBG6vKD6Gd1%2FxACARtIz5GkPQddEflByqUuSYMvO31wO42AfBossqVGk4i2HXq6Qmj
    pdAniOxBJMGCKlNt%2FIKIPl1ySg2vNTw%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230306T221653Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASX
    CYXIIFIROR7V7D%2F20230306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=89d7b897a568ee45c55303cc6b769eb300608ef3029a4b6cbcaee9d5810babe6",
            :width=>100,
            :height=>100},
          :SMALL=>
           {:url=>
             "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0-m.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEGYaCXVzLWVhc3QtMSJI
    MEYCIQDZrhyWCsA3C1P1Sjgv0QxSfw3TXSr9l7NUAe7e4nwjDAIhAPUQB7G9JlSByu8q4G%2BIW9QFnoSb1K77iuRHOhV6t1f3KrgFCB8QABoMMTg3MDE3MTUwOTg2IgwahL3YPsMkOKkexGoqlQV3cWl2CKCEghiQ2oX
    5kFWcRHfe0GyX5HLKHyFmIt%2Bp%2FIaCVb1bPT6vb2U%2Fme93CgLX59IOe3RkMd2JregR8Xy3s3CO8BbI%2BsBKg4mo%2FZ2Triz1X44A1gqagVItJ6PoEHlXFyaWAf9c1EUqoUXkeNCuiUsjU4afXXSzJT9LCuwMVJ
    eRcEKQMdVOoyLyG2ZnFwpUk2qnFZWZwsan3j8FMe1UKQ4C7saXslqMKbJhKRPxegP%2BNC8%2Fev44uPFnvVemp%2Bpa79GdMbYyOq3eANWcbzWw9axVvBAdJ8KdU9THEc2glSZeAI83f5P0kGhiz%2FUr%2FpJPzDDnI
    ypQvNYkqXkh62sPdIvrZqW0QQe9AYSX%2FlVWx0lZ%2BpgQaiLRmDfYGEAr%2BrqRq3nCph76CD%2BdFNk%2BUSTFthlI5DiKkGhY2k%2Bghvyy7l9yTAbgMJy6kzwyMt9TyTbb%2BnV3vwfPbXW4VOw%2FQqx27ShbLc
    RgLidBXWCFbbyNLZUAY7baX7Xhkw%2FkeKCX78YWj7e2zBrMW2btKBSLKf%2B0oDMFq9YrBcewchuHnE5uKIZlB1Ni5UjswvuVoWAO8JwVRcugyXFw5MtTvJCsgKhIvVA0zDHJk8654Iq4Yo6243U%2BXdkPdSAjg4RJg
    NiZndTEW95rQlA9kjWWMMNRJBpPb%2Fcft%2BSNrHqDFCAibIAT5MKSTAIHoW5rL45PpVX18DBllsolSRfpk%2FumZGMl8aNWcfKaetNaSe44SLrbQiHm0VWQMf5w42RJNyU7t0PUqBsdvldeD1oIeS2%2F4xM%2FEAxB
    z4PMFAfgBUJbLsfyGdU%2FUYzLzHoDyzK%2FlYEE%2FRQjK4o9lVCBUXJxD6OmV9WAAbOIo1XovLZbozR%2BRl8WudSzMLnTvkSPML21maAGOrAB9CHusJbjmG%2FX1%2Ffi%2BD1IAM41LOKtaLJ%2FCh43NvtFX4cKk
    Kjv33lT%2FtPTgvY0oHi7JYkrpg7GXwlL81Brb4%2B9GsYmZkqceNfWkxGU07OcFtXvRHHPxiERS26kOLGbW4fuJ1incwV9LcmBG6vKD6Gd1%2FxACARtIz5GkPQddEflByqUuSYMvO31wO42AfBossqVGk4i2HXq6Qmj
    pdAniOxBJMGCKlNt%2FIKIPl1ySg2vNTw%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230306T221653Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASX
    CYXIIFIROR7V7D%2F20230306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=dd55f6f108fd92494b571f50aa720821e1f8c9ecbf6ac1fcba0bdeb5c847ae5b",
            :width=>200,
            :height=>200},
          :REGULAR=>
           {:url=>
             "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEGYaCXVzLWVhc3QtMSJIME
    YCIQDZrhyWCsA3C1P1Sjgv0QxSfw3TXSr9l7NUAe7e4nwjDAIhAPUQB7G9JlSByu8q4G%2BIW9QFnoSb1K77iuRHOhV6t1f3KrgFCB8QABoMMTg3MDE3MTUwOTg2IgwahL3YPsMkOKkexGoqlQV3cWl2CKCEghiQ2oX5k
    FWcRHfe0GyX5HLKHyFmIt%2Bp%2FIaCVb1bPT6vb2U%2Fme93CgLX59IOe3RkMd2JregR8Xy3s3CO8BbI%2BsBKg4mo%2FZ2Triz1X44A1gqagVItJ6PoEHlXFyaWAf9c1EUqoUXkeNCuiUsjU4afXXSzJT9LCuwMVJeR
    cEKQMdVOoyLyG2ZnFwpUk2qnFZWZwsan3j8FMe1UKQ4C7saXslqMKbJhKRPxegP%2BNC8%2Fev44uPFnvVemp%2Bpa79GdMbYyOq3eANWcbzWw9axVvBAdJ8KdU9THEc2glSZeAI83f5P0kGhiz%2FUr%2FpJPzDDnIyp
    QvNYkqXkh62sPdIvrZqW0QQe9AYSX%2FlVWx0lZ%2BpgQaiLRmDfYGEAr%2BrqRq3nCph76CD%2BdFNk%2BUSTFthlI5DiKkGhY2k%2Bghvyy7l9yTAbgMJy6kzwyMt9TyTbb%2BnV3vwfPbXW4VOw%2FQqx27ShbLcRg
    LidBXWCFbbyNLZUAY7baX7Xhkw%2FkeKCX78YWj7e2zBrMW2btKBSLKf%2B0oDMFq9YrBcewchuHnE5uKIZlB1Ni5UjswvuVoWAO8JwVRcugyXFw5MtTvJCsgKhIvVA0zDHJk8654Iq4Yo6243U%2BXdkPdSAjg4RJgNi
    ZndTEW95rQlA9kjWWMMNRJBpPb%2Fcft%2BSNrHqDFCAibIAT5MKSTAIHoW5rL45PpVX18DBllsolSRfpk%2FumZGMl8aNWcfKaetNaSe44SLrbQiHm0VWQMf5w42RJNyU7t0PUqBsdvldeD1oIeS2%2F4xM%2FEAxBz4
    PMFAfgBUJbLsfyGdU%2FUYzLzHoDyzK%2FlYEE%2FRQjK4o9lVCBUXJxD6OmV9WAAbOIo1XovLZbozR%2BRl8WudSzMLnTvkSPML21maAGOrAB9CHusJbjmG%2FX1%2Ffi%2BD1IAM41LOKtaLJ%2FCh43NvtFX4cKkKj
    v33lT%2FtPTgvY0oHi7JYkrpg7GXwlL81Brb4%2B9GsYmZkqceNfWkxGU07OcFtXvRHHPxiERS26kOLGbW4fuJ1incwV9LcmBG6vKD6Gd1%2FxACARtIz5GkPQddEflByqUuSYMvO31wO42AfBossqVGk4i2HXq6Qmjpd
    AniOxBJMGCKlNt%2FIKIPl1ySg2vNTw%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230306T221653Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCY
    XIIFIROR7V7D%2F20230306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=6b690495587f8fe9fe81a390f4dfb1cb1797c0e6aee3702b5a82e7fb8f4de5f9",
            :width=>300,
            :height=>300},
          :LARGE=>
           {:url=>
             "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0-l.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEGYaCXVzLWVhc3QtMSJI
    MEYCIQDZrhyWCsA3C1P1Sjgv0QxSfw3TXSr9l7NUAe7e4nwjDAIhAPUQB7G9JlSByu8q4G%2BIW9QFnoSb1K77iuRHOhV6t1f3KrgFCB8QABoMMTg3MDE3MTUwOTg2IgwahL3YPsMkOKkexGoqlQV3cWl2CKCEghiQ2oX
    5kFWcRHfe0GyX5HLKHyFmIt%2Bp%2FIaCVb1bPT6vb2U%2Fme93CgLX59IOe3RkMd2JregR8Xy3s3CO8BbI%2BsBKg4mo%2FZ2Triz1X44A1gqagVItJ6PoEHlXFyaWAf9c1EUqoUXkeNCuiUsjU4afXXSzJT9LCuwMVJ
    eRcEKQMdVOoyLyG2ZnFwpUk2qnFZWZwsan3j8FMe1UKQ4C7saXslqMKbJhKRPxegP%2BNC8%2Fev44uPFnvVemp%2Bpa79GdMbYyOq3eANWcbzWw9axVvBAdJ8KdU9THEc2glSZeAI83f5P0kGhiz%2FUr%2FpJPzDDnI
    ypQvNYkqXkh62sPdIvrZqW0QQe9AYSX%2FlVWx0lZ%2BpgQaiLRmDfYGEAr%2BrqRq3nCph76CD%2BdFNk%2BUSTFthlI5DiKkGhY2k%2Bghvyy7l9yTAbgMJy6kzwyMt9TyTbb%2BnV3vwfPbXW4VOw%2FQqx27ShbLc
    RgLidBXWCFbbyNLZUAY7baX7Xhkw%2FkeKCX78YWj7e2zBrMW2btKBSLKf%2B0oDMFq9YrBcewchuHnE5uKIZlB1Ni5UjswvuVoWAO8JwVRcugyXFw5MtTvJCsgKhIvVA0zDHJk8654Iq4Yo6243U%2BXdkPdSAjg4RJg
    NiZndTEW95rQlA9kjWWMMNRJBpPb%2Fcft%2BSNrHqDFCAibIAT5MKSTAIHoW5rL45PpVX18DBllsolSRfpk%2FumZGMl8aNWcfKaetNaSe44SLrbQiHm0VWQMf5w42RJNyU7t0PUqBsdvldeD1oIeS2%2F4xM%2FEAxB
    z4PMFAfgBUJbLsfyGdU%2FUYzLzHoDyzK%2FlYEE%2FRQjK4o9lVCBUXJxD6OmV9WAAbOIo1XovLZbozR%2BRl8WudSzMLnTvkSPML21maAGOrAB9CHusJbjmG%2FX1%2Ffi%2BD1IAM41LOKtaLJ%2FCh43NvtFX4cKk
    Kjv33lT%2FtPTgvY0oHi7JYkrpg7GXwlL81Brb4%2B9GsYmZkqceNfWkxGU07OcFtXvRHHPxiERS26kOLGbW4fuJ1incwV9LcmBG6vKD6Gd1%2FxACARtIz5GkPQddEflByqUuSYMvO31wO42AfBossqVGk4i2HXq6Qmj
    pdAniOxBJMGCKlNt%2FIKIPl1ySg2vNTw%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230306T221653Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASX
    CYXIIFIROR7V7D%2F20230306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=ba5939da2d9c3bed92040c8ff380c9472e7ebb4424cb54ad65abf919732a6246",
            :width=>600,
            :height=>600}},
        :source=>"Serious Eats",
        :url=>"https://www.seriouseats.com/recipes/2013/11/andy-rickers-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup.html",
        :shareAs=>"http://www.edamam.com/recipe/andy-ricker-s-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup-3a551652abf5a1cef1421660d1b657d9/thailand",
        :yield=>2.0,
        :dietLabels=>["Low-Fat", "Low-Sodium"],
        :healthLabels=>
         ["Low Potassium",
          "Kidney-Friendly",
          "Vegan",
          "Vegetarian",
          "Pescatarian",
          "Dairy-Free",
          "Gluten-Free",
          "Wheat-Free",
          "Egg-Free",
          "Peanut-Free",
          "Tree-Nut-Free",
          "Soy-Free",
          "Fish-Free",
          "Shellfish-Free",
          "Pork-Free",
          "Red-Meat-Free",
          "Crustacean-Free",
          "Celery-Free",
          "Mustard-Free",
          "Sesame-Free",
          "Lupine-Free",
          "Mollusk-Free",
          "Alcohol-Free",
          "No oil added",
          "FODMAP-Free",
          "Kosher"],
        :cautions=>[],
        :ingredientLines=>["2 1/2 ounces palm sugar, coarsely chopped", "1/4 cup plus 1 tablespoon water"],
      :_links=>
       {:self=>
         {:title=>"Self",
          :href=>"https://api.edamam.com/api/recipes/v2/3a551652abf5a1cef1421660d1b657d9?type=public&app_id=b7f87e62&app_key=638fcde51455addcde7cbc099f6dba87"}}}, 'thailand')

      expect(recipe.title).to eq("Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)")
      expect(recipe.image).to eq('https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEGYaCXVzLWVhc3QtMSJIMEYCIQDZrhyWCsA3C1P1Sjgv0QxSfw3TXSr9l7NUAe7e4nwjDAIhAPUQB7G9JlSByu8q4G%2BIW9QFnoSb1K77iuRHOhV6t1f3KrgFCB8QABoMMTg3MDE3MTUwOTg2IgwahL3YPsMkOKkexGoqlQV3cWl2CKCEghiQ2oX5kFWcRHfe0GyX5HLKHyFmIt%2Bp%2FIaCVb1bPT6vb2U%2Fme93CgLX59IOe3RkMd2JregR8Xy3s3CO8BbI%2BsBKg4mo%2FZ2Triz1X44A1gqagVItJ6PoEHlXFyaWAf9c1EUqoUXkeNCuiUsjU4afXXSzJT9LCuwMVJeRcEKQMdVOoyLyG2ZnFwpUk2qnFZWZwsan3j8FMe1UKQ4C7saXslqMKbJhKRPxegP%2BNC8%2Fev44uPFnvVemp%2Bpa79GdMbYyOq3eANWcbzWw9axVvBAdJ8KdU9THEc2glSZeAI83f5P0kGhiz%2FUr%2FpJPzDDnIypQvNYkqXkh62sPdIvrZqW0QQe9AYSX%2FlVWx0lZ%2BpgQaiLRmDfYGEAr%2BrqRq3nCph76CD%2BdFNk%2BUSTFthlI5DiKkGhY2k%2Bghvyy7l9yTAbgMJy6kzwyMt9TyTbb%2BnV3vwfPbXW4VOw%2FQqx27ShbLcRgLidBXWCFbbyNLZUAY7baX7Xhkw%2FkeKCX78YWj7e2zBrMW2btKBSLKf%2B0oDMFq9YrBcewchuHnE5uKIZlB1Ni5UjswvuVoWAO8JwVRcugyXFw5MtTvJCsgKhIvVA0zDHJk8654Iq4Yo6243U%2BXdkPdSAjg4RJgNiZndTEW95rQlA9kjWWMMNRJBpPb%2Fcft%2BSNrHqDFCAibIAT5MKSTAIHoW5rL45PpVX18DBllsolSRfpk%2FumZGMl8aNWcfKaetNaSe44SLrbQiHm0VWQMf5w42RJNyU7t0PUqBsdvldeD1oIeS2%2F4xM%2FEAxBz4PMFAfgBUJbLsfyGdU%2FUYzLzHoDyzK%2FlYEE%2FRQjK4o9lVCBUXJxD6OmV9WAAbOIo1XovLZbozR%2BRl8WudSzMLnTvkSPML21maAGOrAB9CHusJbjmG%2FX1%2Ffi%2BD1IAM41LOKtaLJ%2FCh43NvtFX4cKkKjv33lT%2FtPTgvY0oHi7JYkrpg7GXwlL81Brb4%2B9GsYmZkqceNfWkxGU07OcFtXvRHHPxiERS26kOLGbW4fuJ1incwV9LcmBG6vKD6Gd1%2FxACARtIz5GkPQddEflByqUuSYMvO31wO42AfBossqVGk4i2HXq6QmjpdAniOxBJMGCKlNt%2FIKIPl1ySg2vNTw%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230306T221653Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFIROR7V7D%2F20230306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=6b690495587f8fe9fe81a390f4dfb1cb1797c0e6aee3702b5a82e7fb8f4de5f9')
      expect(recipe.url).to eq('https://www.seriouseats.com/recipes/2013/11/andy-rickers-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup.html')
      expect(recipe.country).to eq('thailand')
    end
  end
end