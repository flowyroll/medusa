.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1ba45, %r13
clflush (%r13)
sub %r14, %r14
movb (%r13), %r8b
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0xe9fd, %rsi
lea addresses_D_ht+0x14c1d, %rdi
nop
nop
cmp %rbx, %rbx
mov $44, %rcx
rep movsb
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x61ad, %rsi
lea addresses_D_ht+0x114fd, %rdi
cmp $45363, %r8
mov $59, %rcx
rep movsl
nop
cmp %r13, %r13
lea addresses_UC_ht+0xa6fd, %r8
xor $22582, %rcx
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x437d, %r8
nop
nop
nop
inc %rsi
mov (%r8), %r10w
nop
nop
nop
xor $1494, %r14
lea addresses_D_ht+0x115bd, %rsi
lea addresses_WT_ht+0x3a55, %rdi
clflush (%rdi)
nop
nop
nop
add %r8, %r8
mov $50, %rcx
rep movsl
cmp $56803, %r13
lea addresses_A_ht+0xadfd, %r8
nop
nop
nop
nop
dec %rbx
mov (%r8), %r13d
nop
nop
nop
mfence
lea addresses_UC_ht+0x10df5, %rdi
nop
nop
nop
nop
and %r14, %r14
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x1af3d, %rsi
lea addresses_A_ht+0x2c31, %rdi
nop
nop
nop
nop
and $6126, %r14
mov $16, %rcx
rep movsb
nop
sub %r8, %r8
lea addresses_D_ht+0x164dd, %rsi
lea addresses_UC_ht+0x9fe8, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $79, %rcx
rep movsw
nop
nop
nop
nop
add $31196, %rbx
lea addresses_A_ht+0xc5fd, %r14
and %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%r14)
nop
nop
nop
nop
nop
sub $27394, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1d3fd, %rdx
nop
nop
xor $26185, %r12
movb $0x51, (%rdx)
nop
nop
xor $37552, %r12

// Load
lea addresses_UC+0xa56d, %rbp
nop
nop
nop
nop
nop
add $9101, %rdx
mov (%rbp), %r12d
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_D+0x5415, %rdx
nop
nop
nop
cmp $9003, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
and $0xffffffffffffffc0, %rdx
vmovaps %ymm4, (%rdx)
nop
nop
nop
nop
nop
and %r8, %r8

// REPMOV
lea addresses_PSE+0xd3fd, %rsi
lea addresses_UC+0x1a9fd, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $35, %rcx
rep movsq
nop
cmp $38767, %r12

// REPMOV
lea addresses_PSE+0xd3fd, %rsi
lea addresses_WC+0x4bfd, %rdi
clflush (%rdi)
nop
nop
nop
sub %rbp, %rbp
mov $32, %rcx
rep movsb
nop
and %rbp, %rbp

// Load
lea addresses_UC+0x67dd, %rdx
clflush (%rdx)
xor $55296, %r8
movb (%rdx), %cl
nop
nop
nop
and %rsi, %rsi

// Load
lea addresses_PSE+0x132ed, %rbp
nop
nop
nop
nop
and %rcx, %rcx
movaps (%rbp), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
nop
nop
cmp $24802, %rdi

// Load
lea addresses_A+0x1427d, %r12
clflush (%r12)
nop
nop
dec %rbp
vmovntdqa (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
nop
nop
cmp $55178, %r14

// Store
lea addresses_D+0x10a99, %rsi
nop
and %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rsi)
cmp %rsi, %rsi

// Faulty Load
lea addresses_PSE+0xd3fd, %r10
nop
nop
cmp %rdx, %rdx
mov (%r10), %esi
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
