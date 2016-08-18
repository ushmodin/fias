import groovy.util.XmlSlurper

def xml = new XmlSlurper().parse(new File('AS_ADDROBJ_2_250_01_04_01_01.xsd'))
def comments = new File('comments.sql')
def insert = new File('insert.sql')

insert << "insert into addrobj ("
println "create table addrobj ("
xml.element.each {el->
    el.complexType.sequence.element.complexType.attribute.each{attr->
        def type
        def len
        def doc = attr.annotation.documentation.text()
        if (attr.@type.size()) {
             type = attr.@type
        } else {
            type = attr.simpleType.restriction.@base
            if (attr.simpleType.restriction.maxLength.size()) {
                len = attr.simpleType.restriction.maxLength.@value
            } else if (attr.simpleType.restriction.length.size()) {
                len = attr.simpleType.restriction.length.@value
            }
        }
        type = type.text().substring(3)
        print "\t,${attr.@name} $type"
        if (len) {
            print "($len)"
        }
        print " -- ${doc.replace('\n', '\n -- ')}"
        println ""
        comments << "COMMENT ON COLUMN addrobj.${attr.@name} IS '${doc.replace('\n', ' ')}';\n"
        insert << "${attr.@name},"
    }
}

insert << ") values ("
xml.element.complexType.sequence.element.complexType.attribute.size().times {
    insert << "?,"
}
insert << ");"
println ");"
