package controllers

import play.api.mvc._
import play.api.routing.sird._
import play.core.server.{ AkkaHttpServer, _ }

object Main {

  def main(args: Array[String]): Unit = {
    val server = AkkaHttpServer.fromRouterWithComponents(ServerConfig(
      port = Some(19000),
      address = "127.0.0.1"
    )) { components =>
      import Results._
      import components.{ defaultActionBuilder => Action }
    {
      case GET(p"/hello/$to") => Action {
        Ok(s"Hello $to")
      }
    }
    }
  }

}
