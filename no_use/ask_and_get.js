import readline from 'readline';

async function ask_and_get(prompt) {
    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout
    });
    return new Promise(function(resolve, reject) {
        rl.question(prompt, (ans) => {
            rl.close();
            resolve(ans);
        });
    });
}

export { ask_and_get };
