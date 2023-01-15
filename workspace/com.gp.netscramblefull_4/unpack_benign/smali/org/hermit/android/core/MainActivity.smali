.class public Lorg/hermit/android/core/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/core/MainActivity$ActivityListener;
    }
.end annotation


# instance fields
.field private aboutText:I

.field private appUtils:Lorg/hermit/android/core/AppUtils;

.field private codeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/hermit/android/core/MainActivity$ActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private errorReporter:Lorg/hermit/android/core/Errors;

.field private eulaDialog:Lorg/hermit/android/core/OneTimeDialog;

.field private homeButton:I

.field private homeLink:I

.field private licButton:I

.field private licLink:I

.field private messageDialog:Lorg/hermit/android/notice/InfoBox;

.field private nextRequest:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 392
    iput-object v2, p0, Lorg/hermit/android/core/MainActivity;->appUtils:Lorg/hermit/android/core/AppUtils;

    .line 399
    const/high16 v0, 0x60000000

    iput v0, p0, Lorg/hermit/android/core/MainActivity;->nextRequest:I

    .line 405
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/hermit/android/core/MainActivity;->codeMap:Ljava/util/HashMap;

    .line 408
    iput-object v2, p0, Lorg/hermit/android/core/MainActivity;->eulaDialog:Lorg/hermit/android/core/OneTimeDialog;

    .line 411
    iput-object v2, p0, Lorg/hermit/android/core/MainActivity;->messageDialog:Lorg/hermit/android/notice/InfoBox;

    .line 414
    iput v1, p0, Lorg/hermit/android/core/MainActivity;->homeButton:I

    .line 415
    iput v1, p0, Lorg/hermit/android/core/MainActivity;->homeLink:I

    .line 416
    iput v1, p0, Lorg/hermit/android/core/MainActivity;->licButton:I

    .line 417
    iput v1, p0, Lorg/hermit/android/core/MainActivity;->licLink:I

    .line 420
    iput v1, p0, Lorg/hermit/android/core/MainActivity;->aboutText:I

    .line 47
    return-void
.end method

.method private createMessageBox()V
    .locals 2

    .prologue
    .line 295
    new-instance v1, Lorg/hermit/android/notice/InfoBox;

    invoke-direct {v1, p0}, Lorg/hermit/android/notice/InfoBox;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lorg/hermit/android/core/MainActivity;->messageDialog:Lorg/hermit/android/notice/InfoBox;

    .line 296
    iget-object v1, p0, Lorg/hermit/android/core/MainActivity;->appUtils:Lorg/hermit/android/core/AppUtils;

    invoke-virtual {v1}, Lorg/hermit/android/core/AppUtils;->getVersionString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "version":Ljava/lang/String;
    iget-object v1, p0, Lorg/hermit/android/core/MainActivity;->messageDialog:Lorg/hermit/android/notice/InfoBox;

    invoke-virtual {v1, v0}, Lorg/hermit/android/notice/InfoBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    return-void
.end method


# virtual methods
.method public createEulaBox(III)V
    .locals 6
    .param p1, "title"    # I
    .param p2, "text"    # I
    .param p3, "close"    # I

    .prologue
    .line 164
    new-instance v0, Lorg/hermit/android/core/OneTimeDialog;

    const-string v2, "eula"

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/hermit/android/core/OneTimeDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;III)V

    iput-object v0, p0, Lorg/hermit/android/core/MainActivity;->eulaDialog:Lorg/hermit/android/core/OneTimeDialog;

    .line 165
    return-void
.end method

