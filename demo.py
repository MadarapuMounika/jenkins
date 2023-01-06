from  flask import Flask, render_template

demo = Flask(__name__)

@demo.route('/')

def taskregister():

    return render_template('taskregister.html')

if __name__ == "__main__":

    demo.run(debug=True, host='0.0.0.0',port=5000) 
