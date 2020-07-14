.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x7d, %rsi
lea addresses_normal_ht+0x1a3fd, %rdi
nop
cmp $62494, %r9
mov $107, %rcx
rep movsw
nop
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0xeba6, %r15
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movups (%r15), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x197fd, %rsi
nop
nop
xor $7117, %rbp
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
and $22280, %rdi
lea addresses_WT_ht+0x8fd, %rbp
clflush (%rbp)
nop
nop
nop
nop
xor %rsi, %rsi
vmovups (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
xor %r9, %r9
lea addresses_UC_ht+0x7bbd, %rcx
nop
nop
nop
nop
cmp $2641, %rsi
movb (%rcx), %r9b
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x81d9, %rdi
nop
sub $60077, %rsi
movl $0x61626364, (%rdi)
nop
cmp $18644, %rbx
lea addresses_D_ht+0xf726, %rsi
lea addresses_WC_ht+0x163fd, %rdi
clflush (%rdi)
nop
inc %rbx
mov $61, %rcx
rep movsl
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1b185, %r9
nop
and $54746, %rbp
mov (%r9), %rbx
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0xdefd, %r9
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x61, (%r9)
nop
sub $6305, %rbx
lea addresses_A_ht+0x1ed3d, %rsi
nop
nop
cmp $38775, %r15
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
and $0xffffffffffffffc0, %rsi
movaps %xmm2, (%rsi)
nop
nop
nop
nop
nop
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0xba96, %rdi
nop
nop
dec %r10
mov (%rdi), %dx
nop
nop
inc %r13

// Store
lea addresses_A+0x1537d, %r15
inc %r9
movl $0x51525354, (%r15)
sub $38124, %r10

// Store
lea addresses_D+0x120fd, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
sub $54449, %rdx

// Store
lea addresses_A+0x66fd, %r15
nop
nop
cmp $32172, %r13
movl $0x51525354, (%r15)
nop
nop
nop
and %r9, %r9

// REPMOV
lea addresses_PSE+0xca3d, %rsi
lea addresses_A+0x15bb5, %rdi
nop
nop
nop
nop
cmp $12083, %r13
mov $22, %rcx
rep movsl
xor $19997, %r10

// REPMOV
lea addresses_normal+0x12e7d, %rsi
lea addresses_A+0xfd7d, %rdi
nop
nop
inc %r10
mov $3, %rcx
rep movsq
nop
sub $10569, %r14

// Store
lea addresses_WC+0x72fd, %rsi
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
nop
mfence

// Load
lea addresses_A+0x16fd, %rdx
nop
nop
nop
nop
cmp %rcx, %rcx
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
sub $25753, %rcx

// Store
lea addresses_UC+0x100fd, %rdx
nop
sub %rdi, %rdi
movw $0x5152, (%rdx)
sub $1430, %r9

// REPMOV
lea addresses_WT+0x80fd, %rsi
lea addresses_D+0xaca7, %rdi
cmp $4542, %r9
mov $46, %rcx
rep movsw
xor $43596, %rcx

// Store
lea addresses_A+0x19b1, %rdi
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
add $32996, %r13

// Store
lea addresses_WT+0x1c8fd, %r13
nop
nop
nop
nop
inc %r9
movl $0x51525354, (%r13)
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_WC+0xc5b9, %rcx
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
dec %r14

// Load
mov $0xf82, %rdi
nop
nop
and $58833, %r10
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r13
add $36030, %r14

// Load
lea addresses_WT+0x1c8fd, %rsi
clflush (%rsi)
dec %r13
mov (%rsi), %cx
nop
nop
nop
nop
inc %r9

// Faulty Load
lea addresses_WT+0x1c8fd, %rdi
add %rsi, %rsi
movb (%rdi), %dl
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 6}}
{'54': 9}
54 54 54 54 54 54 54 54 54
*/
