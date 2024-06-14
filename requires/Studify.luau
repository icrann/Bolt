local Studify = {}

--Centimeters

function Studify.Centimeters(studs)
	return studs * 28
end

function Studify.Centimeters_(cm)
	return cm / 28
end


--Meters

function Studify.Meters(studs)
	return studs * .28
end

function Studify.Meters_(m)
	return m / .28
end


--Kilometers

function Studify.Kilometers(studs)
	return studs * .00028
end

function Studify.Kilometers_(km)
	return km / .00028
end


--Kilometers per Hour

function Studify.KilometersPerHour(studs)
	return (studs * .00028) * 3600
end

function Studify.KilometersPerHour_(kmh)
	return (kmh / .00028) / 3600
end


--Inches

function Studify.Inches(studs)
	return studs * (28 / 2.54)
end

function Studify.Inches_(inches)
	return inches / (28 * 2.54)
end


--Miles

function Studify.Miles(studs)
	return studs * (.00028 / 1.609344)
end

function Studify.Miles_(miles)
	return miles / (.00028 * 1.609344)
end


--Miles Per Hour

function Studify.MilesPerHour(studs)
	return studs * (.00028 / 1.609344) * 3600
end

function Studify.MilesPerHour_(mph)
	return mph / (.00028 * 1.609344) / 3600
end

return Studify
