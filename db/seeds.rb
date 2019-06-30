User.create! name: 'admin', email: 'admin@admin.admin', password: 'admin123', admin: true
demo_user = User.create! name: 'demo', email: 'demo@demo.demo', password: 'demo123'
User.create! name: 'demo2', email: 'demo2@demo.demo', password: 'demo2123'

Recipe.create! name: 'hac habitasse platea', description: 'Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', user_id: demo_user.id
Recipe.create! name: 'diam in magna bibendum', description: 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', user_id: demo_user.id
Recipe.create! name: 'nunc viverra dapibus nulla suscipit', description: 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', user_id: demo_user.id
Recipe.create! name: 'ut blandit non', description: 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', user_id: demo_user.id
Recipe.create! name: 'lacus morbi sem', description: 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', user_id: demo_user.id
Recipe.create! name: 'gravida nisi at', description: 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', user_id: demo_user.id
Recipe.create! name: 'sociis natoque', description: 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', user_id: demo_user.id
Recipe.create! name: 'sed vestibulum', description: 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', user_id: demo_user.id
Recipe.create! name: 'quis augue luctus tincidunt', description: 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.', user_id: demo_user.id
Recipe.create! name: 'ipsum primis in faucibus orci', description: 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', user_id: demo_user.id
Recipe.create! name: 'nisl nunc rhoncus', description: 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', user_id: demo_user.id
Recipe.create! name: 'in sagittis dui vel nisl', description: 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', user_id: demo_user.id
Recipe.create! name: 'placerat ante nulla', description: 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', user_id: demo_user.id
Recipe.create! name: 'pretium iaculis diam', description: 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', user_id: demo_user.id
Recipe.create! name: 'fermentum donec', description: 'Integer a nibh.', user_id: demo_user.id
Recipe.create! name: 'morbi non quam', description: 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', user_id: demo_user.id
Recipe.create! name: 'turpis nec euismod', description: 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', user_id: demo_user.id
Recipe.create! name: 'nisi venenatis tristique fusce', description: 'In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', user_id: demo_user.id
Recipe.create! name: 'varius integer ac leo', description: 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.', user_id: demo_user.id
Recipe.create! name: 'vel augue', description: 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', user_id: demo_user.id

recipe_ids = Recipe.pluck(:id)

UnitCategory.create! name: 'tömeg'
UnitCategory.create! name: 'űrtartalom'

Unit.create! name: 'gramm', symbol: 'g'
Unit.create! name: 'dekagramm', symbol: 'dkg'
Unit.create! name: 'kilogramm', symbol: 'kg'
Unit.create! name: 'milliliter', symbol: 'ml'
Unit.create! name: 'deciliter', symbol: 'dl'
Unit.create! name: 'liter', symbol: 'l'

UnitConversion.create! unit_category_id: UnitCategory.find_by_name('tömeg').id, unit_id: Unit.find_by_symbol('g').id, rate: 0
UnitConversion.create! unit_category_id: UnitCategory.find_by_name('tömeg').id, unit_id: Unit.find_by_symbol('dkg').id, rate: 100
UnitConversion.create! unit_category_id: UnitCategory.find_by_name('tömeg').id, unit_id: Unit.find_by_symbol('kg').id, rate: 1000
UnitConversion.create! unit_category_id: UnitCategory.find_by_name('űrtartalom').id, unit_id: Unit.find_by_symbol('ml').id, rate: 0
UnitConversion.create! unit_category_id: UnitCategory.find_by_name('űrtartalom').id, unit_id: Unit.find_by_symbol('dl').id, rate: 100
UnitConversion.create! unit_category_id: UnitCategory.find_by_name('űrtartalom').id, unit_id: Unit.find_by_symbol('l').id, rate: 1000

unit_conversion_ids = UnitConversion.pluck(:id)

Ingredient.create! name: 'vivamus vestibulum sagittis', unit_conversion_id: unit_conversion_ids[3]
Ingredient.create! name: 'quam', unit_conversion_id: unit_conversion_ids[4]
Ingredient.create! name: 'mattis', unit_conversion_id: unit_conversion_ids[4]
Ingredient.create! name: 'aliquet at feugiat', unit_conversion_id: unit_conversion_ids[5]
Ingredient.create! name: 'turpis', unit_conversion_id: unit_conversion_ids[1]
Ingredient.create! name: 'lacinia aenean', unit_conversion_id: unit_conversion_ids[1]
Ingredient.create! name: 'justo', unit_conversion_id: unit_conversion_ids[3]
Ingredient.create! name: 'pede ac diam', unit_conversion_id: unit_conversion_ids[1]
Ingredient.create! name: 'dui proin leo', unit_conversion_id: unit_conversion_ids[4]
Ingredient.create! name: 'pellentesque ultrices mattis', unit_conversion_id: unit_conversion_ids[1]
Ingredient.create! name: 'tempor', unit_conversion_id: unit_conversion_ids[2]
Ingredient.create! name: 'proin leo', unit_conversion_id: unit_conversion_ids[0]
Ingredient.create! name: 'justo etiam pretium', unit_conversion_id: unit_conversion_ids[0]
Ingredient.create! name: 'elementum ligula', unit_conversion_id: unit_conversion_ids[2]
Ingredient.create! name: 'ullamcorper', unit_conversion_id: unit_conversion_ids[5]
Ingredient.create! name: 'ipsum', unit_conversion_id: unit_conversion_ids[0]
Ingredient.create! name: 'sapien placerat', unit_conversion_id: unit_conversion_ids[2]
Ingredient.create! name: 'sit amet', unit_conversion_id: unit_conversion_ids[1]
Ingredient.create! name: 'nibh ligula nec', unit_conversion_id: unit_conversion_ids[3]
Ingredient.create! name: 'dui', unit_conversion_id: unit_conversion_ids[5]

