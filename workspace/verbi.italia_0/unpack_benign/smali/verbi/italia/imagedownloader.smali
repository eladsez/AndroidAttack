.class public Lverbi/italia/imagedownloader;
.super Landroid/app/Service;
.source "imagedownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverbi/italia/imagedownloader$imagedownloader_BR;
    }
.end annotation


# static fields
.field public static _vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

.field public static _vvvvvvv2:Lanywheresoftware/b4a/objects/collections/Map;

.field public static _vvvvvvv3:Lanywheresoftware/b4a/objects/collections/Map;

.field static mostCurrent:Lverbi/italia/imagedownloader;

.field public static processBA:Lanywheresoftware/b4a/BA;


# instance fields
.field public __c:Lanywheresoftware/b4a/keywords/Common;

.field private _service:Lanywheresoftware/b4a/objects/ServiceHelper;

.field public _vvvvv4:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

.field public _vvvvv5:Lverbi/italia/main;

.field public _vvvvv6:Lverbi/italia/tempiverbo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    sput-object v0, Lverbi/italia/imagedownloader;->_vvvvvvv2:Lanywheresoftware/b4a/objects/collections/Map;

    .line 89
    sput-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    .line 90
    sput-object v0, Lverbi/italia/imagedownloader;->_vvvvvvv3:Lanywheresoftware/b4a/objects/collections/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 87
    iput-object v0, p0, Lverbi/italia/imagedownloader;->__c:Lanywheresoftware/b4a/keywords/Common;

    .line 91
    iput-object v0, p0, Lverbi/italia/imagedownloader;->_vvvvv4:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    .line 92
    iput-object v0, p0, Lverbi/italia/imagedownloader;->_vvvvv5:Lverbi/italia/main;

    .line 93
    iput-object v0, p0, Lverbi/italia/imagedownloader;->_vvvvv6:Lverbi/italia/tempiverbo;

    return-void
.end method

