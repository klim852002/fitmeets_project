class Events extends React.Component {
  render () {
    // debugger;
    return (
      <div>
        {this.props.events.map(function(event){
          return (
            <div key={event.id} className="paper col-md-3">
            <img src={event.picture}/>
            <h2>{event.sports_cat}</h2>
            <h3><a href={"/events/" + event.id}>{event.event_name}</a></h3>
            <hr/>
            <h5>Location : {event.event_address}</h5>
            <h5>Players needed : {event.players_req}</h5>
            <p>Details : {event.details}</p>
            </div>
          )
        }
        )}
      </div>
    )
  }
}
