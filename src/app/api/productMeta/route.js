import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";

export async function POST(req, res) {
  BigInt.prototype.toJSON = function () {
    return this.toString();
  };
  try {
    const prisma = new PrismaClient();
    let reqBody = await req.json();
    let result = await prisma.users.createMany({
      data: reqBody,
    });
    return NextResponse.json({ status: "success", result: result });
  } catch (error) {
    return NextResponse.json({ status: "fail", result: error.toString() });
  }
}
//find many
export async function GET(req, res) {
  BigInt.prototype.toJSON = function () {
    return this.toString();
  };
  try {
    const prisma = new PrismaClient();

    let result = await prisma.users.findMany();
    return NextResponse.json({ status: "success", result: result });
  } catch (error) {
    return NextResponse.json({ status: "fail", result: error.toString() });
  }
}
// update
export async function PUT(req, res) {
  BigInt.prototype.toJSON = function () {
    return this.toString();
  };
  try {
    const prisma = new PrismaClient();
    let reqBody = await req.json();

    let result = await prisma.users.update({
      where: reqBody,
      data: {
        title: "ccccc",
        content: "dfssg",
        published: "4",
      },
    });
    return NextResponse.json({ status: "success", result: result });
  } catch (error) {
    return NextResponse.json({ status: "fail", result: error.toString() });
  }
}

// delete

export async function DELETE(req, res) {
  BigInt.prototype.toJSON = function () {
    return this.toString();
  };
  try {
    const prisma = new PrismaClient();
    let reqBody = await req.json();

    let result = await prisma.users.delete({
      where: reqBody,
    });
    return NextResponse.json({ status: "success", result: result });
  } catch (error) {
    return NextResponse.json({ status: "fail", result: error.toString() });
  }
}
