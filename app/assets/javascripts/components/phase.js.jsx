class Phase extends React.Component{
	debugger;
	getInitialState() { return { cardsList: [] } }

	_getCards(){
		const cardsList = [
			{id: 1, title: 'Teste'},
			{id: 2, title: 'Teste2'}];

		return cardsList.map((card) => {
			return(
				<Cards title={card.title} key={card.id}/>
				);
		});
	};

	_fetchCards(){
	  jQuery.ajax({
	  	method: 'GET',
	  	url: '/api/cards',
	  	success: (cards) => {
	  		this.setState({ cards })
	  	}
	  });
	};

	



	componentDidMount(){
		$.getJSON('/api/cards.1', (response) => { this.setState({ cardsList: response }) });
	};

	render(){
		const cards = this._getCards();
		return(
		  <div className="phase-item" id="phase">
			<div className="phase-item-header">
			 <h2>{ this.props.name}</h2>
			 <p>{ this.props.cards}</p>
			</div>
			<div className="phase-item-body">
				{cards}
			</div>
			
			
          </div>
		);
	}
}