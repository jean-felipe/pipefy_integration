# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


    @pipes1 = Pipe.create(name: 'Metas', updated_at: Date.today)
  	@pipes2 = Pipe.create(name: 'Construção', updated_at: Date.today)
  	@pipes3 = Pipe.create(name: 'Controle', updated_at: Date.today)

  	@phase  = Phase.create(name: 'Itens a fazer', description: 'Coisas que precisam ser feitas ainda', pipe_id: @pipes1.id)
  	@phase2 = Phase.create(name: 'Fazendo', description: 'Coisas para comprar na loja', pipe_id: @pipes1.id)
  	@phase3 = Phase.create(name: 'Feito', description: 'Fazendo', pipe_id: @pipes1.id)

  	@phase4 = Phase.create(name: 'Itens a fazer', description: 'Coisas que precisam ser feitas ainda',pipe_id: @pipes2.id)
  	@phase5 = Phase.create(name: 'Fazendo', description: 'Fazendo', pipe_id: @pipes2.id)
  	@phase6 = Phase.create(name: 'Feito', description: 'Coisas para comprar na loja', pipe_id: @pipes2.id)

  	@phase7 = Phase.create(name: 'Itens a fazer', description: 'Fazendo', pipe_id: @pipes3.id)
  	@phase8 = Phase.create(name: 'Fazendo', description: 'Coisas que precisam ser feitas ainda', pipe_id: @pipes3.id)
  	@phase9 = Phase.create(name: 'Feito', description: 'Coisas para comprar na loja', pipe_id: @pipes3.id)


    Card.create(title: "Correr 3 horas",  phase_id: @phase.id)
    Card.create(title: "Correr 3 horas",  phase_id: @phase.id) 
    Card.create(title: "Correr 3 horas",  phase_id: @phase4.id) 
    Card.create(title: "Correr 3 horas",  phase_id: @phase4.id) 
    Card.create(title: "Correr 3 horas",  phase_id: @phase7.id)

  		                  
  	