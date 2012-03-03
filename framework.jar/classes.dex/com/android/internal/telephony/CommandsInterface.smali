.class public interface abstract Lcom/android/internal/telephony/CommandsInterface;
.super Ljava/lang/Object;
.source "CommandsInterface.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;,
        Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;,
        Lcom/android/internal/telephony/CommandsInterface$RadioState;
    }
.end annotation


# static fields
.field public static final CB_ACTION_DISABLE:I = 0x0

.field public static final CB_ACTION_ENABLE:I = 0x1

.field public static final CB_ACTION_ERASURE:I = 0x4

.field public static final CB_ACTION_REGISTRATION:I = 0x3

.field public static final CB_FACILITY_BAIC:Ljava/lang/String; = "AI"

.field public static final CB_FACILITY_BAICr:Ljava/lang/String; = "IR"

.field public static final CB_FACILITY_BAOC:Ljava/lang/String; = "AO"

.field public static final CB_FACILITY_BAOIC:Ljava/lang/String; = "OI"

.field public static final CB_FACILITY_BAOICxH:Ljava/lang/String; = "OX"

.field public static final CB_FACILITY_BA_ALL:Ljava/lang/String; = "AB"

.field public static final CB_FACILITY_BA_FD:Ljava/lang/String; = "FD"

.field public static final CB_FACILITY_BA_MO:Ljava/lang/String; = "AG"

.field public static final CB_FACILITY_BA_MT:Ljava/lang/String; = "AC"

.field public static final CB_FACILITY_BA_SIM:Ljava/lang/String; = "SC"

.field public static final CB_REASON_BAIC:I = 0x3

.field public static final CB_REASON_BAICr:I = 0x4

.field public static final CB_REASON_BAOC:I = 0x0

.field public static final CB_REASON_BAOIC:I = 0x1

.field public static final CB_REASON_BAOICxH:I = 0x2

.field public static final CB_REASON_BA_ALL:I = 0x5

.field public static final CB_REASON_BA_FD:I = 0x9

.field public static final CB_REASON_BA_MO:I = 0x6

.field public static final CB_REASON_BA_MT:I = 0x7

.field public static final CB_REASON_BA_SIM:I = 0x8

.field public static final CDMA_SMS_FAIL_CAUSE_ENCODING_PROBLEM:I = 0x60

.field public static final CDMA_SMS_FAIL_CAUSE_INVALID_TELESERVICE_ID:I = 0x4

.field public static final CDMA_SMS_FAIL_CAUSE_OTHER_TERMINAL_PROBLEM:I = 0x27

.field public static final CDMA_SMS_FAIL_CAUSE_RESOURCE_SHORTAGE:I = 0x23

.field public static final CDMA_SMS_FAIL_CAUSE_TERMINATION_DENIED:I = 0x62

.field public static final CDMA_SMS_FAIL_CAUSE_TERMINATION_OUT_OF_SERVICE:I = 0x25

.field public static final CF_ACTION_DISABLE:I = 0x0

.field public static final CF_ACTION_ENABLE:I = 0x1

.field public static final CF_ACTION_ERASURE:I = 0x4

.field public static final CF_ACTION_REGISTRATION:I = 0x3

.field public static final CF_REASON_ALL:I = 0x4

.field public static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field public static final CF_REASON_BUSY:I = 0x1

.field public static final CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final CF_REASON_NO_REPLY:I = 0x2

.field public static final CF_REASON_UNCONDITIONAL:I = 0x0

.field public static final CLIR_DEFAULT:I = 0x0

.field public static final CLIR_INVOCATION:I = 0x1

.field public static final CLIR_SUPPRESSION:I = 0x2

.field public static final GSM_SMS_FAIL_CAUSE_MEMORY_CAPACITY_EXCEEDED:I = 0xd3

.field public static final GSM_SMS_FAIL_CAUSE_UNSPECIFIED_ERROR:I = 0xff

.field public static final SERVICE_CLASS_DATA:I = 0x2

.field public static final SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field public static final SERVICE_CLASS_DATA_SYNC:I = 0x10

.field public static final SERVICE_CLASS_FAX:I = 0x4

.field public static final SERVICE_CLASS_MAX:I = 0x80

.field public static final SERVICE_CLASS_NONE:I = 0x0

