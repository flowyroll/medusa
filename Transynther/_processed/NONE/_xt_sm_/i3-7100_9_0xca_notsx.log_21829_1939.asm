.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x16606, %rcx
nop
nop
dec %rbx
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
nop
cmp $7736, %rax
lea addresses_WT_ht+0x7c7c, %rbp
clflush (%rbp)
nop
nop
sub $9081, %r13
movb (%rbp), %r14b
nop
nop
nop
nop
and $9457, %r14
lea addresses_normal_ht+0x2246, %rsi
lea addresses_WC_ht+0xd046, %rdi
clflush (%rdi)
nop
nop
inc %r10
mov $54, %rcx
rep movsw
nop
nop
and $4973, %rcx
lea addresses_WC_ht+0xcc46, %rbp
cmp $22073, %rbx
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x917a, %r14
nop
nop
nop
nop
and $29590, %rbp
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x1adc6, %rsi
nop
nop
nop
cmp $2618, %r14
mov (%rsi), %di
nop
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x1ce06, %r10
nop
nop
nop
nop
nop
add %rsi, %rsi
movl $0x61626364, (%r10)
nop
nop
sub $44593, %rsi
lea addresses_UC_ht+0xf446, %r14
clflush (%r14)
nop
nop
nop
nop
nop
add %rbx, %rbx
movw $0x6162, (%r14)
nop
nop
inc %r13
lea addresses_UC_ht+0x5246, %r14
nop
nop
nop
nop
nop
add $36023, %rbp
movups (%r14), %xmm2
vpextrq $0, %xmm2, %rax
nop
dec %rax
lea addresses_WT_ht+0xc846, %r13
nop
nop
nop
nop
nop
cmp $55418, %r14
movw $0x6162, (%r13)
nop
nop
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx

// Load
lea addresses_WT+0x8e46, %rdx
nop
nop
nop
and %r15, %r15
movb (%rdx), %r10b
nop
xor %r15, %r15

// Store
mov $0x6, %rbx
clflush (%rbx)
nop
nop
cmp $35006, %r8
movl $0x51525354, (%rbx)
nop
nop
nop
nop
dec %r8

// Store
lea addresses_RW+0x16246, %r8
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movups %xmm4, (%r8)
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_RW+0x16246, %r8
clflush (%r8)
nop
nop
nop
nop
and %rcx, %rcx
movb (%r8), %bl
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
