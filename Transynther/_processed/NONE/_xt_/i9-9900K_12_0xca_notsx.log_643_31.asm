.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xdf0e, %rdx
nop
add %r9, %r9
movb (%rdx), %r15b
nop
nop
and %r8, %r8
lea addresses_UC_ht+0x1ab15, %rsi
sub %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%rsi)
and $36539, %rcx
lea addresses_WT_ht+0x7854, %rsi
nop
nop
nop
nop
add $58090, %r14
movw $0x6162, (%rsi)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x12172, %rsi
lea addresses_D_ht+0xa5ea, %rdi
nop
nop
nop
sub $29635, %r9
mov $124, %rcx
rep movsl
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x9f72, %r8
nop
nop
nop
cmp $31092, %rdi
mov (%r8), %r9w
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x10bf2, %rdi
nop
nop
nop
sub $28396, %rdx
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
nop
nop
nop
nop
nop
and $54173, %rsi
lea addresses_WT_ht+0xae32, %r9
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%r9)
nop
inc %r8
lea addresses_WC_ht+0x150b2, %rsi
lea addresses_WC_ht+0xd820, %rdi
nop
nop
inc %r8
mov $106, %rcx
rep movsw
nop
nop
nop
cmp $32566, %rcx
lea addresses_normal_ht+0x19472, %r9
nop
sub $40883, %rdx
movl $0x61626364, (%r9)
dec %r15
lea addresses_UC_ht+0x385e, %rsi
lea addresses_UC_ht+0x14372, %rdi
cmp %rdx, %rdx
mov $90, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0x1a372, %rsi
lea addresses_WC_ht+0x18cf2, %rdi
nop
nop
cmp $60093, %rdx
mov $11, %rcx
rep movsw
nop
sub $16470, %r9
lea addresses_UC_ht+0x5b72, %r15
nop
nop
nop
nop
cmp %rcx, %rcx
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
and %r9, %r9
lea addresses_WT_ht+0x18f72, %rsi
lea addresses_D_ht+0x6132, %rdi
nop
and %rdx, %rdx
mov $88, %rcx
rep movsl
nop
nop
nop
and $10243, %rdi
lea addresses_normal_ht+0xbda, %r9
nop
nop
nop
nop
xor $46733, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r9)
nop
nop
sub %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x195d6, %r10
clflush (%r10)
nop
nop
sub $17820, %r13
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
xor $28219, %rcx

// Store
lea addresses_WT+0x6cf2, %rcx
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
nop
sub $59574, %r10

// Load
lea addresses_US+0x115a3, %rsi
nop
nop
add $55937, %r8
mov (%rsi), %r15
xor $54034, %rdx

// Store
mov $0x460, %r10
nop
sub %rcx, %rcx
movw $0x5152, (%r10)
nop
sub %r13, %r13

// Load
lea addresses_UC+0xbb72, %r15
sub %r10, %r10
mov (%r15), %r8w
xor $62474, %rdx

// Store
lea addresses_A+0x1adca, %r10
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
xor $61455, %rsi

// Load
lea addresses_UC+0x14ca2, %r13
nop
add %r15, %r15
mov (%r13), %r8w
nop
nop
nop
cmp $27725, %rdx

// Store
lea addresses_WT+0x13f32, %r8
nop
nop
nop
nop
inc %r15
movw $0x5152, (%r8)
cmp %rdx, %rdx

// Load
lea addresses_D+0x1e72, %r8
xor $55055, %rdx
mov (%r8), %cx
nop
nop
nop
sub $31112, %r8

// Load
mov $0xb32, %r10
nop
nop
nop
nop
nop
add $4723, %rcx
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
sub %r10, %r10

// Store
lea addresses_WC+0xa9fd, %rcx
nop
xor %r8, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
xor $18686, %rsi

// Store
lea addresses_A+0x5698, %rcx
nop
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%rcx)
sub $46625, %rcx

// Store
mov $0x4f2, %rcx
nop
nop
xor %r13, %r13
movl $0x51525354, (%rcx)
nop
nop
nop
nop
cmp $14098, %rcx

// Faulty Load
lea addresses_WT+0xeb72, %rdx
nop
nop
nop
nop
and %r13, %r13
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'39': 643}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
