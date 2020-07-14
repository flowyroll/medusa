.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xd946, %rsi
lea addresses_D_ht+0x7b26, %rdi
nop
nop
nop
xor $45661, %rbx
mov $108, %rcx
rep movsw
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x17ca6, %rsi
nop
nop
xor %r10, %r10
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
sub $6079, %rsi
lea addresses_WC_ht+0x9aca, %rsi
nop
and $57759, %rbx
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x18a6, %rcx
nop
nop
nop
nop
xor $53937, %r8
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x4626, %rsi
lea addresses_WC_ht+0x16776, %rdi
nop
nop
xor $29622, %rdx
mov $19, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x78a6, %rsi
lea addresses_WC_ht+0x84c6, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $25281, %r8
mov $36, %rcx
rep movsb
nop
add %rdi, %rdi
lea addresses_A_ht+0xa975, %rcx
nop
nop
nop
nop
nop
cmp $5989, %r8
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
nop
nop
nop
inc %r10
lea addresses_normal_ht+0x175a6, %rbx
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%rbx)
nop
nop
nop
cmp $47376, %rdi
lea addresses_UC_ht+0x12d36, %rsi
lea addresses_WT_ht+0xad26, %rdi
nop
nop
and %rbx, %rbx
mov $66, %rcx
rep movsl
nop
nop
nop
mfence
lea addresses_WT_ht+0x3ea6, %rcx
nop
cmp $59292, %r10
mov (%rcx), %r8d
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x64a6, %r15
nop
nop
nop
nop
sub $2897, %rbx
movups (%r15), %xmm0
vpextrq $0, %xmm0, %rdi
and $64792, %r15
lea addresses_A_ht+0x186a6, %rdi
clflush (%rdi)
nop
nop
xor $689, %r15
mov (%rdi), %cx
nop
xor %rbx, %rbx
lea addresses_D_ht+0x38a6, %rsi
lea addresses_WC_ht+0x1e2a6, %rdi
clflush (%rsi)
xor $5706, %r10
mov $61, %rcx
rep movsb
inc %r10
lea addresses_A_ht+0x102e1, %r8
nop
nop
nop
nop
and $36045, %r15
movups (%r8), %xmm5
vpextrq $0, %xmm5, %rsi
nop
xor %r10, %r10
lea addresses_normal_ht+0x8306, %rdi
nop
nop
nop
nop
cmp $30339, %r10
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
xor $57988, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_WC+0xaaa6, %rax
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%rax)
dec %r8

// Load
lea addresses_RW+0xdea6, %r9
nop
nop
nop
sub %rcx, %rcx
mov (%r9), %r15w
nop
nop
nop
and %rcx, %rcx

// Load
mov $0xca6, %r13
nop
nop
nop
nop
and %r15, %r15
movups (%r13), %xmm7
vpextrq $1, %xmm7, %r8
nop
dec %rcx

// Store
mov $0x2a6, %rax
nop
nop
nop
xor $30982, %r15
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
cmp %rdx, %rdx

// Store
lea addresses_WC+0x116a6, %rax
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm3
and $0xffffffffffffffc0, %rax
vmovaps %ymm3, (%rax)
nop
nop
cmp %r15, %r15

// Store
lea addresses_A+0x6946, %rax
nop
cmp %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
xor %r8, %r8

// Store
lea addresses_normal+0x166a6, %r8
nop
nop
nop
add $9407, %r9
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
and $37351, %rcx

// Store
lea addresses_UC+0x1b8a6, %rcx
nop
nop
sub $9817, %r9
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
xor $60239, %r13

// Faulty Load
lea addresses_UC+0x96a6, %r8
nop
nop
nop
nop
nop
sub $65358, %rax
movups (%r8), %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_WC', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'ff': 1}
ff
*/