.field public static final SERVICE_CLASS_PACKET:I = 0x40

.field public static final SERVICE_CLASS_PAD:I = 0x80

.field public static final SERVICE_CLASS_SMS:I = 0x8

.field public static final SERVICE_CLASS_VOICE:I = 0x1

.field public static final USSD_MODE_NOTIFY:I = 0x0

.field public static final USSD_MODE_REQUEST:I = 0x1



# virtual methods
.method public abstract ConfirmLTENetDetach(Landroid/os/Message;)V
.end method

.method public abstract ConfirmPDNClose(Landroid/os/Message;)V
.end method

.method public abstract EmulForIMS(I)V
.end method

.method public abstract LteUsatUserConfirmationResponse(IILandroid/os/Message;)V
.end method

.method public abstract RequestATCommand(Landroid/os/Message;I)V
.end method

.method public abstract acceptCall(Landroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
.end method

.method public abstract cancelPendingUssd(Landroid/os/Message;)V
.end method

.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPin2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract conference(Landroid/os/Message;)V
.end method

.method public abstract deactivateDataCall(IILandroid/os/Message;)V
.end method

.method public abstract deactivateDataCallForWmc(ILandroid/os/Message;)V
.end method

.method public abstract deactivateDefaultPDP(ILandroid/os/Message;)V
.end method

.method public abstract deleteSmsOnRuim(ILandroid/os/Message;)V
.end method

.method public abstract deleteSmsOnSim(ILandroid/os/Message;)V
.end method

.method public abstract dial(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
.end method

.method public abstract exitEmergencyCallbackMode(Landroid/os/Message;)V
.end method

.method public abstract explicitCallTransfer(Landroid/os/Message;)V
.end method

.method public abstract getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract getBDAddress(Landroid/os/Message;)V
.end method

.method public abstract getBasebandVersion(Landroid/os/Message;)V
.end method

.method public abstract getCDMASubscription(Landroid/os/Message;)V
.end method

.method public abstract getCLIR(Landroid/os/Message;)V
.end method

.method public abstract getCalLifeTimer(Landroid/os/Message;)V
.end method

.method public abstract getCallOtaCheckClnr(Landroid/os/Message;)V
.end method

.method public abstract getCallWdc(Landroid/os/Message;)V
.end method

.method public abstract getCdmaBroadcastConfig(Landroid/os/Message;)V
.end method

.method public abstract getCdmaSubscriptionSource(Landroid/os/Message;)V
.end method

.method public abstract getContKeyDtmfMode(Landroid/os/Message;)V
.end method

.method public abstract getCurrentCalls(Landroid/os/Message;)V
.end method

.method public abstract getDataCallList(Landroid/os/Message;)V
.end method

.method public abstract getDataCallProfile(ILandroid/os/Message;)V
.end method

.method public abstract getDataRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getDeviceIdentity(Landroid/os/Message;)V
.end method

.method public abstract getEhrpdInfoForIms(Landroid/os/Message;)V
.end method

.method public abstract getGsmBroadcastConfig(Landroid/os/Message;)V
.end method

.method public abstract getIMEI(Landroid/os/Message;)V
.end method

.method public abstract getIMEISV(Landroid/os/Message;)V
.end method

.method public abstract getIMSI(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getIccCardStatus(Landroid/os/Message;)V
.end method

.method public abstract getImsRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getLGIMEI(Landroid/os/Message;)V
.end method

.method public abstract getLastCallFailCause(Landroid/os/Message;)V
.end method

.method public abstract getLastDataCallFailCause(Landroid/os/Message;)V
.end method

.method public abstract getLastPdpFailCause(Landroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation.end method

.method public abstract getLteBootMode(Landroid/os/Message;)V
.end method

.method public abstract getLteParamSettingValue(Landroid/os/Message;)V
.end method

.method public abstract getLteStatus(Landroid/os/Message;)V
.end method

.method public abstract getManualTestMode(Landroid/os/Message;)V
.end method

.method public abstract getMute(Landroid/os/Message;)V
.end method

.method public abstract getNeighboringCids(Landroid/os/Message;)V
.end method

.method public abstract getNetworkMode()I
.end method

.method public abstract getNetworkSelectionMode(Landroid/os/Message;)V
.end method

.method public abstract getOperator(Landroid/os/Message;)V
.end method

.method public abstract getPDPContextList(Landroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation.end method

.method public abstract getPreferredAutoAnswer(Landroid/os/Message;)V
.end method

.method public abstract getPreferredNetworkType(Landroid/os/Message;)V
.end method

.method public abstract getPreferredVoicePrivacy(Landroid/os/Message;)V
.end method

.method public abstract getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
.end method

.method public abstract getRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getSignalStrength(Landroid/os/Message;)V
.end method

.method public abstract getSmscAddress(Landroid/os/Message;)V
.end method

.method public abstract getValidityPeriod(Landroid/os/Message;)V
.end method

.method public abstract getVoiceRadioTechnology(Landroid/os/Message;)V
.end method

.method public abstract handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
.end method

.method public abstract hangupConnection(ILandroid/os/Message;)V
.end method

.method public abstract hangupForegroundResumeBackground(Landroid/os/Message;)V
.end method

.method public abstract hangupWaitingOrBackground(Landroid/os/Message;)V
.end method

.method public abstract iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract invokeDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestRaw([BLandroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract notifyWiFiConnectionState(Landroid/os/Message;I)V
.end method

.method public abstract queryAvailableBandMode(Landroid/os/Message;)V
.end method

.method public abstract queryCLIP(Landroid/os/Message;)V
.end method

.method public abstract queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryCallWaiting(ILandroid/os/Message;)V
.end method

.method public abstract queryCdmaRoamingPreference(Landroid/os/Message;)V
.end method

.method public abstract queryFacilityLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract queryPhonebookInfoEx(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract querySIMPBReady(Landroid/os/Message;)V
.end method

.method public abstract queryTTYMode(Landroid/os/Message;)V
.end method

.method public abstract readPhonebookEntriesEx(Ljava/lang/String;IIILandroid/os/Message;)V
.end method

.method public abstract registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallReestablishInd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLteNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPbReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForTetheredModeStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectCall(Landroid/os/Message;)V
.end method

.method public abstract releaseLTEBlock(Landroid/os/Message;)V
.end method

.method public abstract reportSmsMemoryStatus(ZLandroid/os/Message;)V
.end method

.method public abstract reportStkServiceIsRunning(Landroid/os/Message;)V
.end method

.method public abstract reqAdminConNotification(Landroid/os/Message;I)V
.end method

.method public abstract reqAdminConResponse(Landroid/os/Message;I)V
.end method

.method public abstract reqAdminDisResponse(Landroid/os/Message;I)V
.end method

.method public abstract reqApnTableQueryRsp(Ljava/util/ArrayList;Landroid/os/Message;)V
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
    .end annotation.end method

.method public abstract reqSetApnTable(Lcom/android/internal/telephony/DataProfileVo;ILandroid/os/Message;)V
.end method

.method public abstract reqUMSConnect(Landroid/os/Message;I)V
.end method

.method public abstract requesAdminDisNotification(Landroid/os/Message;I)V
.end method

.method public abstract requestCDMAToLTE(Landroid/os/Message;)V
.end method

.method public abstract requestLTEToCDMA(Landroid/os/Message;)V
.end method

.method public abstract requestLteDetach(Landroid/os/Message;I)V
.end method

.method public abstract resetRadio(Landroid/os/Message;)V
.end method

.method public abstract sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendCdmaSms([BLandroid/os/Message;)V
.end method

.method public abstract sendCommand(I)V
.end method

.method public abstract sendDtmf(CLandroid/os/Message;)V
.end method

.method public abstract sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendFactoryTestResponse(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendImsCdmaSms([BLandroid/os/Message;)V
.end method

.method public abstract sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendPdnTable(IILjava/lang/String;IIILandroid/os/Message;)V
.end method

.method public abstract sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract separateConnection(ILandroid/os/Message;)V
.end method

.method public abstract setATCommandEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setAdmDisReqEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setAdmReqEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setApnTableQueryReq(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setApnTableSetReq(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setBandMode(ILandroid/os/Message;)V
.end method

.method public abstract setCLIR(ILandroid/os/Message;)V
.end method

.method public abstract setCalLifeTimer(ILandroid/os/Message;)V
.end method

.method public abstract setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setCallOtaCheckClnr(ILandroid/os/Message;)V
.end method

.method public abstract setCallWaiting(ZILandroid/os/Message;)V
.end method

.method public abstract setCallWdc(IIIIILandroid/os/Message;)V
.end method

.method public abstract setCdmaBroadcastActivation(ZLandroid/os/Message;)V
.end method

.method public abstract setCdmaBroadcastConfig([ILandroid/os/Message;)V
.end method

.method public abstract setCdmaEriVersion(ILandroid/os/Message;)V
.end method

.method public abstract setCdmaFactoryReset(Landroid/os/Message;)V
.end method

.method public abstract setCdmaRoamingPreference(ILandroid/os/Message;)V
.end method

.method public abstract setCdmaSubscription(ILandroid/os/Message;)V
.end method

.method public abstract setCdmaValidateAKey(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setContKeyDtmfMode(ZLandroid/os/Message;)V
.end method

.method public abstract setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setFacilityLock(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setGsmBroadcastActivation(ZLandroid/os/Message;)V
.end method

.method public abstract setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
.end method

.method public abstract setHandOverEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setHandOverRATChangeEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setLTEChipOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setLocationUpdates(ZLandroid/os/Message;)V
.end method

.method public abstract setLteBootMode(ILandroid/os/Message;)V
.end method

.method public abstract setLteIMSInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setLteTetheredMode(ZLandroid/os/Message;)V
.end method

.method public abstract setMute(ZLandroid/os/Message;)V
.end method

.method public abstract setNetDetachReq(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnLTENetworkAttach(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewCdmaSMS(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewSMS(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setPDNCloseReq(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setPhoneType(I)V
.end method

.method public abstract setPlmnBlockReleaseReq(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setPreferredAutoAnswer(ZLandroid/os/Message;)V
.end method

.method public abstract setPreferredNetworkType(ILandroid/os/Message;)V
.end method

.method public abstract setPreferredVoicePrivacy(ZLandroid/os/Message;)V
.end method

.method public abstract setRATSearching(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setRadioPower(ZLandroid/os/Message;)V
.end method

.method public abstract setRilPowerOff(Landroid/os/Message;)V
.end method

.method public abstract setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setSuppServiceNotifications(ZLandroid/os/Message;)V
.end method

.method public abstract setTTYMode(ILandroid/os/Message;)V
.end method

.method public abstract setTimerExpiredEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setUsatUserConfirmationRequest(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setUsatUserNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setValidityPeriod(ILandroid/os/Message;)V
.end method

.method public abstract setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setupDataCallForWmc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setupDataCallTest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract startDtmf(CLandroid/os/Message;)V
.end method

.method public abstract stopDtmf(Landroid/os/Message;)V
.end method

.method public abstract supplyIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
.end method

.method public abstract switchWaitingOrHoldingAndActiveForSkype(Landroid/os/Message;)V
.end method

.method public abstract unNetDetachReq(Landroid/os/Handler;)V
.end method

.method public abstract unSetLteIMSInfoUpdate(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCallRing(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatCallSetUp(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatEvent(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatProactiveCmd(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatSessionEnd(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnIccSmsFull(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnLTENetworkAttach(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNITZTime(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewCdmaSMS(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewSMS(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSmsOnSim(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSmsStatus(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSuppServiceNotification(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnUSSD(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnUnsolOemHookExtApp(Landroid/os/Handler;)V
.end method

.method public abstract unSetPlmnBlockReleaseReq(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallReestablishInd(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallWaitingInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaSubscriptionSourceChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDataStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDisplayInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIccRefresh(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIccStatusChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLineControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLteNotification(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNotAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPbReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRadioStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForResendIncallMute(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRestrictedStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRingbackTone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSignalInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53ClirInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForTetheredModeStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
.end method

.method public abstract unsetPDNClose(Landroid/os/Handler;)V
.end method

.method public abstract unsetUsatUserConfirmationRequest(Landroid/os/Handler;)V
.end method

.method public abstract unsetUsatUserNotification(Landroid/os/Handler;)V
.end method

.method public abstract writePhonebookEntriesEx(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method
