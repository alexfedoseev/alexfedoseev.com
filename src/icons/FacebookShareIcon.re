[@react.component]
let make = (~title, ~className) => {
  let {Theme.colors: theme} = React.useContext(Theme.Context.x);

  <Svg title viewBoxWidth="32" viewBoxHeight="32" className>
    <path
      fill={Faded->Icon.color(~theme)}
      d="M16-0.034c-8.841 0-16.035 7.192-16.035 16.034s7.194 16.034 16.035 16.034 16.035-7.192 16.035-16.034-7.194-16.034-16.035-16.034zM16 30.966c-8.252 0-14.965-6.714-14.965-14.966s6.713-14.966 14.965-14.966 14.965 6.714 14.965 14.966-6.713 14.966-14.965 14.966zM19.5 7h-2.668c-3.398-0.034-3.832 2.069-3.832 4.345v1.655h-1.5c-0.295-0.034-0.535 0.205-0.5 0.5v3c-0.035 0.295 0.205 0.534 0.5 0.5h1.5v7.5c-0.031 0.295 0.208 0.534 0.503 0.5h3.055c0.295 0.034 0.534-0.205 0.44-0.5l0.002-7.5h2.5c0.295 0.034 0.535-0.205 0.5-0.5v-3c0.035-0.295-0.205-0.534-0.5-0.5h-2.503l0.003-1.5c0.097-0.639 0.097-0.535 0.69-0.5h1.789c0.139-0.031 0.287-0.014 0.391-0.115s0.164-0.239 0.129-0.385v-3c0.036-0.295-0.204-0.534-0.499-0.5zM18.965 9.944l-1.254-0.048c-1.553 0-1.683 0.843-1.683 1.706l-0.004 1.896c0 0.142 0.056 0.278 0.156 0.379s0.236 0.156 0.378 0.156h2.442v1.932h-2.44c-0.295 0-0.534 0.239-0.535 0.534l-0.001 7.501h-2.024v-7.5c0-0.295-0.201-0.534-0.497-0.534h-1.503v-1.932h1.503c0.142 0 0.278-0.056 0.378-0.156s0.118-0.237 0.118-0.379v-2.155c0-2.242 0.453-3.31 2.832-3.31h2.133v1.91z"
    />
  </Svg>;
};
