# Strokelone
N-times continuous your last pressed key press with Numpad-N.

## Demo
![strokelone_demo](https://user-images.githubusercontent.com/23325839/40335913-3461357e-5da1-11e8-8a34-7f9f986a0b33.gif)

## Requirement
- Windows 7+
- AutoHotkey v1.1.x

## Build
- Copy from `build.ahk.sample` to `build.ahk`.
- Edit the variable `builder`.
  - Ex: `builder = C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe`
- Run `build.ahk`

## Customization

### Key-repeat count
Edit `strokelone.ahk`.

For example:

```ahk
Numpad4::
  push_priorkey(4)
Return
```

This code means if the key `numpad-4` pressed then press your last pressed key 4-times.

So, if you want to increase the count to double, like this


```ahk
Numpad4::
  push_priorkey(8)
Return
```

## License
[MIT License](LICENSE)

## Author
[stakiran](https://github.com/stakiran)
