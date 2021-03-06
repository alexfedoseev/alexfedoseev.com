type t
type ui
type photo
type options
type thumbBounds
type viewportSize
type shareButton

module type Photo = {
  type t
}

module Make = (Photo: Photo) => {
  @module("photoswipe") @new
  external make: (
    ~container: Dom.element,
    ~ui: ui,
    ~items: array<Photo.t>,
    ~options: options,
  ) => t = "default"

  @obj
  external makeOptions: (
    ~index: int=?,
    ~getThumbBoundsFn: int => option<thumbBounds>=?,
    ~showHideOpacity: bool=?,
    ~showAnimationDuration: int=?,
    ~hideAnimationDuration: int=?,
    ~bgOpacity: float=?,
    ~spacing: float=?,
    ~allowPanToNext: bool=?,
    ~maxSpreadZoom: float=?,
    ~getDoubleTapZoom: (bool, photo) => float=?,
    ~loop: bool=?,
    ~pinchToClose: bool=?,
    ~closeOnScroll: bool=?,
    ~closeOnVerticalDrag: bool=?,
    ~mouseUsed: bool=?,
    ~escKey: bool=?,
    ~arrowKeys: bool=?,
    ~history: bool=?,
    ~galleryUID: int=?,
    ~galleryPIDs: bool=?,
    ~errorMsg: string=?,
    ~preload: (int, int)=?,
    ~mainClass: string=?,
    ~getNumItemsFn: unit => int=?,
    ~focus: bool=?,
    ~isClickableElement: Dom.element => bool=?,
    ~modal: bool=?,
    ~shareButtons: array<shareButton>=?,
    unit,
  ) => options = ""

  @send external init: t => unit = "init"
  @send external invalidateCurrItems: t => unit = "init"

  @send
  external listen: (
    t,
    @string
    [
      | #beforeResize(unit => unit)
      | #gettingData((int, Photo.t) => unit)
      | #destroy(unit => unit)
    ],
  ) => unit = "listen"
}

@module("photoswipe/dist/photoswipe-ui-default.min.js")
external ui: ui = "default"

module Css = {
  @module("photoswipe/dist/photoswipe.css") external core: unit = "core"
  @module("photoswipe/dist/default-skin/default-skin.css")
  external ui: unit = "ui"
}

module Photo = {
  @obj
  external make: (~src: string, ~msrc: string, ~w: int, ~h: int, ~pid: string, unit) => photo = ""

  @get external width: photo => float = "w"
  @get external height: photo => float = "h"

  @set external setSrc: (photo, string) => unit = "src"
}

module Url = {
  let gid = "gid"
  let pid = "pid"
}

module ViewportSize = {
  type dimensions

  @get external dimensions: t => dimensions = "viewportSize"

  @get external x: dimensions => float = "x"
  @get external y: dimensions => float = "y"
}

module ThumbBounds = {
  @obj external make: (~x: float, ~y: float, ~w: float) => thumbBounds = ""
}

module ShareButton = {
  @obj
  external make: (
    ~id: string,
    ~label: string,
    ~url: string,
    ~download: bool=?,
    unit,
  ) => shareButton = ""
}

module Dom = {
  @react.component
  let make = React.forwardRef(theRef =>
    <div
      ref=?{theRef->Js.Nullable.toOption->Option.map(ReactDOM.Ref.domRef)}
      className="pswp"
      tabIndex={-1}
      role="dialog"
      ariaHidden=true>
      <div className="pswp__bg" />
      <div className="pswp__scroll-wrap">
        <div className="pswp__container">
          <div className="pswp__item" />
          <div className="pswp__item" />
          <div className="pswp__item" />
        </div>
        <div className="pswp__ui pswp__ui--hidden">
          <div className="pswp__top-bar">
            <div className="pswp__counter" />
            <button className="pswp__button pswp__button--close" title="Close (Esc)" />
            <button className="pswp__button pswp__button--share" title="Share" />
            <button className="pswp__button pswp__button--fs" title="Toggle fullscreen" />
            <button className="pswp__button pswp__button--zoom" title="Zoom in/out" />
            <div className="pswp__preloader">
              <div className="pswp__preloader__icn">
                <div className="pswp__preloader__cut">
                  <div className="pswp__preloader__donut" />
                </div>
              </div>
            </div>
          </div>
          <div className="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
            <div className="pswp__share-tooltip" />
          </div>
          <button
            className="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"
          />
          <button className="pswp__button pswp__button--arrow--right" title="Next (arrow right)" />
          <div className="pswp__caption"> <div className="pswp__caption__center" /> </div>
        </div>
      </div>
    </div>
  )
}

let pidFromUrl = () =>
  switch {
    open Web.Dom
    window->Window.location->Location.hash->Js.String2.substringToEnd(~from=1)
  } {
  | "" => None
  | _ as hash =>
    switch {
      open Web.Url.URLSearchParams
      hash->make->get(Url.pid, _)
    } {
    | Some(pid) => Some(Ok(pid))
    | None => Some(Error())
    }
  }
