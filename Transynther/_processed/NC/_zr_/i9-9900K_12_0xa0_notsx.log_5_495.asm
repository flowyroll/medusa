.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x14ea6, %rsi
lea addresses_normal_ht+0xb426, %rdi
clflush (%rdi)
add $5487, %r10
mov $114, %rcx
rep movsq
nop
nop
nop
cmp $58368, %rax
lea addresses_D_ht+0x14466, %r14
and %rax, %rax
movb $0x61, (%r14)
nop
and %r14, %r14
lea addresses_D_ht+0xd878, %rsi
lea addresses_WC_ht+0x1e8a6, %rdi
nop
nop
nop
nop
add $60269, %rbx
mov $44, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x8032, %rsi
nop
nop
nop
nop
nop
inc %rdi
movw $0x6162, (%rsi)
and $8563, %rsi
lea addresses_A_ht+0xb4a6, %rsi
lea addresses_A_ht+0x136a6, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $61144, %rax
mov $43, %rcx
rep movsq
add $61942, %rax
lea addresses_WC_ht+0x1e10e, %rbx
nop
and $64490, %r14
movups (%rbx), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
nop
sub $38194, %rdi
lea addresses_D_ht+0xc826, %rbx
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%rbx)
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x186c6, %rdi
nop
cmp $11312, %r14
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
nop
xor $19777, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x13a6, %rsi
nop
nop
nop
nop
and %rbx, %rbx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
inc %r10

// Store
lea addresses_WC+0xb158, %rcx
nop
nop
nop
nop
xor $64023, %rsi
movb $0x51, (%rcx)
add %rcx, %rcx

// Store
mov $0x652fb500000007e6, %rcx
nop
nop
nop
add $41158, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_A+0x15a16, %r10
nop
nop
nop
add $10722, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%r10)
cmp %r14, %r14

// Load
lea addresses_WT+0x15e9a, %rsi
nop
nop
add $17305, %rbx
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
nop
nop
nop
and $47413, %r14

// Load
lea addresses_US+0xfea6, %rbx
dec %rcx
movups (%rbx), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
cmp $15047, %rsi

// Store
lea addresses_WT+0x11ea6, %rsi
nop
nop
nop
nop
nop
and $1673, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
xor $14756, %rsi

// Faulty Load
mov $0x79116a00000006a6, %rdi
clflush (%rdi)
nop
nop
cmp %rsi, %rsi
mov (%rdi), %r15w
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WT', 'AVXalign': True, 'size': 32, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'00': 5}
00 00 00 00 00
*/
