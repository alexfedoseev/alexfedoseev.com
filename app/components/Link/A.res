module Css = LinkStyles

type underline =
  | Always
  | WhenInteracted
  | Never

type target =
  | Self
  | Blank

@react.component
let make = (~href: Route.t, ~target: target, ~underline: underline, ~className="", ~children) =>
  <a
    href={href->Route.unpack}
    target=?{switch target {
    | Blank => Some("_blank")
    | Self => None
    }}
    rel=?{switch target {
    | Blank => Some("noopener")
    | Self => None
    }}
    className={cx([
      Css.link,
      Css.text,
      switch underline {
      | Always => Css.underlineAlways
      | WhenInteracted => Css.underlineWhenInteracted
      | Never => Css.underlineNever
      },
      className,
    ])}>
    children
  </a>

module Box = {
  @react.component
  let make = (~href: Route.t, ~target: target, ~className="", ~children) =>
    <a
      href={href->Route.unpack}
      target=?{switch target {
      | Blank => Some("_blank")
      | Self => None
      }}
      rel=?{switch target {
      | Blank => Some("noopener")
      | Self => None
      }}
      className={cx([Css.link, Css.underlineNever, className])}>
      children
    </a>
}
