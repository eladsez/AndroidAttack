.class public Lanywheresoftware/b4a/samples/httputils2/httputils2service;
.super Landroid/app/Service;
.source "httputils2service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/samples/httputils2/httputils2service$httputils2service_BR;
    }
.end annotation


# static fields
.field public static _hc:Lanywheresoftware/b4a/http/HttpClientWrapper;

.field public static _taskcounter:I

.field public static _taskidtojob:Lanywheresoftware/b4a/objects/collections/Map;

.field public static _tempfolder:Ljava/lang/String;

.field static mostCurrent:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

.field public static processBA:Lanywheresoftware/b4a/BA;


# instance fields
.field public __c:Lanywheresoftware/b4a/keywords/Common;

.field private _service:Lanywheresoftware/b4a/objects/ServiceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    sput-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_hc:Lanywheresoftware/b4a/http/HttpClientWrapper;

    .line 86
    sput-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_taskidtojob:Lanywheresoftware/b4a/objects/collections/Map;

    .line 87
    const-string v0, ""

    sput-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_tempfolder:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    sput v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_taskcounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->__c:Lanywheresoftware/b4a/keywords/Common;

    return-void
.end method

.method public static _completejob(IZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    .line 93
    new-instance v0, Lanywheresoftware/b4a/samples/httputils2/httpjob;

    invoke-direct {v0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;-><init>()V

    .line 95
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_taskidtojob:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/collections/Map;->Get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/samples/httputils2/httpjob;

    check-cast v0, Lanywheresoftware/b4a/samples/httputils2/httpjob;

    .line 97
    sget-object v1, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_taskidtojob:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lanywheresoftware/b4a/objects/collections/Map;->Remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iput-boolean p1, v0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_success:Z

    .line 101
    iput-object p2, v0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_errormessage:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, p0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_complete(I)Ljava/lang/String;

    .line 105
    const-string v0, ""

    return-object v0
.end method

.method public static _hc_responseerror(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    if-eqz p0, :cond_0

    .line 113
    :try_start_0
    const-string v0, "UTF8"

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->Release()V

    .line 123
    :cond_0
    const/4 v0, 0x0

    invoke-static {p3, v0, p1}, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_completejob(IZLjava/lang/String;)Ljava/lang/String;

    .line 125
    const-string v0, ""

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/BA;->setLastException(Ljava/lang/Exception;)V

    .line 117
    const-string v0, "Failed to read error message."

    invoke-static {v0}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static _hc_responsesuccess(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    sget-object v1, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    const-string v2, "response"

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_tempfolder:Ljava/lang/String;

    invoke-static {p1}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lanywheresoftware/b4a/objects/streams/File;->OpenOutput(Ljava/lang/String;Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;

    const/4 v4, 0x1

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->GetAsynchronously(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/io/OutputStream;ZI)Z

    .line 132
    const-string v0, ""

    return-object v0
.end method

.method public static _process_globals()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v1, ""

    .line 137
    new-instance v0, Lanywheresoftware/b4a/http/HttpClientWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/http/HttpClientWrapper;-><init>()V

    sput-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_hc:Lanywheresoftware/b4a/http/HttpClientWrapper;

    .line 139
    new-instance v0, Lanywheresoftware/b4a/objects/collections/Map;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/Map;-><init>()V

    sput-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_taskidtojob:Lanywheresoftware/b4a/objects/collections/Map;

    .line 141
    const-string v0, ""

    sput-object v1, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_tempfolder:Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    sput v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_taskcounter:I

    .line 145
    const-string v0, ""

    return-object v1
.end method

.method public static _response_streamfinish(ZI)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v1, ""

    .line 150
    if-eqz p0, :cond_0

    .line 152
    const-string v0, ""

    invoke-static {p1, p0, v1}, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_completejob(IZLjava/lang/String;)Ljava/lang/String;

    .line 158
    :goto_0
    const-string v0, ""

    return-object v1

    .line 155
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    invoke-static {v0}, Lanywheresoftware/b4a/keywords/Common;->LastException(Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/objects/B4AException;

    move-result-object v0

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/B4AException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_completejob(IZLjava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static _service_create()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirInternalCache()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_tempfolder:Ljava/lang/String;

    .line 165
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_hc:Lanywheresoftware/b4a/http/HttpClientWrapper;

    const-string v1, "hc"

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/http/HttpClientWrapper;->Initialize(Ljava/lang/String;)V

    .line 167
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_taskidtojob:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/Map;->Initialize()V

    .line 169
    const-string v0, ""

    return-object v0
.end method

.method public static _service_destroy()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    const-string v0, ""

    return-object v0
.end method

.method public static _service_start(Lanywheresoftware/b4a/objects/IntentWrapper;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    const-string v0, ""

    return-object v0
.end method

.method public static _submitjob(Lanywheresoftware/b4a/samples/httputils2/httpjob;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v2, ""

    .line 184
    sget v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_taskcounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_taskcounter:I

    .line 186
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_taskidtojob:Lanywheresoftware/b4a/objects/collections/Map;

    sget v1, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_taskcounter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_username:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_password:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_hc:Lanywheresoftware/b4a/http/HttpClientWrapper;

    sget-object v1, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {p0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_getrequest()Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    move-result-object v2

    sget v3, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_taskcounter:I

    iget-object v4, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_username:Ljava/lang/String;

    iget-object v5, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_password:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/http/HttpClientWrapper;->ExecuteCredentials(Lanywheresoftware/b4a/BA;Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;ILjava/lang/String;Ljava/lang/String;)Z

    .line 196
    :goto_0
    sget v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_taskcounter:I

    return v0

    .line 193
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_hc:Lanywheresoftware/b4a/http/HttpClientWrapper;

    sget-object v1, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {p0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_getrequest()Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    move-result-object v2

    sget v3, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_taskcounter:I

    invoke-virtual {v0, v1, v2, v3}, Lanywheresoftware/b4a/http/HttpClientWrapper;->Execute(Lanywheresoftware/b4a/BA;Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;I)Z

    goto :goto_0
.end method

.method public static getObject()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 23
    const-class v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    return-object v0
.end method

.method private handleStart(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v2, "b4a_internal_intent"

    const-string v3, "service_start"

    .line 54
    const-string v0, "** Service (httputils2service) Start **"

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    const-string v1, "service_start"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    .line 56
    if-eqz p0, :cond_1

    .line 57
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    .line 58
    new-instance v0, Lanywheresoftware/b4a/objects/IntentWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/IntentWrapper;-><init>()V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const-string v1, "b4a_internal_intent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    const-string v1, "b4a_internal_intent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->setObject(Ljava/lang/Object;)V

    .line 65
    :cond_0
    :goto_0
    sget-object v1, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    const-string v2, "service_start"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v1, v5, v3, v2}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_1
    :goto_1
    return-void

    .line 63
    :cond_2
    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/IntentWrapper;->setObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_3
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "service_start"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v3, v1}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 27
    sput-object p0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->mostCurrent:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    .line 28
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lanywheresoftware/b4a/BA;

    const-string v4, "anywheresoftware.b4a.samples.httputils2"

    const-string v5, "anywheresoftware.b4a.samples.httputils2.httputils2service"

    move-object v1, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lanywheresoftware/b4a/BA;-><init>(Landroid/content/Context;Lanywheresoftware/b4a/BALayout;Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    .line 31
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".main"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "initializeProcessGlobals"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/BA;->loadHtSubs(Ljava/lang/Class;)V

    .line 36
    invoke-static {}, Lanywheresoftware/b4a/objects/ServiceHelper;->init()V

    .line 38
    :cond_0
    new-instance v0, Lanywheresoftware/b4a/objects/ServiceHelper;

    invoke-direct {v0, p0}, Lanywheresoftware/b4a/objects/ServiceHelper;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_service:Lanywheresoftware/b4a/objects/ServiceHelper;

    .line 39
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    iput-object p0, v0, Lanywheresoftware/b4a/BA;->service:Landroid/app/Service;

    .line 40
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v6}, Lanywheresoftware/b4a/BA;->setActivityPaused(Z)V

    .line 41
    const-string v0, "** Service (httputils2service) Create **"

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "service_create"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1, v3}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    const-string v0, "** Service (httputils2service) Destroy **"

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "service_destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    iput-object v3, v0, Lanywheresoftware/b4a/BA;->service:Landroid/app/Service;

    .line 81
    sput-object v3, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->mostCurrent:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    .line 82
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->processBA:Lanywheresoftware/b4a/BA;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/BA;->setActivityPaused(Z)V

    .line 83
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->handleStart(Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->handleStart(Landroid/content/Intent;)V

    .line 51
    const/4 v0, 0x2

    return v0
.end method
