.class Lcom/android/amomin1gofish/GameActivity$4;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/amomin1gofish/GameActivity;->handleConnection(Landroid/bluetooth/BluetoothSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/amomin1gofish/GameActivity;

.field final synthetic val$socket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothSocket;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/amomin1gofish/GameActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iput-object p2, p0, Lcom/android/amomin1gofish/GameActivity$4;->val$socket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$4;->val$socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 186
    .local v0, "inputStream":Ljava/io/InputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 190
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :goto_a
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 191
    .local v2, "bytes":I
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 193
    .local v3, "data":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v5, Lcom/android/amomin1gofish/GameActivity$4$1;

    invoke-direct {v5, p0, v3}, Lcom/android/amomin1gofish/GameActivity$4$1;-><init>(Lcom/android/amomin1gofish/GameActivity$4;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/amomin1gofish/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 290
    .end local v3    # "data":Ljava/lang/String;
    goto :goto_a

    .line 291
    .end local v2    # "bytes":I
    :catch_1f
    move-exception v0

    .line 292
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 294
    .end local v0    # "e":Ljava/io/IOException;
    return-void
.end method
