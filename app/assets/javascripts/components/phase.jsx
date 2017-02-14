class Phase extends React.Component{
	render(){
		return(
		  <div class="phase-container">
			<div class="header">
			<h2>{ this.props.phase.title}</h2>
			<p>{ this.props.total_cards}</p>
			</div>

			<div class="new-card-container">
			  <NewCard />
			</div>

			<div class="card-container">
			  <Card />
			</div>
		  </div>
		)
	}
}