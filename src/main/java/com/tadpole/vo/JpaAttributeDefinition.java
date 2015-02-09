package com.tadpole.vo;

public class JpaAttributeDefinition {

	private String name;
	private String type;
	private String length;
	private String firstLetterUpperName;

	public JpaAttributeDefinition(String name, String type) {

		super();
		this.name = name;
		this.type = type;

		String firstLetter = name.substring(0, 1);

		this.firstLetterUpperName = firstLetter.toUpperCase() + name.substring(1);

	}

	public JpaAttributeDefinition(String name, String type, String length) {

		this(name, type);

		this.length = length;
	}

	public String getName() {

		return name;
	}

	public void setName(String name) {

		this.name = name;
	}

	public String getType() {

		return type;
	}

	public void setType(String type) {

		this.type = type;
	}

	public String getFirstLetterUpperName() {

		return firstLetterUpperName;
	}

	public void setFirstLetterUpperName(String firstLetterUpperName) {

		this.firstLetterUpperName = firstLetterUpperName;
	}

	public String getLength() {

		return length;
	}

	public void setLength(String length) {

		this.length = length;
	}

}
