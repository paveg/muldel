import React from 'react'
import axios from 'axios'

interface DeliveryCompany {
  url: string
  id: number
  contractor: string
}

type State = { delivery_companies: Array<DeliveryCompany>, selected: number, }

class MainContainer extends React.Component<{}, State> {
  constructor(props: Object) {
    super(props);
    this.state = {
      delivery_companies: [],
      selected: 1,
    }
  }

  componentDidMount(): void {
    axios.get('http://localhost:3000/delivery_companies').then(res => {
      const items: Array<DeliveryCompany> = res.data;
      this.setState({delivery_companies: items})
    }).catch((data) => {
      console.log(data)
    })
  }

  render(): React.ReactElement<any, string | React.JSXElementConstructor<any>> | string | number | {} | React.ReactNodeArray | React.ReactPortal | boolean | null | undefined {
    const list: Array<JSX.Element> = [];
    this.state.delivery_companies.map((dc: DeliveryCompany) => {
      list.push(
        <div>
          <label>
            <input
              type="radio"
              value={dc.id}
              checked={dc.id == this.state.selected}
              onChange={() => this.setState({selected: dc.id})} />{dc.contractor}
          </label>
        </div>)
    });

    return (
      <div className="main">
        <form>
          {list}
          <button type="submit">選択する</button>
        </form>
      </div>
    )
  }
}

export default MainContainer
