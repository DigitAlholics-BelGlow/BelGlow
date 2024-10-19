# belglow

BelGlow by DigitAlholics

The project consists of three applications: one directed at customers, another aimed at Belcorp employees, and a Python application that connects both, utilizing the data collected from the first to generate insights in the second. For the deployment of this project, Firebase was used, following the appropriate steps.

The deployment process involved Firebase:

Creating a web build using Flutter.
Installing Firebase in the project.
Enabling Firebase experiments related to web frameworks.
Initializing the Firebase hosting.
Deploying the application.
App link: https://belglow-d9f27.web.app/ 
Recommended dimensions: 

# User Manual
Below is a user manual that provides examples of interactions between the user and the assistant. Each section includes a typical conversation scenario, demonstrating how to inquire about products, obtain assistance, and receive recommendations. At the end, "confirm" will be written to proceed to the next flow.

Additionally, please provide your location, full name, and cell phone number to forward your information to our consultants.

# 1. Inquiring About Available Products
- User: What kind of products do you offer?
- Assistant: We offer a wide range of beauty products, personal care items, perfumes, and makeup from top brands like Cyzone, Esika, and L'Bel. Is there a particular category or brand you're interested in?

# 2. Exploring the Perfume Selection
-User: I would like to explore your selection of perfumes. <\br>
-Assistant: Certainly! We have a wonderful selection of perfumes. Do you have a preferred brand like Cyzone, Esika, or L'Bel?
(Action: showPerfumes)

# 3. Requesting the Ésika Catalog
- User: Do you have Esika products?
- Assistant: Great choice! Here are the latest products from Esika.
(Action: showBrandCatalog, Brand: Esika)

# 4. Preference for Winter Products
- User: I prefer products for cold weather.
- Assistant: Winter is perfect for warm fragrances and protective skincare products. Here are some recommendations for the winter season.
(Action: showSeasonCatalog, Season: Winter)

# 5.Viewing the Cyzone Catalog
- User: I want to see the latest Cyzone releases.
- Assistant: Great choice! Here are the latest products from Cyzone.
(Action: showBrandCatalog, Brand: Cyzone)

# 6. Requesting the L'Bel Catalog
- User: Is the new L'Bel catalog available?
- Assistant: Here are the latest products from L'Bel.
(Action: showBrandCatalog, Brand: L_bel)

# 7. Interest in Spring Products
- User: I love spring.
- Assistant: Spring is perfect for fresh and vibrant products. Here are some recommendations for the spring season.
(Action: showSeasonCatalog, Season: Spring)

# 8. Interest in Summer Products
- User: I want fresh fragrances for summer.
- Assistant: Summer calls for fresh and lightweight products. Here are some recommendations for the summer season.
(Action: showSeasonCatalog, Season: Summer)

# 9. Inquiring About Offers and Discounts
- User: Do you have offers or discounts?
- Assistant: Yes, we currently have several promotions available. Would you like to know more about discounts on specific categories?
(Action: showPromotions)

# 10. Interest in Organic Products
- User: Do you have natural cosmetics?
- Assistant: Yes, we have a selection of organic and eco-friendly products. Would you like to see our natural skincare or makeup lines?
(Action: showOrganicProducts)

# 11. Assistance with Product Selection
- User: What do you recommend for dry skin?
- Assistant: I'd be happy to assist you in finding the perfect product. Please provide more details about your preferences or the recipient.

# 12. Questions About Product Ingredients
- User: Is this product sulfate-free?
- Assistant: We have products suitable for various sensitivities and allergies. Could you specify which product or ingredient concerns you have?
(Action: provideIngredientInfo)

# 13. Seeking Skincare Advice
- User: How can I reduce wrinkles?
- Assistant: I can provide recommendations based on your skin type and concerns. Please tell me more about your skin and what you are looking to achieve.
(Action: provideSkincareAdvice)

# 14. Requesting Makeup Tips
- User: Can you give me tips for contouring?
- Assistant: I'd be happy to share some makeup tips. Please let me know what specific areas you'd like advice on.
(Action: provideMakeupTips)

# 15. Inquiring About Product Availability
- User: Do you have this item in stock?
- Assistant: I can check the availability of that product for you. Please provide the product name or code.
(Action: checkProductAvailability)

# 16. Environmental Policies
- User: Do you support any environmental causes?
- Assistant: We are committed to sustainability and reducing our environmental impact. We use recyclable materials and support various green initiatives. Would you like more information?
(Action: provideEnvironmentalInfo)

# 17. Information About the Brand
- User: Tell me about the brand Cyzone.
- Assistant: Each of our brands offers unique qualities. Would you like to know more about Cyzone, Esika, or L'Bel?
(Action: provideBrandInfo)

# 18. Product Expiration and Freshness
- User: Does this product expire soon?
- Assistant: Our products have a shelf life of at least one year from the date of purchase. If you have a specific product in mind, I can provide more details.
(Action: provideExpiryInfo)

# 19. Interest in Fragrances with Specific Notes
- User: I am searching for a perfume with notes of vanilla.
- Assistant: Certainly! We have several perfumes with vanilla notes. Do you have a preferred brand like Cyzone, Esika, or L'Bel?
(Action: showPerfumes)

# 20. Seeking Gift Recommendations
- User: I am looking for a gift for my wife.
- Assistant: I'd be happy to assist you in finding the perfect product. Please provide more details about her preferences or any specific products she likes.

# 21. Interest in Summer Hair Care
- User: What do you recommend for hair care in summer?
- Assistant: Summer can be tough on hair. We have products that protect against sun damage and maintain moisture. Would you like to see our selection of shampoos, conditioners, or styling products?

# 22. Inquiring About Seasonal Sales
- User: Are there seasonal sales?
- Assistant: Yes, we offer seasonal promotions and discounts. Currently, we have sales for the upcoming season. Would you like more details?
(Action: showPromotions)

# 23. Interest in Vegan Products
- User: I need vegan products.
- Assistant: Yes, we have a selection of vegan and cruelty-free products. Would you like to explore our skincare or makeup options?
(Action: showOrganicProducts)

# 24.  Assistance with Choosing a Fragrance
- User: I love sweet perfumes.
- Assistant: We have a wonderful selection of sweet-scented perfumes. Do you have a preferred brand like Cyzone, Esika, or L'Bel?
(Action: showPerfumes)

# 25. Interest in the Latest Arrivals
- User: What new arrivals do you have in your store?
- Assistant: We have several new products in stock, including the latest releases from Cyzone, Esika, and L'Bel. Is there a specific category or brand you're interested in?
