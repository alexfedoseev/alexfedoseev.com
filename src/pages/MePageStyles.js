import { css } from "linaria";

import { Color, Font, Transition, Screen, Layout } from "styles";

export const container = css`
  display: grid;
  grid-auto-flow: row;
  grid-template-rows: max-content;

  @media ${Screen.small} {
    grid-row-gap: 50px;
    padding: 0 ${Layout.smallScreenHPad}px;
  }

  @media ${Screen.large} {
    grid-template-columns: ${Layout.largeScreenContentWidth}px;
    grid-row-gap: ${Layout.largeScreenRowGap}px;
  }
`;

const smallScreenPhotoSize = 130;
const largeScreenPhotoSize = 100;

export const about = css`
  display: grid;

  @media ${Screen.small} {
    grid-template-rows: max-content max-content;
    grid-row-gap: 24px;
    justify-content: center;
    justify-items: center;
    text-align: center;
  }

  @media ${Screen.large} {
    grid-template-columns: ${Layout.largeScreenLeftColWidth}px ${Layout.largeScreenRightColWidth}px;
    grid-template-rows: max-content;
    grid-column-gap: ${Layout.largeScreenColGap}px;
    align-content: start;
    align-items: start;
  }
`;

export const photo = css`
  display: flex;
  border-radius: 50%;
  background-color: #efefef;
  background-image: url("~meta/me.png");
  background-repeat: no-repeat;
  background-position: 50% 50%;
  background-size: contain;

  @media ${Screen.small} {
    justify-self: center;
    width: ${smallScreenPhotoSize}px;
    height: ${smallScreenPhotoSize}px;
  }

  @media ${Screen.large} {
    justify-self: flex-end;
    width: ${largeScreenPhotoSize}px;
    height: ${largeScreenPhotoSize}px;
  }
`;

export const aboutContent = css`
  display: grid;
  grid-auto-flow: row;
  grid-template-rows: max-content;
  grid-row-gap: 14px;
`;

export const row = css`
  display: grid;

  @media ${Screen.small} {
    justify-content: center;
    justify-items: center;
    text-align: center;
  }

  @media ${Screen.large} {
    grid-template-columns: ${Layout.largeScreenLeftColWidth}px ${Layout.largeScreenRightColWidth}px;
    grid-template-rows: max-content;
    grid-column-gap: ${Layout.largeScreenColGap}px;
    align-content: start;
    align-items: baseline;
  }
`;

export const rowLabel = css`
  @media ${Screen.small} {
    margin-bottom: 12px;
    font-size: 1.1em;
    text-transform: uppercase;
  }
`;

export const content = css`
  display: grid;
  grid-auto-flow: row;
  grid-template-rows: max-content;

  @media ${Screen.small} {
    grid-row-gap: ${Layout.smallScreenRowGap}px;
    padding: 0 ${Layout.smallScreenHPad}px;
  }

  @media ${Screen.large} {
    grid-template-columns: ${Layout.largeScreenRightColWidth}px;
    grid-row-gap: ${Layout.largeScreenRowGap}px;
  }
`;

export const contentBlock = css`
  display: grid;
  grid-template-rows: max-content max-content;
`;

export const contentSubheading = css`
  margin-bottom: 3px;
  font-size: 0.95em;
  font-weight: ${Font.bold};
`;

export const ul = css`
  list-style-type: none;

  @media ${Screen.large} {
    margin-left: 1.7em;

    & li::before {
      content: "—";
      display: block;
      position: relative;
      max-width: 0px;
      max-height: 0px;
      left: -1.7em;
      color: ${Color.grayText};
    }
  }
`;

export const meh = css`
  color: ${Color.grayText};
  font-style: italic;
  text-decoration: line-through;
`;

export const note = css`
  color: ${Color.grayText};
  font-size: 0.8em;
  font-style: italic;
`;

export const ossProjects = css`
  display: grid;
  grid-auto-flow: row;
  grid-template-rows: max-content;

  @media ${Screen.small} {
    grid-row-gap: 14px;
  }

  @media ${Screen.large} {
    grid-row-gap: 6px;
  }
`;

export const ossProject = css`
  display: grid;

  @media ${Screen.small} {
    grid-template-rows: max-content max-content;
  }

  @media ${Screen.large} {
    grid-template-columns: max-content max-content max-content;
  }
`;

export const ossProjectColon = css`
  @media ${Screen.small} {
    display: none;
  }

  @media ${Screen.large} {
    display: inline-block;
    margin-right: 0.5em;
  }
`;

export const ossProjectDescription = css`
  @media ${Screen.small} {
    text-align: center;
  }
`;

export const links = css`
  display: grid;
  grid-auto-flow: row;
  grid-template-rows: max-content;

  @media ${Screen.small} {
    grid-row-gap: 20px;
    margin: 14px;
  }

  @media ${Screen.large} {
    grid-row-gap: 10px;
  }
`;

export const linkRow = css`
  display: grid;
  grid-template-columns: max-content;

  @media ${Screen.small} {
    justify-content: center;
  }
`;

export const link = css`
  display: grid;

  & path {
    transition: fill ${Transition.fast} ${Transition.timingFunction};
  }

  @media ${Screen.small} {
    grid-template-rows: max-content max-content;
    grid-row-gap: 6px;
    align-items: center;
    justify-items: center;
  }

  @media ${Screen.large} {
    grid-template-columns: max-content max-content;
    grid-column-gap: 10px;
  }
`;

export const githubLink = css`
  &:hover path {
    fill: ${Color.github} !important;
  }
`;

export const twitterLink = css`
  &:hover path {
    fill: ${Color.twitter} !important;
  }
`;

export const instagramLink = css`
  &:hover path {
    fill: ${Color.instagram} !important;
  }
`;

export const facebookLink = css`
  &:hover path {
    fill: ${Color.facebook} !important;
  }
`;

export const linkedinLink = css`
  &:hover path {
    fill: ${Color.linkedin} !important;
  }
`;