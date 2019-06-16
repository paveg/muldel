import React from "react";
import axios from "axios";

interface DeliveryCompany {
  url: string;
  id: number;
  contractor: string;
}

interface State {
  deliveryCompanies: DeliveryCompany[];
  selected: number;
}

class MainContainer extends React.Component<{}, State> {
  private constructor(props: Record<string, any>) {
    super(props);
    this.state = {
      deliveryCompanies: [],
      selected: 1
    };
  }

  public componentDidMount(): void {
    axios
      .get("http://localhost:3000/delivery_companies")
      .then(res => {
        const items: DeliveryCompany[] = res.data;
        this.setState({ deliveryCompanies: items });
      })
      .catch(data => {
        console.log(data);
        return;
      });
    return;
  }

  public render():
    | React.ReactElement<any, string | React.JSXElementConstructor<any>>
    | string
    | number
    | {}
    | React.ReactNodeArray
    | React.ReactPortal
    | boolean
    | null
    | undefined {
    const list: JSX.Element[] = [];
    this.state.deliveryCompanies.map((dc: DeliveryCompany) => {
      list.push(
        <div>
          <label>
            <input
              type="radio"
              value={dc.id}
              checked={dc.id == this.state.selected}
              onChange={() => this.setState({ selected: dc.id })}
            />
            {dc.contractor}
          </label>
        </div>
      );
    });

    return (
      <div className="main">
        <form>
          {list}
          <button type="submit">選択する</button>
        </form>
      </div>
    );
  }
}

export default MainContainer;
