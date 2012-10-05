/************************************************************************************
 *
 *  Copyright (C) 2012      Naranjo Manuel Francisco <naranjo.manuel@gmail.com>
 *  Copyright (C) 2009-2011 Broadcom Corporation
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 ************************************************************************************/
package com.broadcom.bt.le.api;

import com.broadcom.bt.service.gatt.BluetoothGattID;

oneway interface IBleClientCallback {
    void onAppRegistered(byte status, byte serIf);

    void onAppDeregistered(byte client_if);

    void onConnected(in String address, int connId);
    
    void onDisconnected(int connId, in String address);

    void onSearchResult(int connId, in BluetoothGattID srvcId);

    void onSearchCompleted(int connID, int status);

}
