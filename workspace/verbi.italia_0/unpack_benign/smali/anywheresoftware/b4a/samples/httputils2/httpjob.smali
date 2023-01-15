.class public Lanywheresoftware/b4a/samples/httputils2/httpjob;
.super Lanywheresoftware/b4a/B4AClass$ImplB4AClass;
.source "httpjob.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$SubDelegator;


# static fields
.field private static htSubs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public __c:Lanywheresoftware/b4a/keywords/Common;

.field public _errormessage:Ljava/lang/String;

.field public _httputils2service:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

.field public _jobname:Ljava/lang/String;

.field public _password:Ljava/lang/String;

.field public _req:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

.field public _success:Z

.field public _tag:Ljava/lang/Object;

.field public _target:Ljava/lang/Object;

.field public _taskid:Ljava/lang/String;

.field public _username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, ""

    .line 8
    invoke-direct {p0}, Lanywheresoftware/b4a/B4AClass$ImplB4AClass;-><init>()V

    .line 22
    iput-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    .line 23
    const-string v0, ""

    iput-object v2, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_jobname:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_success:Z

    .line 25
    const-string v0, ""

    iput-object v2, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_username:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v2, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_password:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v2, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_errormessage:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_target:Ljava/lang/Object;

    .line 29
    const-string v0, ""

    iput-object v2, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_taskid:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_req:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    .line 31
    iput-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_tag:Ljava/lang/Object;

    .line 32
    iput-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_httputils2service:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    return-void
.end method

.method private innerInitialize(Lanywheresoftware/b4a/BA;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->ba:Lanywheresoftware/b4a/BA;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lanywheresoftware/b4a/BA;

    sget-object v1, Lanywheresoftware/b4a/samples/httputils2/httpjob;->htSubs:Ljava/util/HashMap;

    const-string v2, "anywheresoftware.b4a.samples.httputils2.httpjob"

    invoke-direct {v0, p1, p0, v1, v2}, Lanywheresoftware/b4a/BA;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)V

    iput-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->ba:Lanywheresoftware/b4a/BA;

    .line 13
    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->htSubs:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->ba:Lanywheresoftware/b4a/BA;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/BA;->loadHtSubs(Ljava/lang/Class;)V

    .line 15
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    sput-object v0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->htSubs:Ljava/util/HashMap;

    .line 18
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_class_globals()Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public _class_globals()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v1, ""

    .line 36
    const-string v0, ""

    iput-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_jobname:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_success:Z

    .line 40
    const-string v0, ""

    iput-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_username:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_password:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_errormessage:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_target:Ljava/lang/Object;

    .line 47
    const-string v0, ""

    iput-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_taskid:Ljava/lang/String;

    .line 49
    new-instance v0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_req:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_tag:Ljava/lang/Object;

    .line 53
    const-string v0, ""

    return-object v1
.end method

