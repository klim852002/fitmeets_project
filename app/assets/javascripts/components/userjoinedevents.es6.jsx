class UserJoinedEvents extends React.Component {


  render () {
    // debugger;
    return (
      <div className="hold-events container">
        {this.props.events_join.map(function(event){
          return (
            <div key={event.id} className="paper col-md-4">
            {event.picture.url ?  <img src={event.picture.url}/> : <span className={`photo_${event.sports_cat.toLowerCase()}`}></span>}
            <h2>{event.sports_cat}</h2>
            <h2><span className={event.sports_cat.toLowerCase()}></span></h2>
            <h3><a href={"/events/" + event.id}>{event.event_name}</a></h3>
            <hr/>
            <h5>Location : {event.event_address}</h5>
            <h5>Players needed : <span className="player-circle">{event.players_req}</span></h5>
            <a href={"/events/" + event.id} className="standard-btn">
      <button className="draw">View Event</button>
     </a>


     <br/><br/><br/>
            </div>
          )
        }
        )}
      </div>

    )
  }
}
