import { Router } from "express";
import fetch from "node-fetch";

const router = Router();
var session;

router.get("/", function (req, res) {
  res.render("index.html", {
    current_page: "Proyecto VEX",
    message: req.flash("info"),
    messagetype: req.flash("type"),
  });
});

router.get("/about", function (req, res) {
  res.render("about.html", {
    current_page: "Conocenos",
    message: req.flash("info"),
    messagetype: req.flash("type"),
  });
});

router.get("/events", function (req, res) {
  fetch("http://localhost:3000/query/events", { method: "GET" })
    .then((res) => res.json())
    .then((json) => {
      res.render("events.html", {
        current_page: "Eventos",
        events: json,
        message: req.flash("info"),
        messagetype: req.flash("type"),
      });
    });
});

router.get("/dashboard", function (req, res) {
  session = req.session;

  console.log(session);

  if (session.userid == "cordi") {
    res.redirect("/dashboard/coordinador");
  } else if (session.userid) {
    res.redirect("/dashboard/jurado");
  } else {
    res.redirect("/dashboard/login");
  }
});

router.get("/dashboard/login", function (req, res) {
  res.render("dashboard/login.html", {
    current_page: "Login",
    message: req.flash("info"),
    messagetype: req.flash("type"),
  });
});

router.get("/dashboard/coordinador", function (req, res) {
  res.render("dashboard/dashboard_view.html", {
    current_page: "Dashboard Coordinador",
    message: req.flash("info"),
    messagetype: req.flash("type"),
  });
});

router.get("/dashboard/coordinador/registro_equipo", function (req, res) {
  fetch("http://localhost:3000/query/events", { method: "GET" })
    .then((res) => res.json())
    .then((json) => {
      res.render("dashboard/registro_equipo.html", {
        current_page: "Dashboard Coordinador",
        events: json,
        message: req.flash("info"),
        messagetype: req.flash("type"),
      });
    });
});

router.get("/dashboard/coordinador/registro_jurado", function (req, res) {
  res.render("dashboard/registro_jurado.html", {
    current_page: "Dashboard Coordinador",
    message: req.flash("info"),
    messagetype: req.flash("type"),
  });
router.get('/dashboard/coordinador/cambio_equipo', function(req, res) {
    const json = []
    res.render('dashboard/cambio_equipo.html', {current_page: "Dashboard Coordinador", events: json, message: req.flash("info"), messagetype: req.flash("type")});
});

router.get("/dashboard/coordinador/registro_jurado", function (req, res) {
  res.render("dashboard/registro_jurado.html", {
    current_page: "Dashboard Coordinador",
    message: req.flash("info"),
    messagetype: req.flash("type"),
  });
});

router.get("/dashboard/coordinador/asignar_jurado", async function (req, res) {
  const response = await fetch("http://localhost:3000/query/judge_event", {
    method: "GET",
  });
  const data = await response.json();

  res.render("dashboard/asignar_jurado.html", {
    current_page: "Dashboard Coordinador",
    data: data,
    message: req.flash("info"),
    messagetype: req.flash("type"),
  });
});

router.get("/dashboard/coordinador/registro_evento", function (req, res) {
  res.render("dashboard/registro_evento.html", {
    current_page: "Dashboard Coordinador",
    message: req.flash("info"),
    messagetype: req.flash("type"),
  });
});

router.get("/dashboard/coordinador/modificar_evento", function (req, res) {
  fetch("http://localhost:3000/query/events", { method: "GET" })
    .then((res) => res.json())
    .then((json) => {
      res.render("dashboard/modificar_evento.html", {
        current_page: "Dashboard Coordinador",
        events: json,
        message: req.flash("info"),
        messagetype: req.flash("type"),
      });
    });
});

router.get("/dashboard/jurado", function (req, res) {
  res.render("dashboard/dashboard_view.html", {
    current_page: "Dashboard Jurado",
    message: req.flash("info"),
    messagetype: req.flash("type"),
  });
});

router.get("/dashboard/jurado/evaluar_equipo", function (req, res) {
  session = req.session;
  console.log(session);
  fetch(
    "http://localhost:3000/query/get_jury_cat_teams?userid=" + session.userid,
    { method: "GET" }
  )
    .then((res) => res.json())
    .then((result) => {
      const conv = function (text) {
        return text.replaceAll(" ", "-");
      };

      const inv_conv = function (text) {
        return text.replaceAll("-", " ");
      };

      var dict = [];

      for (var i = 0; i < result.length; i++) {
        var obj = result[i];

        if (dict[obj.nombre_evento]) {
          dict[obj.nombre_evento].push(obj.cod_proyecto);
        } else {
          dict[obj.nombre_evento] = [obj.cod_proyecto];
        }
      }

      var events = [];

      for (var i = 0; i < result.length; i++) {
        var obj = result[i];
        result[i].nombre_evento = conv(result[i].nombre_evento);
        obj.nombre_evento = conv(obj.nombre_evento);

        if (!events.includes(obj.nombre_evento)) {
          events.push(obj.nombre_evento);
        }
      }

      var jton = JSON.stringify(dict);

      console.log(dict);
      console.log(events);
      console.log(result);
      res.render("dashboard/evaluar_equipo.html", {
        current_page: "Dashboard Jurado",
        events: events,
        data: result,
        conv: inv_conv,
        message: req.flash("info"),
        messagetype: req.flash("type"),
      });
    });
});

router.get("/dashboard/publico", function (req, res) {
  res.render("dashboard/dashboard_view.html", {
    current_page: "Dashboard Publico",
    message: req.flash("info"),
    messagetype: req.flash("type"),
  });
});

router.get("/dashboard/publico/ver_resultados", async function (req, res) {
  const events_response = await fetch("http://localhost:3000/query/events", {
    method: "GET",
  });
  const events_data = await events_response.json();

  res.render("dashboard/ver_resultados.html", {
    current_page: "Dashboard Publico",
    events: events_data,
    message: req.flash("info"),
    messagetype: req.flash("type"),
  });
});

router.post("/dashboard/publico/ver_resultados", async function (req, res) {
  const events_response = await fetch("http://localhost:3000/query/events", {
    method: "GET",
  });
  const events_data = await events_response.json();

  const evals_response = await fetch(
    "http://localhost:3000/query/evaluations?evento=" +
      req.body.evento +
      "&categoria_evento=" +
      req.body.categoria_evento,
    { method: "GET" }
  );
  const evals_data = await evals_response.json();

  console.log(evals_data);

  res.render("dashboard/ver_resultados.html", {
    current_page: "Dashboard Publico",
    events: events_data,
    evaluations: evals_data,
    message: req.flash("info"),
    messagetype: req.flash("type"),
  });
});

router.get("/dashboard/logout", function (req, res) {
  req.flash("info", "Sesión cerrada");
  req.flash("type", "info");
  delete req.session.userid;
  res.redirect("/");
});

export default router;