.method public static _jobdone(Lanywheresoftware/b4a/samples/httputils2/httpjob;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "SegnaPostoImg.png"

    const-string v7, ""

    .line 139
    .line 141
    const-string v0, ""

    .line 147
    :try_start_0
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvvv3:Lanywheresoftware/b4a/objects/collections/Map;

    iget-object v1, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_jobname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/collections/Map;->Remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-boolean v0, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_success:Z

    if-eqz v0, :cond_3

    .line 151
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    .line 152
    invoke-virtual {p0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_getbitmap()Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    move-result-object v1

    .line 154
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvvv2:Lanywheresoftware/b4a/objects/collections/Map;

    iget-object v2, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_jobname:Ljava/lang/String;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/Map;->IsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/Map;->getSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sub-int v2, v0, v6

    move v3, v5

    .line 161
    :goto_0
    if-le v3, v2, :cond_1

    .line 229
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_release()Ljava/lang/String;

    .line 231
    const-string v0, ""

    return-object v7

    .line 163
    :cond_1
    :try_start_1
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/objects/collections/Map;->GetValueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->ObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v4, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_jobname:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    new-instance v4, Lanywheresoftware/b4a/objects/ImageViewWrapper;

    invoke-direct {v4}, Lanywheresoftware/b4a/objects/ImageViewWrapper;-><init>()V

    .line 168
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/objects/collections/Map;->GetKeyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->SetBackgroundImage(Landroid/graphics/Bitmap;)V

    .line 161
    :cond_2
    add-int/lit8 v0, v3, 0x0

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    goto :goto_0

    .line 177
    :cond_3
    new-instance v1, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    .line 179
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirAssets()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SegnaPostoImg.png"

    invoke-virtual {v1, v0, v2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->Initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/Map;->IsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/Map;->getSize()I

    move-result v0

    sub-int v2, v0, v6

    move v3, v5

    .line 186
    :goto_1
    if-gt v3, v2, :cond_0

    .line 188
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/objects/collections/Map;->GetValueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->ObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v4, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_jobname:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    new-instance v4, Lanywheresoftware/b4a/objects/ImageViewWrapper;

    invoke-direct {v4}, Lanywheresoftware/b4a/objects/ImageViewWrapper;-><init>()V

    .line 193
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/objects/collections/Map;->GetKeyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->SetBackgroundImage(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :cond_4
    add-int/lit8 v0, v3, 0x0

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    goto :goto_1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    sget-object v1, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/BA;->setLastException(Ljava/lang/Exception;)V

    .line 204
    new-instance v1, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    .line 206
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirAssets()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SegnaPostoImg.png"

    invoke-virtual {v1, v0, v8}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->Initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/Map;->IsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/Map;->getSize()I

    move-result v0

    sub-int v2, v0, v6

    move v3, v5

    .line 213
    :goto_2
    if-gt v3, v2, :cond_0

    .line 215
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/objects/collections/Map;->GetValueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->ObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v4, p0, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_jobname:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 219
    new-instance v4, Lanywheresoftware/b4a/objects/ImageViewWrapper;

    invoke-direct {v4}, Lanywheresoftware/b4a/objects/ImageViewWrapper;-><init>()V

    .line 220
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/objects/collections/Map;->GetKeyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->SetBackgroundImage(Landroid/graphics/Bitmap;)V

    .line 213
    :cond_5
    add-int/lit8 v0, v3, 0x0

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    goto :goto_2
.end method

.method public static _process_globals()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lanywheresoftware/b4a/objects/collections/Map;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/Map;-><init>()V

    sput-object v0, Lverbi/italia/imagedownloader;->_vvvvvvv2:Lanywheresoftware/b4a/objects/collections/Map;

    .line 238
    new-instance v0, Lanywheresoftware/b4a/objects/collections/Map;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/Map;-><init>()V

    sput-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    .line 240
    new-instance v0, Lanywheresoftware/b4a/objects/collections/Map;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/Map;-><init>()V

    sput-object v0, Lverbi/italia/imagedownloader;->_vvvvvvv3:Lanywheresoftware/b4a/objects/collections/Map;

    .line 242
    const-string v0, ""

    return-object v0
.end method

.method public static _service_create()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 247
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/Map;->Initialize()V

    .line 249
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvvv2:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/Map;->Initialize()V

    .line 251
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvvv3:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/Map;->Initialize()V

    .line 253
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
    .line 258
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
    .line 263
    const-string v0, ""

    return-object v0
.end method

.method public static _vvvvvv7()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/Map;->Clear()V

    .line 99
    const-string v0, ""

    return-object v0
.end method

.method public static _vvvvvvv1(Lanywheresoftware/b4a/objects/collections/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v6, ""

    .line 102
    .line 103
    const-string v0, ""

    .line 110
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int v1, v0, v1

    .line 111
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-le v2, v1, :cond_0

    .line 136
    const-string v0, ""

    return-object v6

    .line 113
    :cond_0
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvv0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/collections/Map;->GetKeyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/collections/Map;->GetValueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/collections/Map;->GetValueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->ObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 117
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvvv2:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/objects/collections/Map;->ContainsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    new-instance v4, Lanywheresoftware/b4a/objects/ImageViewWrapper;

    invoke-direct {v4}, Lanywheresoftware/b4a/objects/ImageViewWrapper;-><init>()V

    .line 120
    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/collections/Map;->GetKeyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 122
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvvv2:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/objects/collections/Map;->Get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->SetBackgroundImage(Landroid/graphics/Bitmap;)V

    .line 111
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x0

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_0

    .line 123
    :cond_2
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvvv3:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/objects/collections/Map;->ContainsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    sget-object v0, Lverbi/italia/imagedownloader;->_vvvvvvv3:Lanywheresoftware/b4a/objects/collections/Map;

    const-string v4, ""

    invoke-virtual {v0, v3, v6}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Lanywheresoftware/b4a/samples/httputils2/httpjob;

    invoke-direct {v0}, Lanywheresoftware/b4a/samples/httputils2/httpjob;-><init>()V

    .line 129
    sget-object v4, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    invoke-static {}, Lverbi/italia/imagedownloader;->getObject()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v5}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/samples/httputils2/httpjob;->_download(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
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
    const-class v0, Lverbi/italia/imagedownloader;

    return-object v0
.end method

.method private handleStart(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v2, "b4a_internal_intent"

    const-string v3, "service_start"

    .line 57
    const-string v0, "** Service (imagedownloader) Start **"

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    const-string v1, "service_start"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    .line 59
    if-eqz p0, :cond_1

    .line 60
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    .line 61
    new-instance v0, Lanywheresoftware/b4a/objects/IntentWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/IntentWrapper;-><init>()V

    .line 62
    if-eqz p1, :cond_0

    .line 63
    const-string v1, "b4a_internal_intent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    const-string v1, "b4a_internal_intent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lanywheresoftware/b4a/objects/IntentWrapper;->setObject(Ljava/lang/Object;)V

    .line 68
    :cond_0
    :goto_0
    sget-object v1, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    const-string v2, "service_start"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v1, v5, v3, v2}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1
    :goto_1
    return-void

    .line 66
    :cond_2
    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/IntentWrapper;->setObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_3
    sget-object v0, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "service_start"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v3, v1}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string v5, "verbi.italia.imagedownloader"

    .line 27
    sput-object p0, Lverbi/italia/imagedownloader;->mostCurrent:Lverbi/italia/imagedownloader;

    .line 28
    sget-object v0, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lanywheresoftware/b4a/BA;

    const-string v4, "verbi.italia"

    const-string v1, "verbi.italia.imagedownloader"

    move-object v1, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lanywheresoftware/b4a/BA;-><init>(Landroid/content/Context;Lanywheresoftware/b4a/BALayout;Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

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
    sget-object v0, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/BA;->loadHtSubs(Ljava/lang/Class;)V

    .line 36
    invoke-static {}, Lanywheresoftware/b4a/objects/ServiceHelper;->init()V

    .line 38
    :cond_0
    new-instance v0, Lanywheresoftware/b4a/objects/ServiceHelper;

    invoke-direct {v0, p0}, Lanywheresoftware/b4a/objects/ServiceHelper;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lverbi/italia/imagedownloader;->_service:Lanywheresoftware/b4a/objects/ServiceHelper;

    .line 39
    sget-object v0, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    iput-object p0, v0, Lanywheresoftware/b4a/BA;->service:Landroid/app/Service;

    .line 40
    sget-object v0, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v7}, Lanywheresoftware/b4a/BA;->setActivityPaused(Z)V

    .line 41
    sget-object v0, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->isShellModeRuntimeCheck(Lanywheresoftware/b4a/BA;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    sget-object v1, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    const-string v4, "CREATE"

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    const-string v0, "verbi.italia.imagedownloader"

    aput-object v5, v6, v7

    sget-object v0, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    aput-object v0, v6, v8

    const/4 v0, 0x2

    iget-object v3, p0, Lverbi/italia/imagedownloader;->_service:Lanywheresoftware/b4a/objects/ServiceHelper;

    aput-object v3, v6, v0

    move v3, v8

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_1
    const-string v0, "** Service (imagedownloader) Create **"

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "service_create"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1, v3}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
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

    .line 81
    const-string v0, "** Service (imagedownloader) Destroy **"

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "service_destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    iput-object v3, v0, Lanywheresoftware/b4a/BA;->service:Landroid/app/Service;

    .line 84
    sput-object v3, Lverbi/italia/imagedownloader;->mostCurrent:Lverbi/italia/imagedownloader;

    .line 85
    sget-object v0, Lverbi/italia/imagedownloader;->processBA:Lanywheresoftware/b4a/BA;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/BA;->setActivityPaused(Z)V

    .line 86
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lverbi/italia/imagedownloader;->handleStart(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lverbi/italia/imagedownloader;->handleStart(Landroid/content/Intent;)V

    .line 54
    const/4 v0, 0x2

    return v0
.end method
