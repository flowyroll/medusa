.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x10d6a, %rcx
nop
nop
nop
nop
nop
inc %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rcx)
nop
nop
sub $34484, %rdx
lea addresses_WC_ht+0x110bc, %rsi
lea addresses_A_ht+0x31d8, %rdi
clflush (%rdi)
nop
nop
nop
sub $22213, %rbx
mov $121, %rcx
rep movsb
nop
nop
cmp $49639, %rbx
lea addresses_WT_ht+0x4428, %r14
nop
and %r10, %r10
movb $0x61, (%r14)
cmp %r14, %r14
lea addresses_normal_ht+0x13a6c, %rsi
lea addresses_A_ht+0x759c, %rdi
nop
sub $39422, %r11
mov $112, %rcx
rep movsl
nop
add $9008, %rdi
lea addresses_WT_ht+0xf6cc, %rcx
nop
nop
inc %r14
movb $0x61, (%rcx)
dec %r14
lea addresses_UC_ht+0x1635c, %rsi
lea addresses_A_ht+0x1708c, %rdi
add %r10, %r10
mov $4, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x11982, %r14
and %rbx, %rbx
movb (%r14), %cl
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x1c9c, %r11
nop
nop
nop
nop
nop
add $27766, %r14
vmovups (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
add $12274, %r14
lea addresses_A_ht+0x61bc, %rdi
nop
nop
nop
nop
cmp $10910, %rbx
mov (%rdi), %edx
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x7a8c, %rdx
nop
nop
nop
sub %r11, %r11
movw $0x6162, (%rdx)
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rcx
push %rdx

// Store
lea addresses_A+0x1cebc, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %r12, %r12
movl $0x51525354, (%r15)
nop
inc %r15

// Load
lea addresses_RW+0x183bc, %r15
nop
nop
nop
nop
add %rcx, %rcx
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
nop
nop
sub %r11, %r11

// Load
lea addresses_US+0xe23c, %rdx
nop
nop
and %r12, %r12
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
cmp $19581, %r10

// Store
lea addresses_D+0x1b1aa, %r10
nop
dec %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r10)
nop
dec %r10

// Store
lea addresses_US+0xfabc, %r10
sub $16794, %r11
movl $0x51525354, (%r10)
nop
nop
nop
sub $57871, %rax

// Store
lea addresses_WT+0xe2bc, %rax
nop
nop
nop
nop
xor %r12, %r12
movl $0x51525354, (%rax)

// Exception!!!
mov (0), %rcx
nop
nop
nop
nop
dec %rdx

// Load
lea addresses_WT+0xa77c, %r10
nop
sub $21209, %rcx
mov (%r10), %r15w
xor %r10, %r10

// Store
lea addresses_WC+0xc43c, %r12
nop
nop
nop
add $14501, %rdx
mov $0x5152535455565758, %r15
movq %r15, (%r12)
cmp $21359, %r10

// Store
lea addresses_normal+0x273c, %r15
nop
sub %rcx, %rcx
movl $0x51525354, (%r15)
nop
nop
nop
xor $59632, %r11

// Store
lea addresses_normal+0x5ebc, %rdx
nop
nop
nop
nop
nop
dec %rcx
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
cmp %r10, %r10

// Faulty Load
lea addresses_WT+0xe2bc, %rcx
nop
nop
and %r15, %r15
movb (%rcx), %al
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 1}, 'dst': {'same': True, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'54': 202}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
