from flask import Flask, request, render_template
import json
from werkzeug.wrappers import request

app=Flask(__name__)

 CRUD = Create , read , update & delete in flask

@app.route("/")
 def hello_world():
     return "Hello, World!"

 @app.route("/greet")

 def greet():
     return "Hello everybody"


@app.route("/get",methods =['GET','POST'])
def get_data():
    print(f"request name: {request.method}")
    with open("total_logs.json",'r') as logs :
        logData = json.load(logs)
    return {"Name":logData}
    return render_template('index.html',data=logData["total_log"])


    
    @app.route('/post',methods =['GET','POST'])
    def post_data():
        print (f"Request name from POST method :{request.method}")
        #return {}
        return render_template("post.html")


if __name__=='__main__':
    app.run(debug=True)