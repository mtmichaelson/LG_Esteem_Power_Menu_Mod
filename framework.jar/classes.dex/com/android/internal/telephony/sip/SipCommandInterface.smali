.class Lcom/android/internal/telephony/sip/SipCommandInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SipCommandInterface.java"


# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method


# virtual methods
.method public ConfirmLTENetDetach(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 587
    return-void
.end method

.method public ConfirmPDNClose(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 609
    return-void
.end method

.method public EmulForIMS(I)V
    .registers 2
    .parameter "emulcase"

    .prologue
    .line 584
    return-void
.end method

.method public LteUsatUserConfirmationResponse(IILandroid/os/Message;)V
    .registers 4
    .parameter "command_id"
    .parameter "accept"
    .parameter "result"

    .prologue
    .line 556
    return-void
.end method

.method public RequestATCommand(Landroid/os/Message;I)V
    .registers 3
    .parameter "result"
    .parameter "ATenable"

    .prologue
    .line 627
    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 129
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 227
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 223
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 286
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 72
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "aid"
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 65
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "aid"
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 68
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 116
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .registers 4
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 213
    return-void
.end method

.method public deactivateDataCallForWmc(ILandroid/os/Message;)V
    .registers 3
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 621
    return-void
.end method

.method public deactivateDefaultPDP(ILandroid/os/Message;)V
    .registers 3
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 210
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .registers 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 197
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .registers 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 194
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 87
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 5
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 91
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 396
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 135
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 258
    return-void
.end method

.method public getBDAddress(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 468
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 272
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 357
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 235
    return-void
.end method

.method public getCalLifeTimer(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 481
    return-void
.end method

.method public getCallOtaCheckClnr(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 494
    return-void
.end method

.method public getCallWdc(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 478
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 387
    return-void
.end method

.method public getCdmaPrlVersion(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 375
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 351
    return-void
.end method

.method public getContKeyDtmfMode(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 505
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 78
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 84
    return-void
.end method

.method public getDataCallProfile(ILandroid/os/Message;)V
    .registers 3
    .parameter "appType"
    .parameter "result"

    .prologue
    .line 402
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 160
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 354
    return-void
.end method

.method public getEhrpdInfoForIms(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 603
    return-void
.end method

.method public getGPRSRegistrationState(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 163
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 338
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 97
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 100
    return-void
.end method

.method public getIMSI(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 94
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 50
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 372
    return-void
.end method

.method public getLGIMEI(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 695
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 138
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 145
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 142
    return-void
.end method

.method public getLteBootMode(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 546
    return-void
.end method

.method public getLteParamSettingValue(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 682
    return-void
.end method

.method public getLteStatus(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 540
    return-void
.end method

.method public getManualTestMode(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 473
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 151
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 320
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 255
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 166
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .registers 2
    .parameter "result"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    return-void
.end method

.method public getPreferredAutoAnswer(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 444
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 317
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 123
    return-void
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 157
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 154
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 326
    return-void
.end method

.method public getValidityPeriod(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 419
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 347
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .registers 3
    .parameter "accept"
    .parameter "response"

    .prologue
    .line 311
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .registers 3
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 104
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 110
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 107
    return-void
.end method

.method public iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 11
    .parameter "aid"
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 232
    return-void
.end method

.method public invokeDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .parameter "pin"
    .parameter "type"
    .parameter "response"

    .prologue
    .line 399
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 3
    .parameter "data"
    .parameter "response"

    .prologue
    .line 292
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 295
    return-void
.end method

.method public notifyWiFiConnectionState(Landroid/os/Message;I)V
    .registers 3
    .parameter "result"
    .parameter "status"

    .prologue
    .line 689
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 301
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 269
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    .line 266
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .registers 3
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 241
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 363
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 6
    .parameter "aid"
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 276
    return-void
.end method

.method public queryPhonebookInfoEx(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .parameter "aid"
    .parameter "devicetype"
    .parameter "response"

    .prologue
    .line 528
    return-void
.end method

.method public querySIMPBReady(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 531
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 378
    return-void
.end method

.method public readPhonebookEntriesEx(Ljava/lang/String;IIILandroid/os/Message;)V
    .registers 6
    .parameter "aid"
    .parameter "startindex"
    .parameter "devicetype"
    .parameter "category"
    .parameter "response"

    .prologue
    .line 517
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 132
    return-void
.end method

.method public releaseLTEBlock(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 636
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .registers 3
    .parameter "available"
    .parameter "result"

    .prologue
    .line 332
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 335
    return-void
.end method

.method public reqAdminConNotification(Landroid/os/Message;I)V
    .registers 3
    .parameter "result"
    .parameter "reason"

    .prologue
    .line 646
    return-void
.end method

.method public reqAdminConResponse(Landroid/os/Message;I)V
    .registers 3
    .parameter "result"
    .parameter "reason"

    .prologue
    .line 643
    return-void
.end method

.method public reqAdminDisResponse(Landroid/os/Message;I)V
    .registers 3
    .parameter "result"
    .parameter "reason"

    .prologue
    .line 649
    return-void
.end method

.method public reqApnTableQueryRsp(Ljava/util/ArrayList;Landroid/os/Message;)V
    .registers 3
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfileVo;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfileVo;>;"
    return-void
.end method

.method public reqSetApnTable(Lcom/android/internal/telephony/DataProfileVo;ILandroid/os/Message;)V
    .registers 4
    .parameter "profile"
    .parameter "status"
    .parameter "result"

    .prologue
    .line 668
    return-void
.end method

.method public reqUMSConnect(Landroid/os/Message;I)V
    .registers 3
    .parameter "result"
    .parameter "status"

    .prologue
    .line 659
    return-void
.end method

.method public requesAdminDisNotification(Landroid/os/Message;I)V
    .registers 3
    .parameter "result"
    .parameter "reason"

    .prologue
    .line 652
    return-void
.end method

.method public requestCDMAToLTE(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 552
    return-void
.end method

.method public requestLTEToCDMA(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 549
    return-void
.end method

.method public requestLteDetach(Landroid/os/Message;I)V
    .registers 3
    .parameter "result"
    .parameter "reason"

    .prologue
    .line 633
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 289
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 5
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 179
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 384
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .registers 3
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 185
    return-void
.end method

.method public sendCommand(I)V
    .registers 2
    .parameter "commandNumber"

    .prologue
    .line 676
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 3
    .parameter "c"
    .parameter "result"

    .prologue
    .line 169
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 307
    return-void
.end method

.method public sendFactoryTestResponse(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "response"
    .parameter "onComplete"

    .prologue
    .line 679
    return-void
.end method

.method public sendImsCdmaSms([BLandroid/os/Message;)V
    .registers 3
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 191
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 188
    return-void
.end method

.method public sendPdnTable(IILjava/lang/String;IIILandroid/os/Message;)V
    .registers 8
    .parameter "pdnId"
    .parameter "apnLength"
    .parameter "apn"
    .parameter "ipType"
    .parameter "inactivityTime"
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 596
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 182
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 304
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "ussdString"
    .parameter "response"

    .prologue
    .line 283
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .registers 3
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 126
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .registers 3
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 298
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .registers 3
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 238
    return-void
.end method

.method public setCalLifeTimer(ILandroid/os/Message;)V
    .registers 3
    .parameter "value"
    .parameter "result"

    .prologue
    .line 487
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .registers 7
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "response"

    .prologue
    .line 262
    return-void
.end method

.method public setCallOtaCheckClnr(ILandroid/os/Message;)V
    .registers 3
    .parameter "value"
    .parameter "result"

    .prologue
    .line 497
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .registers 4
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 245
    return-void
.end method

.method public setCallWdc(IIIIILandroid/os/Message;)V
    .registers 7
    .parameter "min"
    .parameter "hour"
    .parameter "day"
    .parameter "month"
    .parameter "year"
    .parameter "result"

    .prologue
    .line 484
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 393
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .registers 3
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 390
    return-void
.end method

.method public setCdmaEriVersion(ILandroid/os/Message;)V
    .registers 3
    .parameter "value"
    .parameter "result"

    .prologue
    .line 454
    return-void
.end method

.method public setCdmaFactoryReset(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 510
    return-void
.end method

.method public setCdmaOperationMode(ILandroid/os/Message;)V
    .registers 3
    .parameter "op_mode"
    .parameter "response"

    .prologue
    .line 575
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .registers 3
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 366
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .registers 3
    .parameter "cdmaSubscription"
    .parameter "response"

    .prologue
    .line 369
    return-void
.end method

.method public setCdmaValidateAKey(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "value"
    .parameter "result"

    .prologue
    .line 463
    return-void
.end method

.method public setContKeyDtmfMode(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 502
    return-void
.end method

.method public setDsConnectionNoty(ILandroid/os/Message;)V
    .registers 3
    .parameter "connect_mode"
    .parameter "response"

    .prologue
    .line 564
    return-void
.end method

.method public setDsDisconnectionNoty(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 567
    return-void
.end method

.method public setDsHondOverNoty(IILandroid/os/Message;)V
    .registers 4
    .parameter "connected_mode"
    .parameter "target_mode"
    .parameter "response"

    .prologue
    .line 570
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 7
    .parameter "aid"
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 280
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 344
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3
    .parameter "config"
    .parameter "response"

    .prologue
    .line 341
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 323
    return-void
.end method

.method public setLteBootMode(ILandroid/os/Message;)V
    .registers 3
    .parameter "boot_mode"
    .parameter "result"

    .prologue
    .line 543
    return-void
.end method

.method public setLteTetheredMode(ZLandroid/os/Message;)V
    .registers 3
    .parameter "bOnTetheredMode"
    .parameter "result"

    .prologue
    .line 537
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enableMute"
    .parameter "response"

    .prologue
    .line 148
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 248
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 252
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 47
    return-void
.end method

.method public setPhoneType(I)V
    .registers 2
    .parameter "phoneType"

    .prologue
    .line 360
    return-void
.end method

.method public setPreferredAutoAnswer(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 447
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 3
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 314
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 120
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .registers 3
    .parameter "on"
    .parameter "result"

    .prologue
    .line 216
    return-void
.end method

.method public setRilPowerOff(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 405
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 329
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 219
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .registers 3
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 381
    return-void
.end method

.method public setValidityPeriod(ILandroid/os/Message;)V
    .registers 3
    .parameter "validityperiod"
    .parameter "response"

    .prologue
    .line 421
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 10
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "ipVersion"
    .parameter "requestType"
    .parameter "result"

    .prologue
    .line 431
    return-void
.end method

.method public setupDataCallForWmc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 10
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "ipVersion"
    .parameter "requestType"
    .parameter "result"

    .prologue
    .line 617
    return-void
.end method

.method public setupDataCallTest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "mode"
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "ipVersion"
    .parameter "result"

    .prologue
    .line 438
    return-void
.end method

.method public setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "result"

    .prologue
    .line 207
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .registers 3
    .parameter "c"
    .parameter "result"

    .prologue
    .line 172
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 175
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "aid"
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 53
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "aid"
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 59
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "aid"
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 56
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "aid"
    .parameter "puk"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 62
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 75
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 113
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveForSkype(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 413
    return-void
.end method

.method public writePhonebookEntriesEx(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 17
    .parameter "aid"
    .parameter "category"
    .parameter "devicetype"
    .parameter "index"
    .parameter "type"
    .parameter "plan"
    .parameter "number"
    .parameter "name"
    .parameter "tonnpi"
    .parameter "other_name"
    .parameter "grp_id"
    .parameter "additional_number"
    .parameter "additional_number_a"
    .parameter "additional_number_b"
    .parameter "email"
    .parameter "response"

    .prologue
    .line 523
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 203
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 200
    return-void
.end method
