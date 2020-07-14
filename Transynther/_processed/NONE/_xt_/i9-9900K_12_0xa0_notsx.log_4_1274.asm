.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x136f, %rsi
lea addresses_normal_ht+0x17bee, %rdi
nop
nop
nop
nop
nop
xor $29873, %r8
mov $86, %rcx
rep movsq
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x17d17, %rbp
nop
nop
xor $34896, %r9
mov (%rbp), %r8d
nop
nop
dec %r9
lea addresses_A_ht+0x41c7, %rbp
nop
nop
inc %r8
mov $0x6162636465666768, %r9
movq %r9, (%rbp)
nop
nop
nop
lfence
lea addresses_UC_ht+0xd063, %r14
nop
nop
nop
dec %rcx
movups (%r14), %xmm1
vpextrq $0, %xmm1, %rdi
nop
dec %r14
lea addresses_WC_ht+0x5863, %rsi
lea addresses_WC_ht+0x1d447, %rdi
xor $59957, %rdx
mov $86, %rcx
rep movsq
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1e1db, %rbp
clflush (%rbp)
nop
nop
nop
nop
inc %rdx
mov (%rbp), %di
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x1cfdb, %rsi
lea addresses_normal_ht+0x3807, %rdi
nop
nop
nop
nop
and $54178, %rbp
mov $17, %rcx
rep movsb
xor %rcx, %rcx
lea addresses_WC_ht+0xc473, %rsi
lea addresses_WC_ht+0x171db, %rdi
nop
nop
and $65253, %rbp
mov $94, %rcx
rep movsl
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rdx

// Load
lea addresses_A+0x1589b, %rdx
nop
nop
nop
xor %r14, %r14
mov (%rdx), %r9d
nop
nop
nop
add %rdx, %rdx

// Load
lea addresses_normal+0x6b9b, %rbx
inc %r13
mov (%rbx), %r9w
and $24889, %rbx

// Store
lea addresses_A+0xc08b, %r13
nop
nop
cmp $50145, %rbx
movb $0x51, (%r13)
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_PSE+0x1d1db, %r13
nop
dec %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
add $9753, %rbx

// Store
mov $0x5418a400000001db, %rax
nop
nop
nop
add %r14, %r14
movb $0x51, (%rax)
add %r13, %r13

// Store
mov $0x1db, %rax
nop
nop
nop
nop
nop
add %rdx, %rdx
movb $0x51, (%rax)
nop
nop
nop
nop
sub $7880, %rax

// Load
lea addresses_US+0x1ea7b, %rdx
clflush (%rdx)
nop
nop
nop
xor $37938, %r9
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %rbx
nop
inc %rbp

// Faulty Load
lea addresses_A+0xc9db, %rdx
nop
nop
nop
cmp $17382, %r13
vmovups (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'35': 4}
35 35 35 35
*/
