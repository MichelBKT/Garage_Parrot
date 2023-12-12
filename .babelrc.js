const presets= [
    [
    '@babel/preset-react',
    ]
]

const plugins = [
    [
      'babel-plugin-import',
      {
        libraryName: '@mui/material',
        libraryDirectory: '',
        camel2DashComponentName: false,
      },
      'core',
    ],
    [
      'babel-plugin-import',
      {
        libraryName: '@mui/icons-material',
        libraryDirectory: '',
        camel2DashComponentName: false,
      },
      'icons',
    ],
    [
      'babel-plugin-import',
      {
        libraryName: '@babel/plugin-syntax-jsx',
        libraryDirectory: '',
        camel2DashComponentName: false,
      }
    ]
  ];
  
module.exports = {presets, plugins};