ingredient_ids = Ingredient.pluck(:id)

RequiredIngredient.create! recipe_id: recipe_ids[0], ingredient_id: ingredient_ids[0], amount: 9
RequiredIngredient.create! recipe_id: recipe_ids[1], ingredient_id: ingredient_ids[6], amount: 1
RequiredIngredient.create! recipe_id: recipe_ids[2], ingredient_id: ingredient_ids[2], amount: 7
RequiredIngredient.create! recipe_id: recipe_ids[3], ingredient_id: ingredient_ids[14], amount: 7
RequiredIngredient.create! recipe_id: recipe_ids[4], ingredient_id: ingredient_ids[14], amount: 5
RequiredIngredient.create! recipe_id: recipe_ids[5], ingredient_id: ingredient_ids[5], amount: 5
RequiredIngredient.create! recipe_id: recipe_ids[6], ingredient_id: ingredient_ids[17], amount: 3
RequiredIngredient.create! recipe_id: recipe_ids[7], ingredient_id: ingredient_ids[1], amount: 6
RequiredIngredient.create! recipe_id: recipe_ids[8], ingredient_id: ingredient_ids[12], amount: 10
RequiredIngredient.create! recipe_id: recipe_ids[9], ingredient_id: ingredient_ids[17], amount: 10
RequiredIngredient.create! recipe_id: recipe_ids[10], ingredient_id: ingredient_ids[3], amount: 6
RequiredIngredient.create! recipe_id: recipe_ids[11], ingredient_id: ingredient_ids[0], amount: 1
RequiredIngredient.create! recipe_id: recipe_ids[12], ingredient_id: ingredient_ids[19], amount: 4
RequiredIngredient.create! recipe_id: recipe_ids[13], ingredient_id: ingredient_ids[2], amount: 6
RequiredIngredient.create! recipe_id: recipe_ids[14], ingredient_id: ingredient_ids[6], amount: 7
RequiredIngredient.create! recipe_id: recipe_ids[15], ingredient_id: ingredient_ids[5], amount: 7
RequiredIngredient.create! recipe_id: recipe_ids[16], ingredient_id: ingredient_ids[8], amount: 3
RequiredIngredient.create! recipe_id: recipe_ids[17], ingredient_id: ingredient_ids[4], amount: 8
RequiredIngredient.create! recipe_id: recipe_ids[18], ingredient_id: ingredient_ids[10], amount: 7
RequiredIngredient.create! recipe_id: recipe_ids[19], ingredient_id: ingredient_ids[16], amount: 1
RequiredIngredient.create! recipe_id: recipe_ids[7], ingredient_id: ingredient_ids[19], amount: 3
RequiredIngredient.create! recipe_id: recipe_ids[5], ingredient_id: ingredient_ids[16], amount: 9
RequiredIngredient.create! recipe_id: recipe_ids[9], ingredient_id: ingredient_ids[4], amount: 1
RequiredIngredient.create! recipe_id: recipe_ids[14], ingredient_id: ingredient_ids[11], amount: 4
RequiredIngredient.create! recipe_id: recipe_ids[17], ingredient_id: ingredient_ids[19], amount: 1
RequiredIngredient.create! recipe_id: recipe_ids[13], ingredient_id: ingredient_ids[9], amount: 2
RequiredIngredient.create! recipe_id: recipe_ids[11], ingredient_id: ingredient_ids[5], amount: 5
RequiredIngredient.create! recipe_id: recipe_ids[1], ingredient_id: ingredient_ids[10], amount: 4
RequiredIngredient.create! recipe_id: recipe_ids[17], ingredient_id: ingredient_ids[5], amount: 6
RequiredIngredient.create! recipe_id: recipe_ids[13], ingredient_id: ingredient_ids[3], amount: 10
RequiredIngredient.create! recipe_id: recipe_ids[0], ingredient_id: ingredient_ids[16], amount: 5
RequiredIngredient.create! recipe_id: recipe_ids[16], ingredient_id: ingredient_ids[6], amount: 6
RequiredIngredient.create! recipe_id: recipe_ids[14], ingredient_id: ingredient_ids[7], amount: 9
RequiredIngredient.create! recipe_id: recipe_ids[11], ingredient_id: ingredient_ids[10], amount: 3
RequiredIngredient.create! recipe_id: recipe_ids[5], ingredient_id: ingredient_ids[6], amount: 8
RequiredIngredient.create! recipe_id: recipe_ids[8], ingredient_id: ingredient_ids[8], amount: 5
RequiredIngredient.create! recipe_id: recipe_ids[10], ingredient_id: ingredient_ids[4], amount: 6
RequiredIngredient.create! recipe_id: recipe_ids[4], ingredient_id: ingredient_ids[8], amount: 2
RequiredIngredient.create! recipe_id: recipe_ids[10], ingredient_id: ingredient_ids[0], amount: 8
RequiredIngredient.create! recipe_id: recipe_ids[10], ingredient_id: ingredient_ids[14], amount: 2
