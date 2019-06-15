const path = require('path');
const glob = require('glob');
const current = process.cwd();
const jsBasePath = path.join(current, './frontend/javascripts');
// const cssBasePath = path.join(current, './frontend/stylesheets');
// const tsEntries = glob.sync(`${jsBasePath}/root/**/*.ts`);
const tsxEntries = glob.sync(`${jsBasePath}/root/**/*.tsx`);
// const cssEntries = glob.sync(`${cssBasePath}/root/**/*.scss`);

module.exports = tsxEntries;
