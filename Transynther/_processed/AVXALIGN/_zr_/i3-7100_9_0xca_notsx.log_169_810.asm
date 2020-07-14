.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rcx
push %rdx
push %rsi
lea addresses_A_ht+0xd4ee, %r10
clflush (%r10)
add $52904, %rcx
movl $0x61626364, (%r10)
nop
inc %r8
lea addresses_D_ht+0x373e, %rdx
nop
nop
nop
cmp $15607, %rcx
movups (%rdx), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
sub $30254, %r10
lea addresses_D_ht+0x5fd6, %rdx
nop
nop
inc %r14
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %rsi
sub $42465, %rsi
lea addresses_UC_ht+0x10fd6, %r8
and $15436, %rcx
movups (%r8), %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
sub $14212, %r8
lea addresses_A_ht+0x47d6, %r8
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r8), %r10w
nop
nop
nop
nop
inc %r10
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WC+0x1d25c, %r10
nop
nop
nop
nop
add $7206, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r10)
inc %r8

// Store
lea addresses_UC+0x1c016, %rax
nop
nop
sub $56813, %rbx
movw $0x5152, (%rax)
nop
nop
nop
xor $32292, %rax

// Store
lea addresses_WT+0xb3f6, %r8
clflush (%r8)
nop
nop
nop
nop
nop
add %rcx, %rcx
movb $0x51, (%r8)
nop
nop
nop
xor $8778, %r10

// Faulty Load
lea addresses_A+0xdfd6, %r10
inc %rcx
vmovaps (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 169}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
