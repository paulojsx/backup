#!/bin/bash

cd Projetos/
echo "Projetos atuais: `ls`"
echo "Nome do projeto: "
read projeto

if [ -d $projeto ]
  then	
		cd ./$projeto
		tmux split-window -v -p 30
		tmux split-window -h -p 66
		tmux split-window -h -p 50
		vim ./
	else
		mkdir $projeto
		cd $projeto
		npm create vite@latest ./ -- --template react
		npm install
		npm install -D tailwindcss@3 postcss autoprefixer
		npx tailwindcss init -p

		tailwindconfig='/** @type {import('tailwindcss').Config} */
		export default {
			content: [
					"./index.html",
							"./src/**/*.{js,ts,jsx,tsx}",
								],
									theme: {
											extend: {},
												},
													plugins: [],
												}'
		indexcss='@tailwind base;
		@tailwind components;
		@tailwind utilities;'

		echo "$tailwindconfig" > tailwind.config.js
		cd src
		echo "$indexcss" > index.css
		cd ../
		tmux split-window -v -p 30
		tmux split-window -h -p 66
		tmux split-window -h -p 30
		vim ./
fi
