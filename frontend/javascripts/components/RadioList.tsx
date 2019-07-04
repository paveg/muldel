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

export default class RadioList extends React.Component<{}, State> {
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
        this.setState({ deliveryCompanies: res.data });
      })
      .catch(data => {
        console.log(data);
      });
    return;
  }

  public render(): JSX.Element | null {
    const list: JSX.Element[] = [];
    this.state.deliveryCompanies.map((dc: DeliveryCompany) => {
      list.push(
        <div key={dc.id}>
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
      <div className="delivery-companies-form">
        <form>
          {list}
          <button type="submit">選択する</button>
        </form>
      </div>
    );
  }
}
