![Sleipnir](https://i.ibb.co/2c7KR7h/github-bg.png)

> A game engine written in Odin language, made for learning the fundamentals of game engine development.

## Usage
You can use this engine as package, imported in your own project, or you can run included examples to see how it works and to learn how to use it.

## Development

Use `examples/` for testing new features and examples of usage.

#### Setup vscode debug mode (this is only tested on linux)
1. Create `.vscode/launch.json`
```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "type": "cppdbg",
            "request": "launch",
            "preLaunchTask": "Build",
            "name": "Debug",
            "program": "${workspaceFolder}/example/build/build.out",
            "args": [],
            "cwd": "${workspaceFolder}"
        }
    ],
}
```

2. Create `.vscode/tasks.json`

> If you add new files to `examples/` folder, you have to add them to `tasks.json` in `inputs -> options`

```json
{
    "version": "2.0.0",
    "command": "",
    "args": ["file"],
    "tasks": [
        {
            "label": "mkdir",
            "type": "shell",
            "command": "mkdir -p example/build",
        },
        {
            "label": "build",
            "type": "shell",
            "command": "odin build examples/${input:example} -file -debug -out:example/build/build.out",
            "group": "build"
        },
        {
            "label": "Build",
            "dependsOn": [
                "mkdir",
                "build"
            ]
        }
    ],
    "inputs": [{
        "type": "pickString",
        "id": "example",
        "description": "Pick an file to run:",
        "options": [
            "example.odin"
        ],
        "default": "example"
    }]
}
```

#### Odin language server setup
1. Create `./ols.json`
```json
{
    "$schema": "https://raw.githubusercontent.com/DanielGavin/ols/master/misc/ols.schema.json",
    "collections": [{ "name": "core", "path": "<path_to_odin>/core" }],
    "enable_document_symbols": true,
    "enable_semantic_tokens": false,
    "enable_hover": true,
    "enable_snippets": true
}
```