.method public createMessageBox(I)V
    .locals 2
    .param p1, "close"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    new-instance v1, Lorg/hermit/android/notice/InfoBox;

    invoke-direct {v1, p0, p1}, Lorg/hermit/android/notice/InfoBox;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lorg/hermit/android/core/MainActivity;->messageDialog:Lorg/hermit/android/notice/InfoBox;

    .line 207
    iget-object v1, p0, Lorg/hermit/android/core/MainActivity;->appUtils:Lorg/hermit/android/core/AppUtils;

    invoke-virtual {v1}, Lorg/hermit/android/core/AppUtils;->getVersionString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "version":Ljava/lang/String;
    iget-object v1, p0, Lorg/hermit/android/core/MainActivity;->messageDialog:Lorg/hermit/android/notice/InfoBox;

    invoke-virtual {v1, v0}, Lorg/hermit/android/notice/InfoBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 379
    iget-object v1, p0, Lorg/hermit/android/core/MainActivity;->codeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/core/MainActivity$ActivityListener;

    .line 380
    .local v0, "listener":Lorg/hermit/android/core/MainActivity$ActivityListener;
    if-nez v0, :cond_0

    .line 381
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown request code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-virtual {v0, p2, p3}, Lorg/hermit/android/core/MainActivity$ActivityListener;->onActivityFinished(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-static {p0}, Lorg/hermit/android/core/AppUtils;->getInstance(Landroid/app/Activity;)Lorg/hermit/android/core/AppUtils;

    move-result-object v0

    iput-object v0, p0, Lorg/hermit/android/core/MainActivity;->appUtils:Lorg/hermit/android/core/AppUtils;

    .line 145
    invoke-static {p0}, Lorg/hermit/android/core/Errors;->getInstance(Landroid/content/Context;)Lorg/hermit/android/core/Errors;

    move-result-object v0

    iput-object v0, p0, Lorg/hermit/android/core/MainActivity;->errorReporter:Lorg/hermit/android/core/Errors;

    .line 146
    return-void
.end method

.method public reportException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 316
    iget-object v0, p0, Lorg/hermit/android/core/MainActivity;->errorReporter:Lorg/hermit/android/core/Errors;

    invoke-virtual {v0, p1}, Lorg/hermit/android/core/Errors;->reportException(Ljava/lang/Exception;)V

    .line 317
    return-void
.end method

.method public setAboutInfo(I)V
    .locals 0
    .param p1, "about"    # I

    .prologue
    .line 218
    iput p1, p0, Lorg/hermit/android/core/MainActivity;->aboutText:I

    .line 219
    return-void
.end method

.method public setHomeInfo(I)V
    .locals 1
    .param p1, "link"    # I

    .prologue
    .line 228
    const v0, 0x7f060002

    iput v0, p0, Lorg/hermit/android/core/MainActivity;->homeButton:I

    .line 229
    iput p1, p0, Lorg/hermit/android/core/MainActivity;->homeLink:I

    .line 230
    return-void
.end method

.method public setHomeInfo(II)V
    .locals 0
    .param p1, "button"    # I
    .param p2, "link"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    iput p1, p0, Lorg/hermit/android/core/MainActivity;->homeButton:I

    .line 242
    iput p2, p0, Lorg/hermit/android/core/MainActivity;->homeLink:I

    .line 243
    return-void
.end method

.method public setLicenseInfo(I)V
    .locals 1
    .param p1, "link"    # I

    .prologue
    .line 252
    const v0, 0x7f060001

    iput v0, p0, Lorg/hermit/android/core/MainActivity;->licButton:I

    .line 253
    iput p1, p0, Lorg/hermit/android/core/MainActivity;->licLink:I

    .line 254
    return-void
.end method

.method public setLicenseInfo(II)V
    .locals 0
    .param p1, "button"    # I
    .param p2, "link"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    iput p1, p0, Lorg/hermit/android/core/MainActivity;->licButton:I

    .line 266
    iput p2, p0, Lorg/hermit/android/core/MainActivity;->licLink:I

    .line 267
    return-void
.end method

.method public showAbout()V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lorg/hermit/android/core/MainActivity;->messageDialog:Lorg/hermit/android/notice/InfoBox;

    if-nez v0, :cond_0

    .line 278
    invoke-direct {p0}, Lorg/hermit/android/core/MainActivity;->createMessageBox()V

    .line 280
    :cond_0
    iget-object v0, p0, Lorg/hermit/android/core/MainActivity;->messageDialog:Lorg/hermit/android/notice/InfoBox;

    const/4 v1, 0x1

    iget v2, p0, Lorg/hermit/android/core/MainActivity;->homeButton:I

    iget v3, p0, Lorg/hermit/android/core/MainActivity;->homeLink:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/hermit/android/notice/InfoBox;->setLinkButton(III)V

    .line 281
    iget v0, p0, Lorg/hermit/android/core/MainActivity;->licButton:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/hermit/android/core/MainActivity;->licLink:I

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lorg/hermit/android/core/MainActivity;->messageDialog:Lorg/hermit/android/notice/InfoBox;

    const/4 v1, 0x2

    iget v2, p0, Lorg/hermit/android/core/MainActivity;->licButton:I

    iget v3, p0, Lorg/hermit/android/core/MainActivity;->licLink:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/hermit/android/notice/InfoBox;->setLinkButton(III)V

    .line 283
    :cond_1
    iget-object v0, p0, Lorg/hermit/android/core/MainActivity;->messageDialog:Lorg/hermit/android/notice/InfoBox;

    iget v1, p0, Lorg/hermit/android/core/MainActivity;->aboutText:I

    invoke-virtual {v0, v1}, Lorg/hermit/android/notice/InfoBox;->show(I)V

    .line 284
    return-void
.end method

.method public showEula()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/hermit/android/core/MainActivity;->eulaDialog:Lorg/hermit/android/core/OneTimeDialog;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/hermit/android/core/MainActivity;->eulaDialog:Lorg/hermit/android/core/OneTimeDialog;

    invoke-virtual {v0}, Lorg/hermit/android/core/OneTimeDialog;->show()V

    .line 187
    :cond_0
    return-void
.end method

.method public showFirstEula()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/hermit/android/core/MainActivity;->eulaDialog:Lorg/hermit/android/core/OneTimeDialog;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/hermit/android/core/MainActivity;->eulaDialog:Lorg/hermit/android/core/OneTimeDialog;

    invoke-virtual {v0}, Lorg/hermit/android/core/OneTimeDialog;->showFirst()V

    .line 176
    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;Lorg/hermit/android/core/MainActivity$ActivityListener;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Lorg/hermit/android/core/MainActivity$ActivityListener;

    .prologue
    .line 349
    invoke-static {p2}, Lorg/hermit/android/core/MainActivity$ActivityListener;->access$0(Lorg/hermit/android/core/MainActivity$ActivityListener;)I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget v0, p0, Lorg/hermit/android/core/MainActivity;->nextRequest:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/hermit/android/core/MainActivity;->nextRequest:I

    invoke-static {p2, v0}, Lorg/hermit/android/core/MainActivity$ActivityListener;->access$1(Lorg/hermit/android/core/MainActivity$ActivityListener;I)V

    .line 351
    iget-object v0, p0, Lorg/hermit/android/core/MainActivity;->codeMap:Ljava/util/HashMap;

    invoke-static {p2}, Lorg/hermit/android/core/MainActivity$ActivityListener;->access$0(Lorg/hermit/android/core/MainActivity$ActivityListener;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_0
    invoke-static {p2}, Lorg/hermit/android/core/MainActivity$ActivityListener;->access$0(Lorg/hermit/android/core/MainActivity$ActivityListener;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/hermit/android/core/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 356
    return-void
.end method
