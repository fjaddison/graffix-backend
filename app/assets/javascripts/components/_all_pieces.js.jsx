var AllPieces = React.createClass({
  getInitialState () {
    return {
      pieces: []
    }
  },

  componentDidMount () {
    console.log('Component mounted')
    $.getJSON('/api/v1/pieces.json', (response) => {
      this.setState({ pieces: response })
    })
  },

  render () {
    var pieces = this.state.pieces.map((piece) => {
      return (
        <div>
          <h3>{piece.name}</h3>
          <img src={piece.image_url} />
        </div>
      )
    })

    return (
      <div> {pieces} </div>
    )
  }
})
