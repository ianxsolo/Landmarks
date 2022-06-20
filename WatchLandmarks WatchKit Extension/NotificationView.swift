//
//  NotificationView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Julian Kamil on 6/20/22.
//

import SwiftUI

struct NotificationView: View {
    var title:    String?
    var message:  String?
    var landmark: Landmark?
    
    var body: some View {
        VStack {
            if landmark != nil {
                CircleImage(image: landmark!.image.resizable()).scaledToFit()
            }
            
            Text(title ?? "Unknown landmark").font(.headline)
            
            Divider()
            
            Text(message ?? "Within 5 miles of a favorite landmark").font(.caption)
        }
        .lineLimit(0)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NotificationView()

            NotificationView(
                title    : "Turtle Rock",
                message  : "Within 5 miles of Turtle Rock",
                landmark : ModelData().landmarks[0]
            )
        }
    }
}
