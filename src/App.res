@module("./logo.svg") external logo: string = "default"
%%raw(`import './App.css'`)

@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0)

  <div className="App">
    <header className="App-header">
      <img src={logo} className="App-logo" alt="logo" />
      <p> {"Hello World"->React.string} </p>
      <p>
        <button onClick={_e => setCount(count => count + 1)}>
          {`count is: ${count->Int.toString}`->React.string}
        </button>
      </p>
    </header>
  </div>
}
