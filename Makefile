build-excalidraw:
	cp excalidraw.env.production excalidraw/.env.production
	echo "BASE_DOMAIN=$(BASE_DOMAIN)" >> excalidraw/.env.production
	docker build -f excalidraw/Dockerfile -t hypc/excalidraw excalidraw

build-excalidraw-room:
	docker build -f excalidraw-room/Dockerfile -t hypc/excalidraw-room excalidraw-room

build-excalidraw-storage:
	docker build -f excalidraw-storage/Dockerfile -t hypc/excalidraw-storage excalidraw-storage

build: build-excalidraw \
	build-excalidraw-room \
	build-excalidraw-storage
