@module("./logo.svg") external logo: string = "default"
%%raw(`import './style.css'`)

@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0)

  <div>
    <header className="App-header">
      <img src={logo} className="w-96 h-96 m-auto" alt="logo" />
      <p> {"Hello World"->React.string} </p>
      <p className="text-xl">
        <button onClick={_e => setCount(count => count + 1)}>
          {`count is: ${count->Int.toString}`->React.string}
        </button>
      </p>
    </header>
  </div>
}
