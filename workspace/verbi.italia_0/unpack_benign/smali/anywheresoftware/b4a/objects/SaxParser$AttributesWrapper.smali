.class public Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SaxParser.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Attributes"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/SaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributesWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Lorg/xml/sax/Attributes;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public GetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "Index"    # I

    .prologue
    .line 140
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;
    check-cast p0, Lorg/xml/sax/Attributes;

    invoke-interface {p0, p1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "Index"    # I

    .prologue
    .line 147
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;
    check-cast p0, Lorg/xml/sax/Attributes;

    invoke-interface {p0, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetValue2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "Uri"    # Ljava/lang/String;
    .param p2, "Name"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;
    check-cast p0, Lorg/xml/sax/Attributes;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "r":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;
    check-cast p0, Lorg/xml/sax/Attributes;

    invoke-interface {p0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    return v0
.end method
