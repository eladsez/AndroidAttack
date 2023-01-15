.class public Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "Regex.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Matcher"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/keywords/Regex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatcherWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Ljava/util/regex/Matcher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Find()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;
    check-cast p0, Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public GetEnd(I)I
    .locals 1
    .param p1, "Index"    # I

    .prologue
    .line 165
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;
    check-cast p0, Ljava/util/regex/Matcher;

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    return v0
.end method

.method public GetStart(I)I
    .locals 1
    .param p1, "Index"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;
    check-cast p0, Ljava/util/regex/Matcher;

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    return v0
.end method

.method public Group(I)Ljava/lang/String;
    .locals 1
    .param p1, "Index"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;
    check-cast p0, Ljava/util/regex/Matcher;

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;
    check-cast p0, Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    return v0
.end method

.method public getMatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;
    check-cast p0, Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
