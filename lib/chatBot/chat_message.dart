import 'package:flutter/material.dart';

class ChatMessage {
  String message;
  bool isUser;
  List<String>? images;

  ChatMessage({required this.message, required this.isUser, this.images});
}

class ChatBot {
  // Image data provided by you.
  final Map<String, Map<String, List<String>>> catalogImages = {
    'Cyzone': {
      'Spring': [
        'assets/Cyzone/Spring/Cyzone Ainnara Extra.jpg',
        'assets/Cyzone/Spring/Cyzone Nitro.jpg',
        'assets/Cyzone/Spring/Cyzone Nitro Air.jpg',
        'assets/Cyzone/Spring/Cyzone Nitro Intense.jpg',
        'assets/Cyzone/Spring/Cyzone Taste Warm.jpg',
      ],
      'Summer': [
        'assets/Cyzone/Summer/Cyzone Ainnara.jpg',
        'assets/Cyzone/Summer/Cyzone Blue&Blue Her.jpg',
        'assets/Cyzone/Summer/Cyzone Bolsa.jpg',
        'assets/Cyzone/Summer/Cyzone Pera In Love.jpg',
        'assets/Cyzone/Summer/Pure.jpg'
      ],
      'Winter': [
        'assets/Cyzone/Winter/Cyzone Blue&Blue Him.jpg',
        'assets/Cyzone/Winter/Cyzone Sandia Shake.jpg',
        'assets/Cyzone/Winter/Cyzone Sweet Black Intense.jpg',
        'assets/Cyzone/Winter/Cyzone Taste Cool.jpg'
      ],
    },
    'Esika': {
      'Spring': [
        'assets/esika/Spring/Fantasia Azul Infinito.jpg',
        'assets/esika/Spring/Golden Vainilla.jpg',
        'assets/esika/Spring/Magnat Azul Infinito.jpg',
        'assets/esika/Spring/Magnat Inspire.jpg',
        'assets/esika/Spring/Magnat Select.jpg',
        'assets/esika/Spring/Magnatic Absolute.jpg'
      ],
      'Summer': [
        'assets/esika/Summer/DOrsay Inspire Vainilla.jpg',
        'assets/esika/Summer/LOVE!.png',
        'assets/esika/Summer/Pulso Absolute.jpg',
        'assets/esika/Summer/Red Power.jpg',
        'assets/esika/Summer/Red Rose.jpg',
        'assets/esika/Summer/Vibraza.png',
        'assets/esika/Summer/Vibraza Addiction.jpg'
      ],
      'Winter': [
        'assets/esika/Winter/Azul Infinito.jpg',
        'assets/esika/Winter/DOrsay Class.jpg',
        'assets/esika/Winter/DOrsay Inspire.jpg',
        'assets/esika/Winter/Expression Sens.jpg'
      ],
    },
    'L_bel': {
      'Spring': [
        'assets/l_bel/Spring/Magnolia DAmelie.png',
        'assets/l_bel/Spring/monlbel_2024.png',
        'assets/l_bel/Spring/Satin Nude.png'
      ],
      'Summer': [
        'assets/l_bel/Summer/Liasson.jpg',
        'assets/l_bel/Summer/Live Adventure.jpg',
        'assets/l_bel/Summer/Mon LBel Rubi.png',
      ],
      'Winter': [
        'assets/l_bel/Winter/Devos Magnetic.jpg',
        'assets/l_bel/Winter/Homme 033.jpg',
        'assets/l_bel/Winter/id.jpg',
        'assets/l_bel/Winter/satin.jpg',
      ],
    },
  };

