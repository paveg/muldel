const path = require("path");
const isDevelopment = (process.env.NODE_ENV || 'development') === 'development';
const fileName = isDevelopment ? 'bundle' : 'bundle-[hash]';
const ManifestPlugin = require("webpack-manifest-plugin");
const LiveReloadPlugin = require("webpack-livereload-plugin");
const {CleanWebpackPlugin} = require('clean-webpack-plugin');
const manifest = new ManifestPlugin({fileName: 'manifest.json'})

module.exports = (_, argv) => {
    const isProduction = argv.mode === "production";
    return {
        entry: {
            entry: require("./config/webpack/asset_entry"),
        },
        output: {
            path: path.resolve(__dirname, 'public/assets'),
            publicPath: isDevelopment ? 'http://localhost:8090/assets/' : 'assets/',
            filename: `${fileName}.js`
        },
        mode: isProduction ? "production" : "development",
        devtool: isProduction ? "source-map" : "inline-source-map",
        resolve: {
            extensions: [".ts", ".tsx", ".js"],
            alias: {
                '@js': path.resolve(__dirname, './frontend/javascripts'),
                '@css': path.resolve(__dirname, './frontend/stylesheets')
            }
        },
        module: {
            rules: [{test: /\.tsx?$/, loader: "ts-loader"}]
        },
        plugins: [
            manifest,
            new CleanWebpackPlugin(),
            new ManifestPlugin({fileName: "webpack-manifest.json"}),
            !isProduction && new LiveReloadPlugin({appendScriptTag: true})
        ].filter(Boolean),
        devServer: {
            host: '0.0.0.0',
            port: 8090,
            disableHostCheck: true,
            contentBase: './',
            watchOptions: {
                aggregateTimeout: 300,
                poll: 1000
            }
        }
    };
};