module.exports = {
    entry: './src/turbo-fx.coffee',
    output: {
        path: __dirname + '/dist',
        filename: 'turbo-fx.js'
    },
    module: {
        loaders: [
            { test: /\.coffee$/, loader: 'coffee-loader' },
            { test: /\.jade$/, loader: "jade" },
            { test: /\.less$/, loader: 'style-loader!css-loader!less-loader' }, // use ! to chain loaders
            { test: /\.css$/, loader: 'style-loader!css-loader' },
            { test: /\.(png|jpg)$/, loader: 'url-loader?limit=8192' } // inline base64 URLs for <=8k images, direct URLs for the rest
        ]
    },
    resolve: {
        extensions: ['', '.js', '.json', '.coffee', '.jade', '.less', '.css', '.png', '.jpg']
    }
};