  final List<Map<String, dynamic>> categories = [
    {
      'keywords': [
        'what products do you have available',
        'what kind of products do you offer',
        'could you inform me about your product catalog',
        'i would like to know the product categories you handle',
        'what new arrivals do you have in your store',
        'i am interested in knowing more about your current offers',
        'what brands do you carry',
        'do you have new products in stock',
      ],
      'response':
      'We offer a wide range of beauty products, personal care items, perfumes, and makeup from top brands like Cyzone, Esika, and L\'Bel. Is there a particular category or brand you\'re interested in?',
    },
    {'keywords': [

'what products do you have available',
'what kind of products do you offer',
'could you inform me about your product catalog',
'i would like to know the product categories you handle',
'what new arrivals do you have in your store',
'i am interested in knowing more about your current offers',
'what brands do you carry',
'do you have new products in stock',
],
'response':
'We offer a wide range of beauty products, personal care items, perfumes, and makeup from top brands like Cyzone, Esika, and L\'Bel. Is there a particular category or brand you\'re interested in?',
},
{
'keywords': [
'i want to see perfumes',
'i would like to explore your selection of perfumes',
'could you show me the available perfumes',
'i am looking for a new fragrance',
'what perfumes do you recommend',
'i am searching for a perfume with notes of',
'do you have perfumes from brand',
'i love sweet perfumes',
],
'response':
'Certainly! We have a wonderful selection of perfumes. Do you have a preferred brand like Cyzone, Esika, or L\'Bel?',
'action': 'showPerfumes',
},
{
'keywords': [
'i would like to see the esika catalog',
'do you have esika products',
'i want to see the latest esika releases',
'i am a fan of the esika brand',
'please show me the esika products',
'is the new esika catalog available',
'i want to buy products from the esika line',
],
'response':
'Great choice! Here are the latest products from Esika.',
'action': 'showBrandCatalog',
'brand': 'Esika',
},
{
'keywords': [
'i like being in winter',
'winter is my favorite season',
'i prefer products for cold weather',
'i am looking for fragrances suitable for winter',
'i love warm scents for cold days',
'what products do you recommend for winter',
'i want to take care of my skin during winter',
],
'response':
'Winter is perfect for warm fragrances and protective skincare products. Here are some recommendations for the winter season.',
'action': 'showSeasonCatalog',
'season': 'Winter',
},
    {
      'keywords': [
        'i want to see perfumes',
        'i would like to explore your selection of perfumes',
        'could you show me the available perfumes',
        'i am looking for a new fragrance',
        'what perfumes do you recommend',
        'i am searching for a perfume with notes of',
        'do you have perfumes from brand',
        'i love sweet perfumes',
      ],
      'response':
      'Certainly! We have a wonderful selection of perfumes. Do you have a preferred brand like Cyzone, Esika, or L\'Bel?',
      'action': 'showPerfumes',
    },
    {
      'keywords': [
        'i would like to see the cyzone catalog',
        'do you have cyzone products',
        'i want to see the latest cyzone releases',
        'i am a fan of the cyzone brand',
        'please show me the cyzone products',
        'is the new cyzone catalog available',
        'i want to buy products from the cyzone line',
      ],
      'response':
      'Great choice! Here are the latest products from Cyzone.',
      'action': 'showBrandCatalog',
      'brand': 'Cyzone',
      'images': [
        'assets/Cyzone/Spring/Cyzone Ainnara Extra.jpg',
        'assets/Cyzone/Spring/Cyzone Nitro.jpg',
        'assets/Cyzone/Spring/Cyzone Nitro Air.jpg',
        'assets/Cyzone/Spring/Cyzone Nitro Intense.jpg',
        'assets/Cyzone/Spring/Cyzone Taste Warm.jpg',
        'assets/Cyzone/Summer/Cyzone Ainnara.jpg',
        'assets/Cyzone/Summer/Cyzone Blue&Blue Her.jpg',
        'assets/Cyzone/Summer/Cyzone Bolsa.jpg',
        'assets/Cyzone/Summer/Cyzone Pera In Love.jpg',
        'assets/Cyzone/Summer/Pure.jpg',
        'assets/Cyzone/Winter/Cyzone Blue&Blue Him.jpg',
        'assets/Cyzone/Winter/Cyzone Sandia Shake.jpg',
        'assets/Cyzone/Winter/Cyzone Sweet Black Intense.jpg',
        'assets/Cyzone/Winter/Cyzone Taste Cool.jpg',
      ],
    },
    {
      'keywords': [
        'i would like to see the esika catalog',
        'do you have esika products',
        'i want to see the latest esika releases',
        'i am a fan of the esika brand',
        'please show me the esika products',
        'is the new esika catalog available',
        'i want to buy products from the esika line',
      ],
      'response':
      'Excellent! Here are the latest products from Esika.',
      'action': 'showBrandCatalog',
      'brand': 'Esika',
      'images': [
        'assets/esika/Spring/Fantasia Azul Infinito.jpg',
        'assets/esika/Spring/Golden Vainilla.jpg',
        'assets/esika/Spring/Magnat Azul Infinito.jpg',
        'assets/esika/Spring/Magnat Inspire.jpg',
        'assets/esika/Spring/Magnat Select.jpg',
        'assets/esika/Spring/Magnatic Absolute.jpg',
        'assets/esika/Summer/DOrsay Inspire Vainilla.jpg',
        'assets/esika/Summer/LOVE!.png',
        'assets/esika/Summer/Pulso Absolute.jpg',
        'assets/esika/Summer/Red Power.jpg',
        'assets/esika/Summer/Red Rose.jpg',
        'assets/esika/Summer/Vibraza.png',
        'assets/esika/Summer/Vibraza Addiction.jpg',
        'assets/esika/Winter/Azul Infinito.jpg',
        'assets/esika/Winter/DOrsay Class.jpg',
        'assets/esika/Winter/DOrsay Inspire.jpg',
        'assets/esika/Winter/Expression Sens.jpg',
      ],
    },
    {
      'keywords': [
        'i would like to see the l\'bel catalog',
        'do you have l\'bel products',
        'i want to see the latest l\'bel releases',
        'i am a fan of the l\'bel brand',
        'please show me the l\'bel products',
        'is the new l\'bel catalog available',
        'i want to buy products from the l\'bel line',
      ],
      'response':
      'Here are the latest products from L\'Bel.',
      'action': 'showBrandCatalog',
      'brand': 'L_bel',
      'images': [
        // Spring
        'assets/l_bel/Spring/Magnolia DAmelie.png',
        'assets/l_bel/Spring/monlbel_2024.png',
        'assets/l_bel/Spring/Satin Nude.png',
        // Summer
        'assets/l_bel/Summer/Liasson.jpg',
        'assets/l_bel/Summer/Live Adventure.jpg',
        'assets/l_bel/Summer/Mon LBel Rubi.png',
        // Winter
        'assets/l_bel/Winter/Devos Magnetic.jpg',
        'assets/l_bel/Winter/Homme 033.jpg',
        'assets/l_bel/Winter/id.jpg',
        'assets/l_bel/Winter/satin.jpg',
      ],
    },
    // 6. Seasonal Catalog - Spring
    {
      'keywords': [
        'i love spring',
        'spring is my favorite season',
        'i prefer products for warm weather',
        'i am looking for fragrances suitable for spring',
        'what products do you recommend for spring',
        'i want to refresh my look for spring',
      ],
      'response':
      'Spring is perfect for fresh and vibrant products. Here are some recommendations for the spring season.',
      'action': 'showSeasonCatalog',
      'season': 'Spring',
      'images': [
        // Cyzone Spring
        'assets/Cyzone/Spring/Cyzone Ainnara Extra.jpg',
        'assets/Cyzone/Spring/Cyzone Nitro.jpg',
        'assets/Cyzone/Spring/Cyzone Nitro Air.jpg',
        'assets/Cyzone/Spring/Cyzone Nitro Intense.jpg',
        'assets/Cyzone/Spring/Cyzone Taste Warm.jpg',
        // Esika Spring
        'assets/esika/Spring/Fantasia Azul Infinito.jpg',
        'assets/esika/Spring/Golden Vainilla.jpg',
        'assets/esika/Spring/Magnat Azul Infinito.jpg',
        'assets/esika/Spring/Magnat Inspire.jpg',
        'assets/esika/Spring/Magnat Select.jpg',
        'assets/esika/Spring/Magnatic Absolute.jpg',
        // L'Bel Spring
        'assets/l_bel/Spring/Magnolia DAmelie.png',
        'assets/l_bel/Spring/monlbel_2024.png',
        'assets/l_bel/Spring/Satin Nude.png',
      ],
    },
    // 7. Seasonal Catalog - Summer
    {
      'keywords': [
        'i love summer',
        'i am looking for products suitable for hot weather',
        'i need a sunscreen',
        'i want fresh fragrances for summer',
        'what do you recommend for hair care in summer',
        'i am looking for a bronzer',
        'i want lightweight products for hot days',
      ],
      'response':
      'Summer calls for fresh and lightweight products. Here are some recommendations for the summer season.',
      'action': 'showSeasonCatalog',
      'season': 'Summer',
      'images': [
        // Cyzone Summer
        'assets/Cyzone/Summer/Cyzone Ainnara.jpg',
        'assets/Cyzone/Summer/Cyzone Blue&Blue Her.jpg',
        'assets/Cyzone/Summer/Cyzone Bolsa.jpg',
        'assets/Cyzone/Summer/Cyzone Pera In Love.jpg',
        'assets/Cyzone/Summer/Pure.jpg',
        // Esika Summer
        'assets/esika/Summer/DOrsay Inspire Vainilla.jpg',
        'assets/esika/Summer/LOVE!.png',
        'assets/esika/Summer/Pulso Absolute.jpg',
        'assets/esika/Summer/Red Power.jpg',
        'assets/esika/Summer/Red Rose.jpg',
        'assets/esika/Summer/Vibraza.png',
        'assets/esika/Summer/Vibraza Addiction.jpg',
        // L'Bel Summer
        'assets/l_bel/Summer/Liasson.jpg',
        'assets/l_bel/Summer/Live Adventure.jpg',
        'assets/l_bel/Summer/Mon LBel Rubi.png',
      ],
    },
    // 8. Seasonal Catalog - Winter
    {
      'keywords': [
        'i like being in winter',
        'winter is my favorite season',
        'i prefer products for cold weather',
        'i am looking for fragrances suitable for winter',
        'i love warm scents for cold days',
        'what products do you recommend for winter',
        'i want to take care of my skin during winter',
      ],
      'response':
      'Winter is perfect for warm fragrances and protective skincare products. Here are some recommendations for the winter season.',
      'action': 'showSeasonCatalog',
      'season': 'Winter',
      'images': [
        // Cyzone Winter
        'assets/Cyzone/Winter/Cyzone Blue&Blue Him.jpg',
        'assets/Cyzone/Winter/Cyzone Sandia Shake.jpg',
        'assets/Cyzone/Winter/Cyzone Sweet Black Intense.jpg',
        'assets/Cyzone/Winter/Cyzone Taste Cool.jpg',
        // Esika Winter
        'assets/esika/Winter/Azul Infinito.jpg',
        'assets/esika/Winter/DOrsay Class.jpg',
        'assets/esika/Winter/DOrsay Inspire.jpg',
        'assets/esika/Winter/Expression Sens.jpg',
        // L'Bel Winter
        'assets/l_bel/Winter/Devos Magnetic.jpg',
        'assets/l_bel/Winter/Homme 033.jpg',
        'assets/l_bel/Winter/id.jpg',
        'assets/l_bel/Winter/satin.jpg',
      ],
    },
    // 9. Offers and Discounts
    {
      'keywords': [
        'do you have offers or discounts',
        'i am interested in current promotions',
        'what products are on sale',
        'i am looking for discounts on perfumes',
        'do you offer discount coupons',
        'are there seasonal sales',
        'i want to know about your special promotions',
      ],
      'response':
      'Yes, we currently have several promotions available. Would you like to know more about discounts on specific categories?',
      'action': 'showPromotions',
      'images': [
        // You can include images of promotional banners or discounted products
        'assets/Cyzone/Winter/Cyzone Blue&Blue Him.jpg',
        'assets/l_bel/Winter/Homme 033.jpg',
        'assets/esika/Winter/DOrsay Inspire.jpg',
      ],
    },
    // 10. Organic Products
    {
      'keywords': [
        'i am interested in organic products',
        'do you have natural cosmetics',
        'i am looking for products without harmful chemicals',
        'i want makeup free of parabens',
        'do you offer eco-friendly products',
        'i am interested in cruelty-free products',
        'i need vegan products',
      ],
      'response':
      'Yes, we have a selection of organic and eco-friendly products. Would you like to see our natural skincare or makeup lines?',
      'action': 'showOrganicProducts',
      'images': [
        'assets/Cyzone/Winter/Cyzone Blue&Blue Him.jpg',
        'assets/Cyzone/Winter/Cyzone Sweet Black Intense.jpg',
        'assets/esika/Winter/Expression Sens.jpg',
      ],
    },
    // 11. Assistance with Product Selection
    {
      'keywords': [
        'i need help choosing a product',
        'what do you recommend for dry skin',
        'i am looking for a gift for my wife',
        'i want a perfume that lasts all day',
        'i am not sure which product to choose',
        'can you advise me on your best products',
        'i am looking for something special, what do you recommend',
      ],
      'response':
      'I\'d be happy to assist you in finding the perfect product. Please provide more details about your preferences or the recipient.',
    },
    // 15. Product Ingredients and Allergies
    {
      'keywords': [
        'does this product contain parabens',
        'is this product sulfate-free',
        'i have an allergy to nuts, is this product safe',
        'what are the ingredients of this product',
        'do you have hypoallergenic products',
        'i am looking for fragrance-free items',
      ],
      'response':
      'We have products suitable for various sensitivities and allergies. Could you specify which product or ingredient concerns you have?',
      'action': 'provideIngredientInfo',
    },

    // 16. Skincare Advice
    {
      'keywords': [
        'can you recommend a skincare routine',
        'what products should i use for oily skin',
        'how can i reduce wrinkles',
        'i need advice on acne treatment',
        'what do you suggest for dark spots',
        'how often should i exfoliate',
      ],
      'response':
      'I can provide recommendations based on your skin type and concerns. Please tell me more about your skin and what you are looking to achieve.',
      'action': 'provideSkincareAdvice',
    },

    // 17. Makeup Tips
    {
      'keywords': [
        'how do i choose the right foundation shade',
        'what is the best way to apply eyeliner',
        'can you give me tips for contouring',
        'how do i make my lipstick last longer',
        'what makeup is suitable for sensitive skin',
        'i need advice on creating a natural look',
      ],
      'response':
      'I\'d be happy to share some makeup tips. Please let me know what specific areas you\'d like advice on.',
      'action': 'provideMakeupTips',
    },

    // 18. Product Availability
    {
      'keywords': [
        'is this product available in stores',
        'do you have this item in stock',
        'when will this product be back',
        'can you notify me when this product is available',
        'is there a way to check product availability',
      ],
      'response':
      'I can check the availability of that product for you. Please provide the product name or code.',
      'action': 'checkProductAvailability',
    },

    // 20. Environmental Policies
    {
      'keywords': [
        'what are your environmental policies',
        'do you use sustainable materials',
        'are your products eco-friendly',
        'how do you reduce environmental impact',
        'do you support any environmental causes',
        'are your packaging materials recyclable',
      ],
      'response':
      'We are committed to sustainability and reducing our environmental impact. We use recyclable materials and support various green initiatives. Would you like more information?',
      'action': 'provideEnvironmentalInfo',
    },

    // 23. Brand Information
    {
      'keywords': [
        'tell me about the brand cyzone',
        'what is esika known for',
        'can you give me information about l\'bel',
        'which brand is best for skincare',
        'what makes your brands unique',
      ],
      'response':
      'Each of our brands offers unique qualities. Would you like to know more about Cyzone, Esika, or L\'Bel?',
      'action': 'provideBrandInfo',
    },
    // 26. Product Expiry and Freshness
    {
      'keywords': [
        'what is the expiry date of this product',
        'how long does this item last',
        'is this product fresh',
        'what is the shelf life',
        'does this product expire soon',
      ],
      'response':
      'Our products have a shelf life of at least one year from the date of purchase. If you have a specific product in mind, I can provide more details.',
      'action': 'provideExpiryInfo',
    },
  ];



