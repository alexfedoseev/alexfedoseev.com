module Css = MainPageStyles;

[@react.component]
let make = () => {
  <Page>
    <div className=Css.container>
      <div className=Css.photo />
      <div className=Css.line />
      <div className=Css.headline>
        <div className=Css.name> "Alex Fedoseev"->React.string </div>
        <div className=Css.links>
          <div className=Css.nav>
            <Link.Box path=Route.blog className=Css.link>
              "blog"->React.string
            </Link.Box>
            <Link.Box path=Route.photo className=Css.link>
              "photo"->React.string
            </Link.Box>
            <Link.Box path=Route.me className=Css.link>
              "me"->React.string
            </Link.Box>
          </div>
          <div className=Css.diagonal />
          <div className=Css.social>
            <A.Box href=Route.twitter target=Blank className=Css.icon>
              <TwitterIcon size=SM color=Gray />
            </A.Box>
            <A.Box href=Route.github target=Blank className=Css.icon>
              <GithubIcon size=SM color=Gray />
            </A.Box>
            <A.Box href=Route.instagram target=Blank className=Css.icon>
              <InstagramIcon size=SM color=Gray />
            </A.Box>
          </div>
        </div>
      </div>
    </div>
  </Page>;
};
