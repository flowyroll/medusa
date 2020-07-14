.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x9577, %rdx
cmp %r9, %r9
movups (%rdx), %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x23f7, %r9
clflush (%r9)
xor $37191, %rsi
mov (%r9), %r15d
nop
nop
nop
add $9771, %rbp
lea addresses_UC_ht+0x5a77, %rbp
nop
xor %r12, %r12
mov (%rbp), %dx
nop
inc %r9
lea addresses_UC_ht+0x17f7b, %r9
cmp $63239, %rax
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
dec %r12
lea addresses_UC_ht+0xa9c3, %rsi
lea addresses_normal_ht+0x1510e, %rdi
sub %rdx, %rdx
mov $22, %rcx
rep movsw
xor %r15, %r15
lea addresses_WT_ht+0x1daf7, %rsi
lea addresses_D_ht+0x1daf7, %rdi
clflush (%rdi)
nop
sub $32694, %r15
mov $88, %rcx
rep movsl
nop
nop
inc %rbp
lea addresses_normal_ht+0x12f17, %rsi
lea addresses_normal_ht+0x49f7, %rdi
add %r12, %r12
mov $117, %rcx
rep movsq
cmp %rbp, %rbp
lea addresses_D_ht+0x1daf7, %rsi
lea addresses_normal_ht+0xb973, %rdi
nop
nop
nop
dec %r9
mov $99, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $14526, %rdi
lea addresses_A_ht+0xd7f7, %rax
nop
nop
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm3
movups %xmm3, (%rax)
nop
cmp $8742, %rdi
lea addresses_UC_ht+0x1115f, %rbp
nop
nop
and $61937, %rdi
movb (%rbp), %r9b
nop
nop
nop
add $16835, %rsi
lea addresses_A_ht+0x15637, %rbp
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %rbp
vmovaps %ymm4, (%rbp)
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0xeaf7, %rbp
nop
nop
add $62806, %r15
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
xor %rax, %rax

// Load
lea addresses_A+0x1722f, %r10
nop
sub %r13, %r13
mov (%r10), %rax
and %rax, %rax

// Load
lea addresses_RW+0x102f7, %r10
nop
nop
nop
nop
nop
dec %r12
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
nop
dec %r10

// Store
lea addresses_PSE+0x26ef, %r10
nop
nop
nop
nop
and %r12, %r12
movb $0x51, (%r10)
nop
nop
cmp $38566, %r12

// REPMOV
lea addresses_UC+0x159f7, %rsi
lea addresses_normal+0xf7f7, %rdi
clflush (%rdi)
nop
xor %r12, %r12
mov $70, %rcx
rep movsw
nop
nop
nop
nop
sub %rcx, %rcx

// REPMOV
lea addresses_UC+0x11fc7, %rsi
lea addresses_normal+0x1b2f7, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $26273, %rax
mov $52, %rcx
rep movsq
xor $14748, %rbp

// Store
lea addresses_PSE+0x1baf7, %r13
clflush (%r13)
nop
nop
nop
nop
cmp $28974, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
nop
nop
nop
and %rdi, %rdi

// Load
mov $0x2f7, %rdi
clflush (%rdi)
nop
nop
nop
xor $4144, %rcx
vmovntdqa (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
nop
nop
inc %rdi

// Load
lea addresses_US+0x1faf7, %r10
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%r10), %r13w
nop
nop
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_PSE+0x1baf7, %r13
add %r12, %r12
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 5}}
{'33': 1}
33
*/