  String getResponse(String userInput, ChatMessage userMessage) {
    // Normalize user input
    String lowerInput = _normalize(userInput);

    // Iterate through categories and their keywords
    for (var category in categories) {
      for (String keyword in category['keywords']) {
        if (lowerInput.contains(_normalize(keyword))) {
          // Check for actions to display images
          if (category.containsKey('action')) {
            List<String>? images;
            switch (category['action']) {
              case 'showPerfumes':
              // Retrieve images of perfumes
                images = _getAllPerfumeImages();
                break;
              case 'showBrandCatalog':
                String brand = category['brand'];
                images = _getBrandImages(brand);
                break;
              case 'showSeasonCatalog':
                String season = category['season'];
                images = _getSeasonImages(season);
                break;
              default:
                break;
            }
            userMessage.images = images;
          }
          return category['response'];
        }
      }
    }
    return 'Sorry, I did not understand your query. Could you please rephrase it?';
  }

  // Helper methods to get images based on brand or season
  List<String> _getAllPerfumeImages() {
    List<String> images = [];
    catalogImages.forEach((brand, seasons) {
      seasons.forEach((season, imgs) {
        images.addAll(imgs);
      });
    });
    return images;
  }

  List<String> _getBrandImages(String brand) {
    List<String> images = [];
    if (catalogImages.containsKey(brand)) {
      catalogImages[brand]?.forEach((season, imgs) {
        images.addAll(imgs);
      });
    }
    return images;
  }

  List<String> _getSeasonImages(String season) {
    List<String> images = [];
    catalogImages.forEach((brand, seasons) {
      if (seasons.containsKey(season)) {
        images.addAll(seasons[season]!);
      }
    });
    return images;
  }

  String _normalize(String input) {
    // Function to convert to lowercase and remove special characters
    String normalized = input.toLowerCase();
    normalized = normalized.replaceAll(RegExp(r'[^\w\s]+'), '');
    return normalized;
  }
}
