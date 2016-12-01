class Events extends React.Component {
  render () {
    // debugger;
    return (
      <div>
        {this.props.events.map(function(event){
          return (
            <div key={event.id}>
            <h3><a href={"/events/" + event.id}>{event.event_name}</a></h3>
            <h3>Location : {event.event_address}</h3>
            <h3>Players needed : {event.players_req}</h3>
            <h3>Details : {event.details}</h3>
            </div>
          )
        }
        )}
      </div>
    )
  }
}
