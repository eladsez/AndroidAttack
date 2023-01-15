.class public Lcom/ibneer/wooriie/BasicInfo;
.super Ljava/lang/Object;
.source "BasicInfo.java"


# static fields
.field public static GCM_INTENT_FILLTER:Ljava/lang/String; = null

.field public static final GOOGLE_API_KEY:Ljava/lang/String; = "AIzaSyB3_c3Aka5ScqR-8s9nmdQkkCz5uwMHJrs"

.field static final HOME_PAGE_URL:Ljava/lang/String; = ""

.field static final INSERT_PAGE:Ljava/lang/String; = ""

.field public static final PROJECT_ID:Ljava/lang/String; = "1070105616021"

.field public static RegistrationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, ""

    sput-object v0, Lcom/ibneer/wooriie/BasicInfo;->RegistrationId:Ljava/lang/String;

    .line 30
    const-string v0, "com.wooriie.GCM_INTENT_FILLTER"

    sput-object v0, Lcom/ibneer/wooriie/BasicInfo;->GCM_INTENT_FILLTER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
