class CommentForm extends React.Component {
  render () {
    return (
      <div>
        <form>
          <textarea className="form-control" rows="3"></textarea>
          <button type="button" className="btn btn-primary">Post comment</button>
        </form>
      </div>
    );
  }
}
