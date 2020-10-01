import { css } from "linaria";

import { Color, Font, Transition, Screen, Theme, Layout } from "styles";

export const years = css`
  display: grid;
  grid-auto-flow: row;
  grid-auto-rows: max-content;

  @media ${Screen.small} {
    grid-template-columns: 1fr;
    grid-row-gap: ${Layout.smallScreenRowGap}px;
    padding: 0 ${Layout.smallScreenHPad}px;
  }

  @media ${Screen.large} {
    grid-template-columns: ${Layout.largeScreenContentWidth}px;
    grid-row-gap: ${Layout.largeScreenRowGap}px;
  }
`;

export const yearContainer = css`
  display: grid;
  grid-auto-flow: row;
  grid-auto-rows: max-content;

  @media ${Screen.small} {
    grid-auto-rows: max-content;
    grid-template-columns: 1fr;
    justify-content: start;
    justify-items: start;
    grid-row-gap: 2px;
  }

  @media ${Screen.large} {
    grid-auto-rows: max-content;
    grid-row-gap: 3px;
  }
`;

export const post = css`
  display: grid;

  @media ${Screen.small} {
    grid-template-columns: 1fr;
    justify-content: center;
    justify-items: start;
    text-align: left;
  }

  @media ${Screen.large} {
    grid-template-columns: ${Layout.largeScreenLogoWidth}px ${Layout.largeScreenRightColWidth}px;
    grid-template-rows: max-content;
    grid-column-gap: ${Layout.largeScreenColGap}px;
    align-content: center;
    align-items: center;
  }
`;

export const year = css`
  @media ${Screen.small} {
    margin-bottom: 10px;
  }

  @media ${Screen.large} {
    margin-bottom: 0;
  }
`;

const linksHGap = 8;

export const links = css`
  display: grid;

  @media ${Screen.small} {
    grid-template-columns: auto max-content;
    grid-column-gap: ${linksHGap}px;
    align-items: center;
    justify-content: start;
    justify-items: start;
  }

  @media ${Screen.large} {
    grid-template-columns: max-content max-content;
    grid-template-rows: max-content;
    grid-column-gap: ${linksHGap}px;
    align-content: center;
    align-items: center;
  }
`;

const approxCategoryBadgeWidth = 50;

export const postLink = css`
  font-size: 0.9em;
  color: ${Theme.textColor};

  @media ${Screen.small} {
    font-size: 0.8em;
    /* text-overflow: ellipsis requires non-relative width to be set */
    max-width: calc(100vw - ${Layout.smallScreenHPad * 2 + approxCategoryBadgeWidth + linksHGap}px);
  }

  @media ${Screen.large} {
    font-size: 0.9em;
  }

  @media ${Screen.between(Screen.smallMaxWidth + 1, Layout.largeScreenContentWidth + 200)} {
    /* text-overflow: ellipsis requires non-relative width to be set */
    max-width: ${Layout.largeScreenRightColWidth - approxCategoryBadgeWidth - linksHGap}px;
  }
`;
