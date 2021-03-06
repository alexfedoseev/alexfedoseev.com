@react.component
let make = (~title="Tip", ~size: Icon.size, ~color: Icon.color, ~className=?) => {
  let {ThemeContext.colors: theme} = React.useContext(ThemeContext.ctx)

  <Icon title size ?className>
    <path
      fill={color->Icon.color(~theme)}
      d="M5.749 15.338c0.631 0.408 1.361 0.684 2.251 0.662 0.889 0.022 1.62-0.254 2.251-0.662l-0.014-1.738h-4.475l-0.014 1.738zM10.158 12.8c0-3.486 3.704-4.678 3.426-8.15-0.174-2.19-1.658-4.648-5.584-4.648s-5.41 2.458-5.585 4.649c-0.278 3.471 3.427 4.664 3.427 8.15h4.315zM4 4.8c0.166-2.078 1.69-3.2 4-3.2s3.723 1.097 3.889 3.175c0.090 1.139-0.564 1.898-1.447 3.141-0.651 0.917-1.282 1.874-1.642 3.284h-1.6c-0.359-1.41-0.99-2.367-1.642-3.285-0.882-1.242-1.649-1.976-1.558-3.115z"
    />
  </Icon>
}
