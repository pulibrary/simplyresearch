import React from "react";
import ReactDOM from "react-dom/client";

import App from "../components/App.jsx";

const container = document.getElementById("react-root");
const children = Array.from(container.children).map((child) =>
  React.createElement("div", {
    dangerouslySetInnerHTML: { __html: child.outerHTML },
  }),
);

if (container) {
  const root = ReactDOM.createRoot(container);
  root.render(
    <React.StrictMode>
      <App>{children}</App>
    </React.StrictMode>,
  );
}
