<h1>Let's create a demo docker application </h1>
<ol>
<li>Create a simple spring boot application</li>
<li>Write instructions in Dockerfile</li>
<li> Create a jar of your spring boot application</li>

``` mvn clean install ```

<li>To create a docker image from the jar file hit the below command</li>

```docker build -t your-image-name .```
<li>To run your docker image run the below command</li>

``` docker run -p 8080:8080 your-image-name```
</ol>
