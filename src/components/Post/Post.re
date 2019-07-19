module Css = PostStyles;

[@react.component]
let make = (~children) => {
  <Page>
    <div className=Css.post>
      <Markdown> children </Markdown>
      <Link path=Route.blog> "Back to blog"->React.string </Link>
    </div>
  </Page>;
};
