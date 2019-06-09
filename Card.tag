<Card>
	<style type="text/css">
		.card {
			width:250px;
			height:300px;
			background-color: #fff;
			display: flex;
			flex-direction: column;
			flex:1;
			
		}

		.cardSpacerSection{
			flex:1;
			width:100%;
			height:50vh;
		}
		
		
		.card .timelineLink {
			flex: 0.25;
			display:flex;
			flex-direction: row;
			background-color: #eee;
			/*border-top: 2px solid green;*/
		}

		.card .timelineLink .linkSpacer{
			flex: 1;
		}

		.card .contents{
			flex:1;
			display: flex;
			border: 2px solid green;
			padding:20px;

		}

		.card .contents .dateContainer{
			flex:.25;
			font-size: 1.5em;
			text-align:center;
			text-decoration: underline;
		}

		.card .contents .titleContainer{
			flex:1;
		}


		.linkSpacerLeft{
			border-right: 2px solid green;
		}
		.tagContainer a{
			 text-decoration-color: #bbb;
			 color: #bbb;
		}

		.tagContainer{
			 text-decoration-color: #bbb;
			 color: #bbb;
		}

		.tagContainer .tag{
			display: inline-block;
		}


	</style>
	<script type="text/javascript">
		
	</script>

	<div class="card">
			<div class="contents">
				<div class="dateContainer">
				{this.opts.date}
				</div>
				
				<div class="titleContainer">
				{this.opts.title}
				</div>

				<div class="tagContainer">
					<div class="tag" each="{tag in this.opts.tags}">
						<a href="#">{tag}</a>.
					</div>

				</div>
			</div>

			<div class="timelineLink">
				<div class="linkSpacer linkSpacerLeft"></div>
				<div class="linkSpacer"></div>
			</div>
	</div>
	<!-- <div class="cardSpacerSection"></div> -->

</Card>