const fs = require('fs');
const crypto = require('crypto');

// Generate random bytes
const randomBytes = crypto.randomBytes(32);

// Convert random bytes to hexadecimal string
const secret = randomBytes.toString('hex');

// Load existing .env file
fs.readFile('.env', 'utf8', (err, data) => {
  if (err) {
    console.error('Error reading .env file:', err);
    return;
  }

  // Append JWT_SECRET to .env file
  const updatedData = `${data.trim()}\nJWT_SECRET=${secret}\n`;

  // Write updated data back to .env file
  fs.writeFile('.env', updatedData, 'utf8', (err) => {
    if (err) {
      console.error('Error writing to .env file:', err);
      return;
    }
    console.log('JWT_SECRET added to .env file successfully.');
  });
});
