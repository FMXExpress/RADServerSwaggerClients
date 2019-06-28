@isTest
private class SwagVersionObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagVersionObject versionObject1 = SwagVersionObject.getExample();
        SwagVersionObject versionObject2 = versionObject1;
        SwagVersionObject versionObject3 = new SwagVersionObject();
        SwagVersionObject versionObject4 = versionObject3;

        System.assert(versionObject1.equals(versionObject2));
        System.assert(versionObject2.equals(versionObject1));
        System.assert(versionObject1.equals(versionObject1));
        System.assert(versionObject3.equals(versionObject4));
        System.assert(versionObject4.equals(versionObject3));
        System.assert(versionObject3.equals(versionObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagVersionObject versionObject1 = SwagVersionObject.getExample();
        SwagVersionObject versionObject2 = SwagVersionObject.getExample();
        SwagVersionObject versionObject3 = new SwagVersionObject();
        SwagVersionObject versionObject4 = new SwagVersionObject();

        System.assert(versionObject1.equals(versionObject2));
        System.assert(versionObject2.equals(versionObject1));
        System.assert(versionObject3.equals(versionObject4));
        System.assert(versionObject4.equals(versionObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagVersionObject versionObject1 = SwagVersionObject.getExample();
        SwagVersionObject versionObject2 = new SwagVersionObject();

        System.assertEquals(false, versionObject1.equals(versionObject2));
        System.assertEquals(false, versionObject2.equals(versionObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagVersionObject versionObject1 = SwagVersionObject.getExample();
        SwagVersionObject versionObject2 = new SwagVersionObject();

        System.assertEquals(false, versionObject1.equals('foo'));
        System.assertEquals(false, versionObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagVersionObject versionObject1 = SwagVersionObject.getExample();
        SwagVersionObject versionObject2 = new SwagVersionObject();
        SwagVersionObject versionObject3;

        System.assertEquals(false, versionObject1.equals(versionObject3));
        System.assertEquals(false, versionObject2.equals(versionObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagVersionObject versionObject1 = SwagVersionObject.getExample();
        SwagVersionObject versionObject2 = new SwagVersionObject();

        System.assertEquals(versionObject1.hashCode(), versionObject1.hashCode());
        System.assertEquals(versionObject2.hashCode(), versionObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagVersionObject versionObject1 = SwagVersionObject.getExample();
        SwagVersionObject versionObject2 = SwagVersionObject.getExample();
        SwagVersionObject versionObject3 = new SwagVersionObject();
        SwagVersionObject versionObject4 = new SwagVersionObject();

        System.assert(versionObject1.equals(versionObject2));
        System.assert(versionObject3.equals(versionObject4));
        System.assertEquals(versionObject1.hashCode(), versionObject2.hashCode());
        System.assertEquals(versionObject3.hashCode(), versionObject4.hashCode());
    }
}
