import webpack from "webpack";

module.exports = {
  devtool: "source-map",
  plugins: [
    new webpack.ProvidePlugin({
      jQuery: "jquery",
      "window.jQuery": "jquery",
      jquery: "jquery",
      "window.jquery": "jquery",
      $: "jquery",
      "window.$": "jquery",
    }),
  ],
  mode: "development",
  entry: {
    app: "./dev/src/js/app.js",
  },
  output: {
    filename: "[name].js",
  },
  module: {
    rules: [
      {
        test: /\.s?css$/i,
        use: ["style-loader", "css-loader"],
      },
      {
        test: /\.(png|jpe?g|gif)$/i,
        use: [
          {
            loader: "file-loader",
          },
        ],
      },
    ],
  },
};
