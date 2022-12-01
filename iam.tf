resource "aws_iam_role_policy" "lambda_policy" {
  name = "lambda_policy"
  role = aws_iam_role.autotag123_ec2_role.id

  policy = "${file("ec2-policy.json")}"
}

resource "aws_iam_role" "autotag123_ec2_role" {
  name = "autotag123_ec2_role"

  assume_role_policy = "${file("assume-policy.json")}"
  }

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "autotag123_ec2_profile"
    role = "${aws_iam_role.autotag123_ec2_role.name}"
}
