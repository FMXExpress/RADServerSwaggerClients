@isTest
private class SwagFieldObjectFieldsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFieldObjectFields fieldObjectFields1 = SwagFieldObjectFields.getExample();
        SwagFieldObjectFields fieldObjectFields2 = fieldObjectFields1;
        SwagFieldObjectFields fieldObjectFields3 = new SwagFieldObjectFields();
        SwagFieldObjectFields fieldObjectFields4 = fieldObjectFields3;

        System.assert(fieldObjectFields1.equals(fieldObjectFields2));
        System.assert(fieldObjectFields2.equals(fieldObjectFields1));
        System.assert(fieldObjectFields1.equals(fieldObjectFields1));
        System.assert(fieldObjectFields3.equals(fieldObjectFields4));
        System.assert(fieldObjectFields4.equals(fieldObjectFields3));
        System.assert(fieldObjectFields3.equals(fieldObjectFields3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFieldObjectFields fieldObjectFields1 = SwagFieldObjectFields.getExample();
        SwagFieldObjectFields fieldObjectFields2 = SwagFieldObjectFields.getExample();
        SwagFieldObjectFields fieldObjectFields3 = new SwagFieldObjectFields();
        SwagFieldObjectFields fieldObjectFields4 = new SwagFieldObjectFields();

        System.assert(fieldObjectFields1.equals(fieldObjectFields2));
        System.assert(fieldObjectFields2.equals(fieldObjectFields1));
        System.assert(fieldObjectFields3.equals(fieldObjectFields4));
        System.assert(fieldObjectFields4.equals(fieldObjectFields3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFieldObjectFields fieldObjectFields1 = SwagFieldObjectFields.getExample();
        SwagFieldObjectFields fieldObjectFields2 = new SwagFieldObjectFields();

        System.assertEquals(false, fieldObjectFields1.equals(fieldObjectFields2));
        System.assertEquals(false, fieldObjectFields2.equals(fieldObjectFields1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFieldObjectFields fieldObjectFields1 = SwagFieldObjectFields.getExample();
        SwagFieldObjectFields fieldObjectFields2 = new SwagFieldObjectFields();

        System.assertEquals(false, fieldObjectFields1.equals('foo'));
        System.assertEquals(false, fieldObjectFields2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFieldObjectFields fieldObjectFields1 = SwagFieldObjectFields.getExample();
        SwagFieldObjectFields fieldObjectFields2 = new SwagFieldObjectFields();
        SwagFieldObjectFields fieldObjectFields3;

        System.assertEquals(false, fieldObjectFields1.equals(fieldObjectFields3));
        System.assertEquals(false, fieldObjectFields2.equals(fieldObjectFields3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFieldObjectFields fieldObjectFields1 = SwagFieldObjectFields.getExample();
        SwagFieldObjectFields fieldObjectFields2 = new SwagFieldObjectFields();

        System.assertEquals(fieldObjectFields1.hashCode(), fieldObjectFields1.hashCode());
        System.assertEquals(fieldObjectFields2.hashCode(), fieldObjectFields2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFieldObjectFields fieldObjectFields1 = SwagFieldObjectFields.getExample();
        SwagFieldObjectFields fieldObjectFields2 = SwagFieldObjectFields.getExample();
        SwagFieldObjectFields fieldObjectFields3 = new SwagFieldObjectFields();
        SwagFieldObjectFields fieldObjectFields4 = new SwagFieldObjectFields();

        System.assert(fieldObjectFields1.equals(fieldObjectFields2));
        System.assert(fieldObjectFields3.equals(fieldObjectFields4));
        System.assertEquals(fieldObjectFields1.hashCode(), fieldObjectFields2.hashCode());
        System.assertEquals(fieldObjectFields3.hashCode(), fieldObjectFields4.hashCode());
    }
}
