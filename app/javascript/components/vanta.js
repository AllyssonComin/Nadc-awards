
const vantaJs = () => {
  VANTA.NET({
    el: "#background-home",
    mouseControls: true,
    touchControls: true,
    gyroControls: false,
    minHeight: 200.00,
    minWidth: 200.00,
    scale: 1.00,
    scaleMobile: 1.00,
    backgroundColor: 0x120b22,
    points: 15.00,
    maxDistance: 29.00,
    spacing: 20.00
  })
}

export {vantaJs}
