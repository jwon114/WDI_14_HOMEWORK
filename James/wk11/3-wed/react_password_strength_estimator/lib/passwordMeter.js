function getStrength(password) {
  let pointsTotal = 0

  if (/[a-z]/.test(password)) { pointsTotal++ }
  if (/[A-Z]/.test(password)) { pointsTotal++ }
  if (password.length >= 8) { pointsTotal++ }
  if (/[0-9]/.test(password)) { pointsTotal++ }
  if (/[^a-zA-Z0-9]/.test(password)) { pointsTotal++ }

  switch(pointsTotal) {
    case 1:
      return 'weak'
    case 2:
      return 'less weak'
    case 3:
      return 'moderate'
    case 4:
      return 'more moderate'
    case 5:
      return 'strong'
    default:
      return ''
  }
}

module.exports = getStrength