.class public final Lcom/picvision/seaweedweather/model/Recommend$RPic;
.super Ljava/lang/Object;
.source "Recommend.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picvision/seaweedweather/model/Recommend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RPic"
.end annotation


# instance fields
.field private position:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Recommend$RPic;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Recommend$RPic;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Recommend$RPic;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Recommend$RPic;->position:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Recommend$RPic;->text:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Recommend$RPic;->url:Ljava/lang/String;

    .line 72
    return-void
.end method
