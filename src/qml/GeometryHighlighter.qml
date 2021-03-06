import QtQuick 2.11
import org.qfield 1.0

Item {
  id: geometryHighlighter
  property alias geometry: geometryRenderer.geometry
  property int duration: 3000

  GeometryRenderer {
    id: geometryRenderer
  }

  Timer {
    id: timer
    interval: geometryHighlighter.duration
    running: false
    repeat: false
    onTriggered: geometryHighlighter.geometry = null
  }

  onGeometryChanged: {
    timer.restart()
  }
}
