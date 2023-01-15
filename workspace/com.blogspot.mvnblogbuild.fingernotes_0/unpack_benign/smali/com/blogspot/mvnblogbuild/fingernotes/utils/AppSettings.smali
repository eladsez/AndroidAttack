.class public Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;
.super Ljava/lang/Object;
.source "AppSettings.java"


# static fields
.field public static final CONTROLS_ORIENTATION_KEY:Ljava/lang/String; = "CONTROLS_ORIENTATION"

.field public static final FINGER_NOTES_ON_MARKET:Ljava/lang/String; = "com.blogspot.mvnblogbuild.fingernotes"

.field public static final LEFT_CONTROLS_ORIENTATION:Ljava/lang/String; = "L"

.field public static final MAX_ENTITY_OF_NOTES:Ljava/lang/Integer;

.field public static final PREFER_EXTERNAL_STORAGE:Ljava/lang/String; = "E"

.field public static final PREFER_INTERNAL_STORAGE:Ljava/lang/String; = "I"

.field public static final PREFER_STORAGE_KEY:Ljava/lang/String; = "PREFER_STORAGE"

.field public static final RATE_EXECUTION_COUNTER_KEY:Ljava/lang/String; = "RATE_EXECUTION_COUNTER"

.field public static final RIGHT_CONTROLS_ORIENTATION:Ljava/lang/String; = "R"

.field private static appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

.field private static final defaultSettingsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dbConnector:Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

.field private settingsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->MAX_ENTITY_OF_NOTES:Ljava/lang/Integer;

    .line 23
    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings$1;

    invoke-direct {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings$1;-><init>()V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->defaultSettingsMap:Ljava/util/Map;

    .line 6
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;)V
    .locals 4
    .param p1, "dbConnector"    # Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->dbConnector:Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    .line 47
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->dbConnector:Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->loadSettings()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->settingsMap:Ljava/util/Map;

    .line 49
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->defaultSettingsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    return-void

    .line 49
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, "skey":Ljava/lang/String;
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->settingsMap:Ljava/util/Map;

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->defaultSettingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;)Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;
    .locals 2
    .param p0, "dbConnector"    # Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    .prologue
    .line 35
    const-class v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 36
    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    invoke-direct {v0, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    .line 38
    :cond_0
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getDBConnector()Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->dbConnector:Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->settingsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public saveSettings()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->dbConnector:Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->settingsMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->saveSettings(Ljava/util/Map;)V

    .line 62
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->settingsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method
