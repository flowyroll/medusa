.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1b410, %rdi
nop
nop
nop
nop
nop
sub $16947, %r10
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
and $63723, %r12
lea addresses_A_ht+0xf5ec, %r13
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rbp
movq %rbp, (%r13)
nop
nop
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x1391c, %rsi
lea addresses_normal_ht+0x1671c, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $6, %rcx
rep movsb
nop
nop
and $61785, %rsi
lea addresses_D_ht+0x11714, %r12
nop
nop
nop
sub %rbp, %rbp
movw $0x6162, (%r12)
nop
nop
inc %r13
lea addresses_WC_ht+0x189cc, %r13
nop
cmp $40514, %r12
mov (%r13), %di
nop
add %rdi, %rdi
lea addresses_A_ht+0xc7ec, %rbp
nop
nop
nop
sub $63090, %r12
mov (%rbp), %r13d
nop
xor $50403, %r13
lea addresses_UC_ht+0xa2ec, %rsi
lea addresses_UC_ht+0x17dec, %rdi
clflush (%rsi)
nop
nop
nop
sub %r9, %r9
mov $30, %rcx
rep movsb
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x516c, %rbp
nop
nop
nop
nop
cmp %r9, %r9
movw $0x6162, (%rbp)
nop
nop
dec %r12
lea addresses_D_ht+0x18fec, %rcx
nop
add $30254, %rbp
mov (%rcx), %di
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x1cfec, %rbp
nop
nop
nop
xor $49238, %rdi
movb $0x61, (%rbp)
nop
nop
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
mov $0xec, %rdx
nop
and %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
nop
nop
nop
xor $38418, %r10

// Store
lea addresses_A+0xc2ec, %rbp
nop
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
add %rsi, %rsi

// Store
lea addresses_normal+0x1932c, %rbx
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
nop
nop
nop
dec %r13

// Faulty Load
lea addresses_A+0x103ec, %r10
nop
nop
inc %r13
movb (%r10), %cl
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 353}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
