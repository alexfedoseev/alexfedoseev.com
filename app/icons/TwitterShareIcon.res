@react.component
let make = (~title, ~className) => {
  let {ThemeContext.colors: theme} = React.useContext(ThemeContext.ctx)

  <Svg title viewBoxWidth="32" viewBoxHeight="32" className>
    <path
      fill={Faded->Icon.color(~theme)}
      d="M16-0.034c-8.841 0-16.035 7.192-16.035 16.034s7.194 16.034 16.035 16.034 16.035-7.192 16.035-16.034-7.194-16.034-16.035-16.034zM16 30.966c-8.252 0-14.965-6.714-14.965-14.966s6.713-14.966 14.965-14.966 14.965 6.714 14.965 14.966-6.713 14.966-14.965 14.966zM24.794 11.046c0.11-0.204 0.202-0.419 0.273-0.643 0.067-0.212-0.002-0.442-0.176-0.581-0.173-0.138-0.415-0.154-0.605-0.042-0.513 0.305-1.065 0.53-1.646 0.673-0.698-0.631-1.615-0.987-2.562-0.987-2.105 0-3.817 1.712-3.817 3.815 0 0.053 0.001 0.105 0.003 0.158-2.235-0.279-4.298-1.415-5.735-3.178-0.11-0.136-0.28-0.207-0.456-0.195-0.175 0.014-0.332 0.112-0.42 0.265-0.338 0.58-0.517 1.243-0.517 1.919 0 0.64 0.159 1.256 0.451 1.802-0.074 0.012-0.147 0.039-0.214 0.078-0.163 0.097-0.264 0.292-0.264 0.481 0 1.135 0.505 2.177 1.319 2.885-0.012 0.011-0.023 0.023-0.035 0.035-0.125 0.142-0.166 0.338-0.108 0.518 0.351 1.094 1.164 1.946 2.184 2.365-1.041 0.515-2.25 0.716-3.406 0.579-0.244-0.022-0.481 0.116-0.566 0.352-0.083 0.234 0.005 0.495 0.215 0.63 1.592 1.020 3.431 1.559 5.319 1.559 6.18 0 9.874-5.020 9.874-9.873 0-0.055 0-0.109-0.001-0.164 0.597-0.466 1.115-1.023 1.541-1.66 0.132-0.197 0.118-0.459-0.035-0.641-0.151-0.179-0.4-0.241-0.616-0.15zM23.049 12.801c-0.147 0.106-0.231 0.279-0.222 0.461 0.006 0.132 0.009 0.266 0.009 0.398 0 4.328-3.293 8.805-8.804 8.805-0.989 0-1.964-0.166-2.887-0.488 1.105-0.211 2.141-0.682 3.045-1.39 0.178-0.14 0.249-0.376 0.177-0.591-0.072-0.214-0.271-0.36-0.497-0.364-0.891-0.018-1.699-0.461-2.194-1.162 0.253-0.017 0.501-0.059 0.742-0.124 0.239-0.065 0.401-0.286 0.393-0.534s-0.186-0.457-0.429-0.506c-1.003-0.201-1.79-0.943-2.081-1.905 0.266 0.067 0.539 0.106 0.812 0.115 0.235-0.001 0.453-0.145 0.526-0.371s-0.013-0.475-0.212-0.607c-0.765-0.512-1.222-1.366-1.222-2.287 0-0.223 0.027-0.443 0.079-0.658 1.731 1.775 4.080 2.847 6.568 2.972 0.176 0.001 0.33-0.062 0.437-0.191s0.148-0.3 0.11-0.464c-0.047-0.203-0.071-0.414-0.071-0.627 0-1.515 1.233-2.747 2.748-2.747 0.757 0 1.488 0.316 2.005 0.868 0.126 0.135 0.312 0.194 0.494 0.159 0.165-0.033 0.328-0.071 0.489-0.115-0.072 0.054-0.147 0.104-0.226 0.151-0.216 0.129-0.312 0.393-0.231 0.631s0.324 0.394 0.569 0.357c0.061-0.007 0.121-0.015 0.182-0.023-0.099 0.082-0.203 0.161-0.309 0.237z"
    />
  </Svg>
}