.class public final enum Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;
.super Ljava/lang/Enum;
.source "UserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OPEN_NOTE_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EDIT:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

.field private static final synthetic ENUM$VALUES:[Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

.field public static final enum NEW:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;->NEW:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;->EDIT:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;->NEW:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;->EDIT:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;->ENUM$VALUES:[Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    return-object v0
.end method

.method public static values()[Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;->ENUM$VALUES:[Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    array-length v1, v0

    new-array v2, v1, [Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
