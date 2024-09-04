<h1>Let's create a demo docker application </h1>
<h2>All about Dockerfile</h2>
<ul>
<li>A Dockerfile is a script that contains a series of instructions for building a Docker image. </li>
</ul>

<ul>
<li>Steps to follow while using docker file : </li>
<ol>
<li>Create a simple spring boot application</li>
<li>Write instructions in Dockerfile</li>
<li> Create a jar of your spring boot application</li>

``` mvn clean install ```

<li>To create a docker image from the jar file hit the below command in your terminal</li>

```docker build -t your-image-name .```
<li>To run your docker image run the below command</li>

``` docker run -p 8080:8080 your-image-name```
</ol>
</ul>
<h2>All about docker-compose.yml</h2>

<ul>
<li>To eliminate the last step from above and to make a less mess we will use docker-compose.yml</li>
<li>After writing all yml properties run the docker-compose file run below command.</li>
<ol>
<li>

``` docker-compose up```
</li>
</ol>
</ul>