.method public _complete(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_taskid:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    invoke-virtual {p0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->getActivityBA()Lanywheresoftware/b4a/BA;

    move-result-object v0

    iget-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_target:Ljava/lang/Object;

    const-string v2, "JobDone"

    invoke-static {v0, v1, v2, p0}, Lanywheresoftware/b4a/keywords/Common;->CallSubDelayed2(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const-string v0, ""

    return-object v0
.end method

.method public _download(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_req:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->InitializeGet(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    invoke-virtual {p0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->getActivityBA()Lanywheresoftware/b4a/BA;

    move-result-object v0

    iget-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_httputils2service:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    invoke-static {}, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->getObject()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SubmitJob"

    invoke-static {v0, v1, v2, p0}, Lanywheresoftware/b4a/keywords/Common;->CallSubDelayed2(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string v0, ""

    return-object v0
.end method

.method public _download2(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v8, "UTF8"

    .line 74
    .line 79
    new-instance v0, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;-><init>()V

    .line 81
    invoke-virtual {v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Initialize()V

    .line 83
    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 85
    array-length v1, p2

    if-lez v1, :cond_0

    .line 86
    const-string v1, "?"

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 88
    :cond_0
    new-instance v1, Lanywheresoftware/b4a/objects/StringUtils;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/StringUtils;-><init>()V

    .line 92
    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-double v2, v2

    .line 93
    const/4 v4, 0x0

    :goto_0
    int-to-double v5, v4

    cmpg-double v5, v5, v2

    if-lez v5, :cond_1

    .line 104
    iget-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_req:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->ToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->InitializeGet(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    invoke-virtual {p0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->getActivityBA()Lanywheresoftware/b4a/BA;

    move-result-object v0

    iget-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_httputils2service:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    invoke-static {}, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->getObject()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SubmitJob"

    invoke-static {v0, v1, v2, p0}, Lanywheresoftware/b4a/keywords/Common;->CallSubDelayed2(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string v0, ""

    return-object v0

    .line 95
    :cond_1
    if-lez v4, :cond_2

    .line 96
    const-string v5, "&"

    invoke-virtual {v0, v5}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 98
    :cond_2
    aget-object v5, p2, v4

    const-string v6, "UTF8"

    invoke-virtual {v1, v5, v8}, Lanywheresoftware/b4a/objects/StringUtils;->EncodeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 100
    add-int/lit8 v5, v4, 0x1

    aget-object v5, p2, v5

    const-string v6, "UTF8"

    invoke-virtual {v1, v5, v8}, Lanywheresoftware/b4a/objects/StringUtils;->EncodeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 93
    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double/2addr v4, v6

    double-to-int v4, v4

    goto :goto_0
.end method

.method public _getbitmap()Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    .line 114
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    .line 116
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_httputils2service:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_tempfolder:Ljava/lang/String;

    iget-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_taskid:Ljava/lang/String;

    invoke-static {v0, v1}, Lanywheresoftware/b4a/keywords/Common;->LoadBitmap(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    move-result-object v0

    .line 118
    return-object v0
.end method

.method public _getinputstream()Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    .line 126
    new-instance v0, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;-><init>()V

    .line 128
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_httputils2service:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_tempfolder:Ljava/lang/String;

    iget-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_taskid:Ljava/lang/String;

    invoke-static {v0, v1}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v0

    .line 130
    return-object v0
.end method

.method public _getrequest()Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_req:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    return-object v0
.end method

.method public _getstring()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    const-string v0, "UTF8"

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_getstring2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public _getstring2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v0, ""

    .line 149
    .line 150
    const-string v0, ""

    .line 153
    new-instance v0, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;-><init>()V

    .line 155
    iget-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    iget-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_httputils2service:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    sget-object v1, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_tempfolder:Ljava/lang/String;

    iget-object v2, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_taskid:Ljava/lang/String;

    invoke-static {v1, v2}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v0, p0, p1}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Initialize2(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 157
    const-string v1, ""

    .line 159
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->ReadAll()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Close()V

    .line 163
    return-object v1
.end method

.method public _initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->innerInitialize(Lanywheresoftware/b4a/BA;)V

    .line 171
    iput-object p2, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_jobname:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_target:Ljava/lang/Object;

    .line 175
    const-string v0, ""

    return-object v0
.end method

.method public _postbytes(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_req:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    invoke-virtual {v0, p1, p2}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->InitializePost2(Ljava/lang/String;[B)V

    .line 182
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    invoke-virtual {p0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->getActivityBA()Lanywheresoftware/b4a/BA;

    move-result-object v0

    iget-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_httputils2service:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    invoke-static {}, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->getObject()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SubmitJob"

    invoke-static {v0, v1, v2, p0}, Lanywheresoftware/b4a/keywords/Common;->CallSubDelayed2(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    const-string v0, ""

    return-object v0
.end method

.method public _postfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v3, ""

    .line 187
    .line 194
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirAssets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    const-string v0, "Cannot send files from the assets folder."

    invoke-static {v0}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V

    .line 198
    const-string v0, ""

    move-object v0, v3

    .line 223
    :goto_0
    return-object v0

    .line 201
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {p2, p3}, Lanywheresoftware/b4a/objects/streams/File;->Size(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 203
    new-instance v0, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;-><init>()V

    .line 205
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {p2, p3}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v0

    .line 207
    const v2, 0xf4240

    if-ge v1, v2, :cond_1

    .line 209
    new-instance v2, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;

    invoke-direct {v2}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;-><init>()V

    .line 211
    invoke-virtual {v2, v1}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->InitializeToBytesArray(I)V

    .line 213
    iget-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lanywheresoftware/b4a/objects/streams/File;->Copy2(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 215
    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->ToBytesArray()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_postbytes(Ljava/lang/String;[B)Ljava/lang/String;

    .line 223
    :goto_1
    const-string v0, ""

    move-object v0, v3

    goto :goto_0

    .line 218
    :cond_1
    iget-object v2, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_req:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v2, p1, v0, v1}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->InitializePost(Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 220
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    invoke-virtual {p0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->getActivityBA()Lanywheresoftware/b4a/BA;

    move-result-object v0

    iget-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_httputils2service:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    invoke-static {}, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->getObject()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SubmitJob"

    invoke-static {v0, v1, v2, p0}, Lanywheresoftware/b4a/keywords/Common;->CallSubDelayed2(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public _poststring(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    const-string v0, "UTF8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_postbytes(Ljava/lang/String;[B)Ljava/lang/String;

    .line 230
    const-string v0, ""

    return-object v0
.end method

.method public _release()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->__c:Lanywheresoftware/b4a/keywords/Common;

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_httputils2service:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    sget-object v0, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_tempfolder:Ljava/lang/String;

    iget-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_taskid:Ljava/lang/String;

    invoke-static {v0, v1}, Lanywheresoftware/b4a/objects/streams/File;->Delete(Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    const-string v0, ""

    return-object v0
.end method

.method public callSub(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iput-object p2, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->sender:Ljava/lang/Object;

    .line 241
    sget-object v0, Lanywheresoftware/b4a/BA$SubDelegator;->SubNotFound:Ljava/lang/Object;

    return-object v0
.end method
