module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


categoricalGrade : List Float -> List GradeStatus
categoricalGrade list =
    List.map
        (\x ->
            if x < 0.0 then
                Pending

            else if x >= 7 then
                Approved

            else
                Failed
        )
        list


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"

        Delayed ->
            "Esperar"

        Cancelled ->
            "Pedir reembolso"


airportAction : List AirplaneStatus -> List String
airportAction list =
    List.map airplaneScheduleAction list
