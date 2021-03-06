module Url = Webapi.Url
module Storage = Dom.Storage2

module Dom = {
  include Webapi.Dom

  @val external devicePixelRatio: float = "devicePixelRatio"

  external htmlImageElementFromElement: Dom.element => HtmlImageElement.t = "%identity"
}
