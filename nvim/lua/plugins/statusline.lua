local function wordcount()
	return tostring(vim.fn.wordcount().words) .. " words"
end

local art = {
	[[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢦⡀⠀⠀⠀⢀⣀⣀⣀⣟⣆⠈⢧⡀⣇⠸⡇⠀⠹⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠢⣄⠀⠀⠀⠀⠀⠀⠬⠀⠀⠉⠻⠄⠁⠀⠀⠈⠳⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢷⣒⠒⠒⠒⠒⠚⠳⠶⠤⠐⠒⡂⠀⠀⢀⣀⡤⠖⠒⠀⠀⠀⠀⠀⠙⠶⠤⢄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠦⣄⠀⠀⠈⠉⠲⠶⠶⠶⠒⠀⠀⢠⡎⠀⠀⠀⠉⠀⠀⠀⢠⡇⠀⠀⠀⠀⠀⠀⠀⠀⠙⠷⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⢙⣲⠦⢄⣠⡖⢂⡄⠀⢠⡏⠀⡀⠀⠀⠀⠀⠀⢠⣮⠇⠀⢰⠀⠈⢳⡈⠓⢦⡀⠀⠈⢣⡉⠓⠶⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠉⢀⣴⠟⠋⠀⡼⠀⣠⣿⠃⢠⡇⠀⢀⠀⠀⢀⣾⠏⠀⢠⣏⡆⠀⠀⠙⢦⠀⠙⢦⠀⠀⢹⡀⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣴⣯⡥⢤⡴⠋⠁⠀⠀⡼⠁⡴⢻⡎⣠⢻⠀⣠⣾⠇⢀⠞⡇⠀⢀⣟⣼⠇⠀⠀⠀⠀⢱⠀⠀⡆⠀⢠⢧⠘⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠞⠁⣠⠄⢠⢾⣡⢞⣠⣾⠛⠁⢸⣴⢫⠟⣠⡏⢰⠁⢠⣯⣾⠏⠀⠀⠀⠀⠀⢈⡄⠀⡿⡄⠀⣏⢧⣳⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣏⣠⣼⡏⢠⣯⣿⠋⡞⣡⣿⣗⠲⣾⢀⡞⠈⠙⢠⡇⣰⣿⠋⣠⠔⣉⣓⢦⡀⠀⠀⣧⠀⡇⠈⢦⠘⢦⠉⣇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⠾⠛⢉⣦⣾⢳⠟⣿⣀⣸⣿⣿⣿⣏⠙⠋⠉⠉⡉⠉⣹⡶⣿⡷⠋⠉⣞⣷⣿⡇⢹⡆⠀⢻⠀⢹⣄⠈⣗⠲⠽⠊⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠏⢹⣿⣾⣿⠋⢻⣿⣿⠟⡩⠄⠀⠀⠀⠁⠠⣿⣽⠟⠁⠀⠀⣽⡿⠆⠀⡼⢳⡀⠘⣇⠈⣯⠓⠚⠦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣞⡿⠟⠉⠀⠈⠛⠉⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠯⠇⠀⡴⠁⢀⡟⠀⠸⡄⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣸⡏⢹⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣠⣾⡁⠀⠘⠀⠀⢠⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣰⠏⠀⡸⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠿⠿⠀⠀⢳⡴⣤⡀⠀⢸⠙⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⡴⢋⣾⣿⡇⢀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢼⣇⡤⣤⠤⠖⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡄⠀⠀⠀⠀⠻⣿⡿⣦⢸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⡼⢠⠟⠋⢀⡇⡼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢄⠙⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡤⠄⣠⠄⠀⠀⠀⠀⠈⠇⢸⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣼⣱⠏⠀⢠⠞⣸⠃⠀⠀⢀⡤⠤⣄⠀⠀⠀⠀⠀⠀⠸⡆⠀⠀⠀⠀⠀⠀⠀⢀⣠⠤⠖⠋⠁⠀⣴⠟⠁⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣸⡟⠁⠀⣰⣿⣲⡏⠀⢀⡴⠉⠀⢀⡽⠀⠀⠀⠀⠀⠀⠀⣗⠀⠀⠀⢀⡠⠖⠊⠁⠀⠀⠀⠀⣲⡿⠃⠀⠀⣀⣤⣶⣿⣿⣿⡿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣸⠁⠀⣀⡾⠻⠄⣿⠁⢀⠞⠁⠀⣠⠎⠀⠀⠀⠀⠀⠀⠀⠠⣿⡀⢀⣀⣀⣠⣤⡀⠀⠀⠀⠀⠀⢈⣁⣴⣾⣿⣿⣿⡿⠿⣿⣿⣾⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⡇⡴⠚⠉⠁⠀⡠⠋⠳⣾⣄⠀⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠁⠀⠀⠈⢷⡀⢀⣠⣴⣾⣿⣿⡿⠋⠉⠉⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠟⠁⠀⣤⠖⣻⠃⠀⠀⠈⠉⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⣿⣿⣷⣶⡀⠀⠀⠀⠀⢠⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣾⠃⡴⠃⠀⠀⠀⠀⠀⣠⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢀⣤⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠉⢁⣴⢃⠀⡄⠀⠀⢀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠹⢿⣿⣿⣿⣿⣿⣷⣤⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠉⠀⠸⣤⠁⠀⣠⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⢈⣿⣿⣿⣿⣿⣿⣿⣦⣄⠀⠀⠀⠀
]],

	[[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣤⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⡟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢀⣠⣍⣭⣿⣿⣫⣿⣿⣿⣿⣿⣿⣿⡋⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠸⠿⢿⣿⣿⣿⣿⣿⣿⣿⡿⠛⢿⣿⣿⠛⠋⠙⠷⣤⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠈⣿⣿⣿⣿⢡⣿⡿⡇⢸⠸⣿⣿⡆⠀⠀⠀⠈⠙⢷⣄⡀⠀⠀⠀
⠀⠀⠀⢻⣿⣿⣿⣿⣿⡿⡴⠂⢰⣿⣿⣷⠂⠀⠀⠀⠀⠀⠈⠛⢦⣄⠀
⠀⠀⠀⠀⠉⢱⣿⣿⠃⠁⠹⡄⠀⢸⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠓
⠀⠀⠀⠀⠀⣿⣿⠃⠀⠀⠀⠹⡄⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣿⡏⠀⠀⠀⠀⠀⠀⠈⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢸⣿⣧⡀⠀⠀⠀⠀⠀⠀⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⠀⠀⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
]],
	[[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⣀⣀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣶⡿⣡⣴⣶⣿⠛⢫⣯⣤⢟⠀⠀⠀⣀⣤⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⡄⠀⣠⣶⠟⠺⢟⡕⠋⣿⣯⣤⠌⠉⣩⢿⡝⠛⠯⣽⣁⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⡾⣧⡼⠛⠁⣿⢸⡟⠀⣼⢡⡏⠀⠀⣼⢣⣼⠁⠀⠀⠀⠉⠓⣶⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣼⢃⢿⢧⡀⠀⠻⣾⣧⡠⠿⠟⠙⠉⠋⠻⣯⢾⣤⡴⢶⣶⡒⠀⠙⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢀⣀⠀⢰⡏⠘⣿⢇⣹⠟⠉⣹⠏⠀⠀⠀⠀⠀⠀⠀⠈⠃⠀⠉⠛⢶⣕⢦⣄⠀⢿⡳⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠸⣿⢷⣿⣷⠶⣾⠋⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠉⠣⣌⣳⠀⠙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠈⠀⠁⣟⡛⡿⠀⠀⠀⠀⠀⠀⢠⡄⠀⠀⠀⠀⠀⠀⠀⢻⡀⠀⠀⠀⣸⠛⠯⠷⠂⠚⣯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢿⡓⢶⣍⣸⠃⠀⣠⣄⡀⠀⠀⠀⡿⣶⢀⣀⡀⠀⠀⠀⣸⣷⠦⣤⣠⣧⠒⡓⢦⠀⠰⣾⠷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣀⣧⣀⣤⡽⠠⠞⢁⣠⡯⠽⠷⣶⣾⠋⠈⠻⡝⠶⣾⣿⣛⣿⣄⣀⠉⢻⣦⡙⠻⡗⠰⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠙⢿⡛⠻⡇⠀⣞⡽⠞⣿⣍⣽⠟⠀⣷⠀⠀⠀⠲⠿⠳⠾⢿⠶⠗⠀⠀⣿⠸⣷⡿⢦⣼⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢸⣇⣴⣻⠀⠉⠛⠃⠉⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⢸⡄⠀⠀⠀⣿⡞⣙⣿⠃⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠘⣿⣽⢿⡆⠀⠀⠀⠀⠀⠀⠀⠠⣏⢀⠀⠀⠀⠀⠀⠀⠸⠃⠀⠀⢰⣿⢱⡟⢹⣇⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣿⣝⣦⣿⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠉⠀⠀⠀⠀⠀⠀⣀⠀⠀⣸⣟⣿⣷⣾⣿⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠘⣮⢿⣿⠀⠀⠀⠀⠀⣀⣀⣀⣤⠴⠶⠶⠶⠶⠶⠖⠋⠁⠀⠀⣻⣿⣿⣿⡟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠈⢿⣿⣇⠀⠀⠀⠙⠋⠀⣀⣀⣤⣤⣄⣀⡤⠀⠀⠀⠀⠀⢠⣿⡿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠻⢿⣆⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⡿⡽⣏⢿⡟⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠈⠻⣷⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣹⡿⡇⣿⢸⡗⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠹⣷⣦⣤⣤⣤⣤⣤⣤⣶⣶⣶⢻⣯⢧⡿⣴⢧⣿⢾⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⢿⣻⣿⣿⡟⣿⣧⣏⣾⣾⣿⣷⣫⢿⣹⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡏⠻⠿⣾⣾⢋⡿⣼⣽⡿⣻⣿⣿⡽⣵⣃⠀⠀⢻⣄⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡇⠀⠀⠀⠈⠺⠃⡷⣻⢣⣿⣟⣿⣿⡿⡁⠀⠀⣠⣿⣿⣿⣷⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡇⠀⠀⠀⠀⠀⠈⠃⢇⡿⢯⡾⠻⠏⠘⣡⣴⣾⣿⣿⣿⣿⣿⣿⣿⣦⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⠁⠀⠀⠀⠀⠀⠀⠀⠈⠁⠈⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠇⠀⠀⠀⠀⠀⠀⠀⣠⠖⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀
]],
	[[
⠀⠀⠙⠻⣿⣧⡈⠻⣷⡀⠀⠀⠙⣿⡄⠀⠘⣿⣇⠀⠀⠀⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⢀⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣄⡀⠀⠀⠈⠻⣿⣦⡈⢷⡀⠀⠀⠘⣿⡄⠀⠹⣿⡄⠀⠀⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⢀⣾⣥⣀⠀⠈⠙⠻⣇⠀⠀⠀⠀⢀⠞⠀⠀⣀⣀⠀⣀⠴⠊
⣿⣿⣶⣄⡀⠀⠀⠙⢷⣄⠡⠀⠀⠀⠘⣿⡄⠀⢻⣷⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⣼⣿⣿⣿⣿⣶⡄⠀⠈⢳⣄⣠⣶⢋⣶⡾⢋⣠⠔⢋⠀⠀⠀
⣿⣿⣿⣿⣿⣦⣄⠀⠀⠙⢷⣄⠀⠀⠀⠘⣿⡀⠘⣿⡇⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣦⣶⣶⣿⣿⠃⣼⣿⠷⠋⠀⡴⠁⠀⣀⣤
⣤⣴⣶⣶⣶⣤⣭⣁⡢⠀⠀⠙⢷⡀⠀⠀⠘⣷⡀⢻⣷⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠉⠹⠁⡼⠛⠁⢀⡴⢋⣠⣴⣿⣿⣿
⠛⠛⠛⠛⠛⠿⠿⠿⣿⣶⣤⡀⠀⠙⠦⡀⠀⠘⣷⠈⢿⡇⠀⢿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⣌⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢀⠞⢀⣤⡾⠋⢀⣾⣿⣿⡿⠛⠁
⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⢿⣷⣄⠀⠈⢦⠀⠘⣧⠘⣿⡰⡘⣿⣿⣿⣿⣿⣿⡿⠀⢀⣸⡿⣷⣽⣿⣿⣿⣿⣿⣿⣿⣿⠁⢠⣮⣾⣿⠟⢀⣴⣿⣿⣿⠏⠀⠀⠀
⣤⣤⣄⠀⠈⠛⠿⢿⣿⣿⣿⠘⣿⣿⣷⣄⠀⠑⠀⠘⣧⡸⣧⠱⡸⣿⣿⣿⣿⣿⠁⡦⣸⣿⣧⡈⢿⣾⣿⣿⣿⣿⣿⡿⠏⣰⣿⣿⠟⢁⣴⣿⣿⣿⠟⠁⣀⣤⣶⣿
⣛⣛⣛⡓⠶⣿⣿⣿⣿⣿⣿⡆⢿⣿⣿⣿⣷⣄⠀⠀⠈⢷⣿⣇⠳⣽⣿⣿⣿⡇⢰⠇⠘⢿⣿⣿⣿⣿⣿⣿⡛⢓⣶⢀⣼⡿⠋⢁⣴⣿⣿⡿⢋⣠⣴⣿⣿⣿⣿⠿
⣿⣿⣿⣿⣷⣬⣍⣭⣭⣿⣛⣿⠀⢿⣿⣿⣿⣿⣷⣄⠀⠀⠻⣿⣆⠙⢿⣿⣿⣿⡏⠀⣦⣴⣿⣿⣿⠃⣿⣿⣿⠛⢡⡾⡫⢂⣴⣿⣿⡟⢁⣴⣿⣿⣿⣿⠿⠋⠁⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⢿⣿⣿⣿⣿⣿⣿⣦⡀⠈⠻⣧⢠⣹⣿⣿⣇⣼⣿⡯⡁⠈⢍⠀⠋⢉⠇⣰⣿⣾⣷⣿⣿⠟⢉⣴⣿⣿⡿⠟⠋⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣶⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡈⠳⣿⣿⣿⣿⣿⠟⠳⠤⠀⠘⠂⠠⣢⣾⣿⣿⡿⠟⣋⣤⣾⣿⣿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⡿⠿⠟⢻⠅⢾⣿⡇⠀⣿⣿⣿⣿⡿⢛⣩⣭⠭⠛⠻⢶⣬⣙⠿⣿⣿⣦⣤⣀⣠⣴⣵⣿⣿⣿⣯⣵⣾⣿⣿⣿⣿⣿⣇⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠛⠉⠉⠉⠀⠀⠀⠀⠀⢸⠀⢀⢿⣿⣆⢸⣿⣿⡟⣴⣿⣿⣿⣀⣠⣴⣡⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢰⠘⡏⣙⠉⠘⣿⣿⡇⣿⠛⣿⣿⣿⣿⣿⡃⠀⠀⣎⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠉⢻⣿⠻⢿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡆⠈⠁⢰⡿⠾⠏⠿⣿⣿⣄⠀⠁⣼⠿⠿⣿⣿⣷⣾⣿⡌⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⣴⣦⡀⠀⠈⠙⠳⠄⠈⢻⣿⣿⣧⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⢠⢻⡇⣀⣃⠀⣨⣽⣿⣷⣄⠁⠀⠀⠚⠛⣿⣿⡿⠁⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢀⢸⠏⡾⠛⠻⣿⣿⣿⣿⣿⣿⣷⣦⣄⣀⠒⠛⣋⣠⣾⣿⣿⣿⣿⡿⠟⠛⠿⣿⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠈⣿⣿⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⡴⣿⣾⡀⣠⠁⢰⣾⣿⣿⣿⢫⣭⣭⡙⣿⣿⣿⣿⣿⣿⡿⠿⠿⠛⠋⠉⠀⠀⢀⣠⣽⣿⣿⣿⣿⣿⣿⣷⣦⣄⡀⠀⠀⠀⣽⣿⣧⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⡴⡎⢄⠘⣿⣿⣿⡀⣿⡛⢿⡿⢃⣿⣿⣿⣿⣹⣿⣿⣿⣿⣿⣶⣶⣶⡶⠾⠿⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠋⠉⠀⠀⠀⠉⠹⣿⣷⠀⠀⠀
⠀⠀⠀⠀⠀⡜⣠⣧⠀⠀⠘⣷⢿⡿⣿⣿⣮⢡⣮⣍⠉⠛⠟⠿⠿⠟⣛⣉⡻⠷⡶⠶⠖⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠙⣿⡇⠀⠀
⠀⠀⠀⠀⡘⢸⣿⣿⠀⠀⠀⣼⣿⣿⣮⣿⣿⣧⣿⣿⣿⣿⠀⠀⠀⢺⣿⣿⣇⠠⡤⠶⣚⠁⡴⠛⢛⠛⠻⠟⠉⠀⠈⠻⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⢰⠸⣷⣄⠀
⠀⠀⠀⢠⠃⣿⣿⣿⠀⠀⠀⢹⠛⠛⢿⣿⣿⣿⣿⣿⣯⣅⣴⣿⣷⣿⣿⣿⠿⠔⠚⠉⠁⣈⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣿⣿⣿⣦⣄⠀⠀⣠⠎⣠⠉⠉⠉
]],
	[[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢀⡄⣠⢄⣴⣠⣶⣠⣾⣤⣀⣴⣠⢄⣠⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣰⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣄⣀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣷⣿⣿⣿⣿⠏⣿⣿⣿⡿⢏⣽⢋⡟⣹⣿⣿⢿⢿⣿⣿⣿⣿⣿⣷⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠙⣿⡟⣿⠘⣿⣩⣿⣠⣾⣿⣿⣿⣿⣿⣿⣶⣿⡧⠞⣿⣿⣿⣿⣿⣿⣶⠆⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣷⣼⣿⣾⣷⣿⣿⡿⣿⡏⢻⣏⠁⠻⣯⠙⢿⣿⣿⣿⣯⣉⣻⣿⣿⣿⣿⣿⣏⡀⠀⠀⠀⠀⠀
⣀⣠⣀⡀⠀⠀⠀⠀⠀⠀⠀⣰⢿⣿⣿⣿⢿⣿⢿⡿⠉⣿⠀⢻⣇⠀⠙⢆⠀⢻⡄⠘⢿⣿⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⡷⠂⠀⠀⠀⠀
⡽⣿⠹⡉⠓⢦⠀⠀⠀⠀⠀⠃⣾⢿⢿⡏⢸⡇⠸⡇⠀⠙⢆⣀⣽⡶⠶⠾⢷⣾⡧⠀⠈⠻⣿⣿⣟⣻⣿⣿⣿⣿⣿⣿⣷⡃⠀⠀⠀⠀
⡖⣿⣇⢣⠀⠘⡄⠀⠀⠀⠀⠀⣯⡼⠈⢇⠈⠻⣤⣽⣦⡶⠟⢋⣁⣀⣀⣀⣠⠞⠀⠀⠀⠀⢿⣿⣯⢷⣾⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀
⠤⠉⣿⡾⢦⣤⡇⠀⠀⠀⠀⠀⠸⣿⠒⠚⢿⠀⠈⠙⠿⣶⣿⣿⠿⠿⠿⠭⠛⠀⠀⠀⠀⠀⢸⣿⣿⣿⢿⣟⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀
⣦⣼⢷⣾⠯⠭⣧⠀⠀⠀⠀⠀⠀⣿⡷⣾⠟⠑⠂⠀⠀⠀⠈⠉⠀⢠⣤⣴⣦⣤⣤⡀⠀⠀⢸⣿⡟⣡⣾⣿⣿⣿⣿⣿⣿⡋⠀⠀⠀⠀
⠈⢻⡿⠁⣀⠤⠼⣆⠀⠀⠀⠀⠀⡎⢰⣷⣤⣀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣦⠤⠄⠀⠀⠙⠿⢸⡟⠻⣏⡻⣿⣿⣿⡏⠀⠀⠀⠀⠀
⠀⣸⢻⡏⠀⣀⡤⠼⡄⠀⠀⠀⠀⡇⠈⢿⣿⡿⠟⠀⠀⠀⠀⠀⠀⠸⢿⣿⣿⠛⠓⠒⠀⠀⠀⠀⣺⡗⠚⠋⣡⣿⣿⣿⠆⠀⠀⠀⠀⠀
⠀⡏⢸⢳⣎⡴⠂⠉⢹⡄⠀⠀⠀⢣⠀⣤⠽⠦⠤⣀⠀⠀⠀⠀⠀⠀⠘⣿⣟⠀⠀⠀⠀⠀⠀⢠⡉⠁⣠⣾⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀
⠀⣧⠋⣸⢻⣀⠔⠉⠁⠹⡄⠀⠀⢸⠀⢯⠶⠶⣦⣄⠙⠢⠀⠀⠀⠀⠀⠈⣿⠷⠀⠀⠀⠀⠀⡞⢓⡞⠉⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀
⣶⠃⢠⡇⠀⢷⠖⡽⠋⠉⠹⡄⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡾⠁⢰⡇⠀⢸⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀
⣽⠀⢸⡇⠀⠈⢟⣇⣀⣠⠤⠽⡄⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⡾⣿⠁⠀⢈⡇⠀⠘⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢸⠀⢸⡄⠀⠀⠘⣿⣯⠀⠀⠀⠙⣄⣧⣤⣤⣴⣦⣤⣴⣤⣤⣠⣤⣴⣶⣿⣿⣿⠟⠉⢠⠋⠀⠀⢼⡇⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⡇⣾⡇⠀⠀⠀⠸⡽⣷⣴⠒⠒⠛⣏⠙⠛⠿⣿⣿⣿⣿⣿⣿⣿⢿⣿⠟⠋⠀⠀⢀⣽⠃⠀⠀⠘⡇⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠸⣧⠇⠀⠀⠀⠀⠹⣿⣧⡠⠔⠒⠚⢧⠀⠀⠈⣿⣻⠛⣿⣿⡷⠛⠁⠀⠀⠀⢀⣼⡏⠀⠀⠀⠈⢿⠀⠀⠘⡆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠹⡄⠀⠀⠀⠀⠀⠹⡛⣦⡀⢀⣀⠬⢧⡀⠀⢸⣿⠖⠛⠁⠀⠀⠀⠀⠀⠀⠘⢻⠃⠀⠀⠀⠀⢸⡀⠀⠀⢣⣀⠤⠖⠒⠒⠒⠢⢤
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣸⡗⠉⠀⠀⢀⣱⡄⠈⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⠀⠀⠀⠀⠀⣸⡧⠴⠚⠉⠀⣀⣀⡄⠀⠀⢀⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢏⢛⣶⠖⢊⣉⣀⠽⠦⣽⣷⡀⠀⠀⠀⠀⠀⠀⢀⣿⠋⠀⣠⠴⠚⠉⠀⣀⣠⣴⣾⣿⣿⣿⣷⣷⣶⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣾⡿⠞⠉⠓⠲⣶⣿⣿⣿⢧⠀⠀⠀⠀⠀⠀⢀⡿⠖⠋⠁⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁
⠀⠀⠀⠀⠀⠀⢀⡤⢺⣿⣿⣟⣫⣴⣶⣤⣤⣀⣀⣙⣿⣿⣬⣤⣤⠤⣤⠴⠚⢉⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠀⣀⣠⣴⣾
]],
	[[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣧⠀⠀⠀⠀⠀⠀⣠⣾⠟⣿⡟⠀⠀⠀⠀⠀⠀⣠⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⣸⣿⠹⣿⡄⠀⠀⠀⢀⣼⡟⠁⠀⢾⡇⠀⠀⠀⣀⣴⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣇⠀⠀⢀⣿⡇⠀⢻⣿⡀⠀⢀⣿⡟⠀⠀⠀⣿⡇⠀⢀⣼⡿⢿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣆⠀⣸⣿⠀⠀⠀⠻⣷⣤⣾⠏⠀⠀⠀⠀⣿⣧⣶⡿⠋⠀⣼⡏⠀⠀⠀⠀⠀⠀⣠⡄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣶⣿⡏⠀⠀⠀⠀⠙⠿⠋⠀⠀⠀⠀⠀⠸⠟⠁⠀⠀⢀⣿⠃⠀⢀⣀⣤⣾⣿⡿⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡆⠙⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣶⡶⠟⠋⠉⣼⡟⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢾⣶⣶⣶⣶⣶⣶⣤⣾⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⢠⣾⠏⢀⣀⣠⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢷⣦⡀⠀⠀⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⠟⠋⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣬⣿⣿⣯⣀⣀⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣶⣶⣶⣶⣿⡿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⣩⣿⡿⠏⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⢿⣷⣤⣤⣤⣤⣶⣶⠾⠿⠿⢿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣤⣤⣤⣀⡀⠀⠀⠀⣠⣤⣶⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢹⡟⠉⢡⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣋⠉⠈⠉⠛⠻⠿⣿⣷⣶⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⢀⣠⣤⣭⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⣀⡀⠀⠀⠈⣿⡏⠙⠛⠗⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⢠⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⢠⣿⣷⡘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡍⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀ ⠀⣴⣶⣄⠀⠀⠀⠀⠀⢀⡿⠀⣿⡿⣷⣿⣿⣿⡿⠿⠟⠛⠛⠿⠿⣷⣤⣤⣤⣤⣭⣾⣿⠿⠟⠻⣿⡟⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣴⣶⣤⡀⠀⣿⠉⣿⡆⠀⠀⠀⠀⠀⠈⣿⠀⢸⡇⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠉⠁⠀⠀⠀⠀⠋⢠⣿⠀⠀ ⢀⣴⣿⣷⠀⠀⠀⣀⡀⠀
⠀⣿⡇⠹⣿⣤⣿⡄⢸⣷⠀⠀⠀⠀⠀⠀⠹⢧⣼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣰⡿⠃⠀⠀  ⢸⡟⠀⣿⡆⣠⣾⢿⣿⡆
⠀⠘⣿⣄⠈⢿⣿⡇⠘⣿⡄⠀⠀⠀⠀⠀⠀⠈⣿⡆⠀⠀⠀⠀⠐⢾⣿⡟⠛⠛⠛⠳⣶⠀⠀⠀⠀⠀⠀⢀⣾⡟⠋⠀⠀⠀⠀⣼⡇⠀⣿⣷⡟⠁⣼⡟⠀
⠀⠀⠈⢿⣦⡀⠙⠃⠀⣹⣿⣷⣦⡀⠀⠀⠀⠀⠹⣿⣄⠀⠀⠀⠀⠸⣏⠀⠀⠀⠀⣼⠏⠀⠀⠀⠀⢀⣴⡿⠋⠀⠀⠀⠀⠀⢀⣿⡇⠀⣿⠏⢀⣾⠟⠀⠀
⠀⠀⠀⠘⣿⡇⠀⢠⣾⠋⠁⠀⠙⣿⡆⠀⠀⠀⠀⠘⢻⣷⣤⠀⠀⠀⢻⣦⠀⢠⣾⠋⠀⠀⠀⠀⣴⣿⠋⠀⠀⠀⠀⠀⠀⣴⣾⣿⣷⣦⠀⠀⢻⣿⠀⠀⠀
⠀⠀⠀⠀⣿⡇⠀⠘⢿⣶⣶⡖⢀⣿⠇⠀⠀⠀⠀⠀⠀⠙⠻⢷⣦⣄⣀⡙⠛⠛⠁⠀⣀⣠⣶⡿⠛⠁⠀⠀⠀⠀⠀⠀⢸⣿⠉⠉⢉⣿⡇⠀⠘⣿⡆⠀⠀
⠀⠀⠀⠀⢻⣷⡀⠀⠀⠀⢿⣧⡾⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠛⠿⠿⠿⠟⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣷⡀⠘⣿⡟⠀⠀⣰⣿⠁⠀⠀
⠀⠀⠀⠀⠀⠙⠻⠿⠿⠿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣶⣼⣤⣤⣾⠟⠁⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠀⠀⠀⠀⠀⠀
]],
}
math.randomseed(os.time())

return {
	{
		"echasnovski/mini.statusline",
		opts = {},
	},
	{
		"folke/snacks.nvim",
		---@type snacks.Config
		opts = {
			dashboard = {
				sections = {
					{
						header = art[math.random(#art)],
					},
					{ section = "keys", gap = 1, padding = 1 },
					{ section = "startup" },
				},
			},
		},
	},
}
