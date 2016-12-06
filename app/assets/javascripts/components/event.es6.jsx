class Event extends React.Component {

  render () {
    return (
      <div className="hold-individual-events-container">
        <div className="col-md-5 information-eventdetails">
        <ul>
        <li> <a href="/events">Events</a> > </li>
        <li><a href={this.props.event.sports_cat.toLowerCase()} className="active">{this.props.event.sports_cat}</a></li>
        </ul>
        <h1> Event Information <span className={this.props.event.sports_cat.toLowerCase()}></span> </h1>
        <h2>{this.props.event.event_name}</h2>
        <h4><i className="fa fa-calendar maroon"></i>{this.props.event.event_date}</h4>
        <p>{this.props.event.details}</p>
        <p className="event-time"><i className="fa fa-clock-o maroon"></i> Start: {this.props.event.start_time}  End: {this.props.event.end_time} </p>
        <p><i className="fa fa-map-marker maroon"></i> {this.props.event.event_address}</p>
        <p>Postal Code: {this.props.event.postal_code}</p>

      </div>
      <div className="col-md-7 information-eventimage">
      { this.props.event.picture.url ?  <img src={this.props.event.picture.url}/> : <span className={`photo_${this.props.event.sports_cat.toLowerCase()}`}></span>}

          <p className="players-required">{this.props.event.players_req - this.props.eventusers.length} more players required</p>
          <a href={this.props.event.id + "/join"} data-method="post"><button className="draw">Join Event</button></a>
          <button id="mapBtn" type="button" className="draw" data-toggle="modal" data-target="#eventMap">See Map</button>
      </div>



      </div>
    )
  }


}
