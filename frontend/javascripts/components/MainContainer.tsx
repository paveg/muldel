import React from "react";
import RadioList from "@js/components/RadioList";

class MainContainer extends React.Component<{}, {}> {
  private constructor(props: Record<string, any>) {
    super(props);
  }

  public render(): JSX.Element | null {
    return (
      <div className="main">
        <RadioList />
      </div>
    );
  }
}

export default MainContainer;
