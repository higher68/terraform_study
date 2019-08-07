resource "aws_s3_bucket" "private" {
    bucket = "private-pragmatic-terraform-on-aws"  # 全世界で一意の必要
    versioning {
        enabled = true # trueにするとオブジェクトを変更・削除しても前のものにいつでも復元できる
    }
    # 暗号化を制御できる
    server_side_encryption_configuration {
        role {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256" # アルゴリズム選んでる
            }
        }
    }
}
