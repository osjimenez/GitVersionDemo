using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using NetStandard20;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            Assert.IsTrue(new Class1().GetValue() == 2);
            Assert.IsTrue(new Class1().GetTuple().First == 1);
        }
    }
}
