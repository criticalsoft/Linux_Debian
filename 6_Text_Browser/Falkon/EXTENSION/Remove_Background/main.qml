import org.kde.falkon 1.0 as Falkon
import QtQuick.Controls 2.3
import QtQuick 2.3

Falkon.PluginInterface {
	QtObject {
		id: removeBackgroundObject
		property int mode: settings.value({key: 'Mode'})
        signal onChange(int mode)
	}




	init: function() {
		Falkon.ExternalJsObject.registerExtraObject({
			id:'removeBackgroundObject',
			object:removeBackgroundObject
		})
	}

	unload: function() {
		Falkon.ExternalJsObject.unregisterExtraObject(removeBackgroundObject)
	}
	
	Falkon.UserScript {
		id: removeBackgroundUserScript_Load
		name: 'remove-Background-UserScript-Load'
		runsOnSubFrames: false
        sourceCode: Falkon.FileUtils.readAllFileContents('Main.js')
        injectionPoint: Falkon.UserScript.DocumentCreation
		worldId: Falkon.UserScript.ApplicationWorld
	}
	Falkon.UserScript {
		id: removeBackgroundUserScript_Ready
		name: 'remove-Background-UserScript-Ready'
		runsOnSubFrames: false
        sourceCode: Falkon.FileUtils.readAllFileContents('Main.js')
        injectionPoint: Falkon.UserScript.DocumentReady
		worldId: Falkon.UserScript.ApplicationWorld
	}

	testPlugin: function() {
		return true
	}




	// // Point falkon to extension://removebackground to see Hello World
    // Falkon.ExtensionScheme {
    //     name: 'removebackground'
    //     onRequestStarted: {
    //         request.reply({
    //             contentType: 'text/html',
    //             content: '<h1>Remove Background Extension</h1>'
    //         })
    //     }
    // }

	Falkon.Settings {
        id: settings
        name: 'RemoveBackground'
    }

	settingsWindow: Rectangle {
        id: window
        width: 256
        height: 200
		//color:"black"
        
		ComboBox {
			id: combo
			currentIndex: settings.value({key: 'Mode'})
			model: [ "Light", "Dark" ]
			
			Component.onCompleted: {
				//__style.textColor = "white"
			}
			onCurrentIndexChanged: {
				settings.setValue({
					key: 'Mode',
					// value: theme.get(currentIndex).text
					value: currentIndex
				})

				removeBackgroundObject.onChange(currentIndex)
			}
		}
    }
}
