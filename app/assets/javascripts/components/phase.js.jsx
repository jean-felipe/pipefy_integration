var Phase = React.createClass({
	
	getInitialState: function(){
		return { cardList: []}
	},
	componentDidMount: function(){
		this.getDataFromApi();
	},
	getDataFromApi: function(){
		var self = this;
		jQuery.ajax({
			method: 'GET',
			url: '/api/cards.1',
			success: function(data){
				self.setState({ cardList: data});
			},
			error: function(xhr, status, error) {
				alert('Cannot get data from API:', error);
			}
		});
	},

	render: function(){
		var cards = [];
		debugger;
		this.props.cards.forEach(function(card) {
			cards.push(<Cards title={card.title} key={card.id} />);
		}.bind(this));
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
});