#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){	
		receiver.setup(PORT);
		ofBackground(0, 0, 0);
}

//--------------------------------------------------------------
void ofApp::update(){
		// check for waiting messages
		while( receiver.hasWaitingMessages() ){
				// get the next message
				ofxOscMessage m;
				receiver.getNextMessage( &m );
				ofColor backgroundColor = ofGetBackground();

				// check for mouse moved message
				if( m.getAddress() == "/color/red" ){
						backgroundColor.r = m.getArgAsFloat(0);
				}else if( m.getAddress() == "/color/green" ){
						backgroundColor.g = m.getArgAsFloat(0) ;
				}else if ( m.getAddress() == "/color/blue"){
						backgroundColor.b = m.getArgAsFloat(0);
				}
				
				// update background color
				ofBackground(backgroundColor);
		}
}

//--------------------------------------------------------------
void ofApp::draw(){
	
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}
