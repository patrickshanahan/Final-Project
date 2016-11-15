//
//  Title+CoreDataProperties.swift
//  Backlog
//
//  Created by cis290 on 11/14/16.
//  Copyright © 2016 Rock Valley College. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Title {

    @NSManaged var title: String?
    @NSManaged var descrip: String?

}
