
let app = new PIXI.Application({ width: window.innerWidth, height: window.innerHeight, backgroundColor: 0xFFFFFF });
document.getElementById('pixi-container').appendChild(app.view);

let dirtSpots = [];
let pressureWasher;
let direction = 'right';
let row = 0;

function createDirtSpot() {
    let graphics = new PIXI.Graphics();
    let r = Math.floor(Math.random() * 56 + 100);  // Red component between 100 and 155
    let g = Math.floor(Math.random() * 56 + 50);   // Green component between 50 and 105
    let b = Math.floor(Math.random() * 26);        // Blue component between 0 and 25
    let color = (r << 16) + (g << 8) + b;  // Convert to hex
    let opacity = Math.random() * 0.5 + 0.5;  // Varying opacity
    graphics.beginFill(color, opacity);
    graphics.drawCircle(0, 0, 1);  // Smaller circles
    graphics.endFill();
    graphics.x = Math.random() * app.screen.width;
    graphics.y = Math.random() * app.screen.height;
    app.stage.addChild(graphics);
    dirtSpots.push(graphics);
}

function createPressureWasher() {
    let texture = PIXI.Texture.from('https://hydrocare.mach0.net/assets/Uploads/hydro.png');
    let sprite = new PIXI.Sprite(texture);
    sprite.width = 50;  // Adjust the size as needed
    sprite.height = 50;  // Adjust the size as needed
    sprite.x = 0;
    sprite.y = 0;
    app.stage.addChild(sprite);
    return sprite;
}

for (let i = 0; i < 10000; i++) {
    createDirtSpot();
}

pressureWasher = createPressureWasher();

app.ticker.add(() => {
    // Move pressure washer in a zigzag pattern
    if (direction === 'right') {
        pressureWasher.x += 1;
        if (pressureWasher.x > app.screen.width) {
            direction = 'left';
            row += 10;
        }
    } else {
        pressureWasher.x -= 1;
        if (pressureWasher.x < 0) {
            direction = 'right';
            row += 10;
        }
    }

    pressureWasher.y = row;
    if (pressureWasher.y > app.screen.height) {
        row = 0;
    }

    // Clean dirt spots
    dirtSpots.forEach((dirt, index) => {
        if (Math.abs(pressureWasher.x - dirt.x) < 10 && Math.abs(pressureWasher.y - dirt.y) < 10) {
            app.stage.removeChild(dirt);
            dirtSpots.splice(index, 1);
        }
    });

    // Add new dirt spots
    if (Math.random() < 0.1) {  // Increase the probability to control the rate of new dirt spots
        createDirtSpot();
    }
});

window.addEventListener('resize', () => {
    app.renderer.resize(window.innerWidth, window.innerHeight);
});

