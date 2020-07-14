.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x9f2e, %rsi
lea addresses_normal_ht+0x1915c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $36830, %rbx
mov $11, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x1c83a, %r13
nop
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r13)
nop
nop
xor $9061, %rbx
lea addresses_normal_ht+0x395a, %r8
clflush (%r8)
nop
nop
nop
cmp $41092, %r13
mov (%r8), %di
nop
and %rsi, %rsi
lea addresses_A_ht+0x1654b, %r15
nop
nop
and $54145, %r8
movb $0x61, (%r15)
nop
nop
nop
xor $25188, %rsi
lea addresses_D_ht+0x3560, %r13
clflush (%r13)
nop
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r13)
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0xdb5a, %rsi
lea addresses_D_ht+0x12e0a, %rdi
nop
nop
nop
xor $21887, %r12
mov $16, %rcx
rep movsl
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x11caa, %rsi
lea addresses_WT_ht+0x1b15a, %rdi
nop
xor $44916, %rbx
mov $75, %rcx
rep movsw
nop
nop
nop
nop
add $64178, %r15
lea addresses_normal_ht+0xf35a, %rdi
nop
nop
sub $27185, %r13
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
add %rdi, %rdi
lea addresses_D_ht+0x2092, %r12
nop
nop
and $24366, %r8
movl $0x61626364, (%r12)
nop
nop
add $22822, %rcx
lea addresses_normal_ht+0xd4a, %rdi
nop
add $17107, %r15
movl $0x61626364, (%rdi)
nop
xor %r8, %r8
lea addresses_UC_ht+0xb6da, %rsi
nop
nop
nop
nop
nop
inc %r12
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
add %rcx, %rcx
lea addresses_A_ht+0x1115a, %r8
nop
nop
nop
nop
sub $35911, %rdi
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
nop
add $50824, %r15
lea addresses_D_ht+0x1b19a, %rsi
lea addresses_A_ht+0x1c2da, %rdi
clflush (%rsi)
inc %r8
mov $75, %rcx
rep movsq
dec %r8
lea addresses_WT_ht+0x12b32, %rsi
lea addresses_normal_ht+0xa75a, %rdi
nop
nop
nop
nop
add $23700, %r12
mov $90, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x13a9a, %rbx
xor $49080, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
sub $52541, %rbp

// REPMOV
lea addresses_RW+0x1295a, %rsi
lea addresses_PSE+0xcfe4, %rdi
inc %rax
mov $124, %rcx
rep movsb
nop
nop
nop
dec %rbp

// REPMOV
lea addresses_WC+0x815a, %rsi
lea addresses_WT+0x11ada, %rdi
nop
nop
nop
nop
nop
cmp $8072, %rax
mov $55, %rcx
rep movsl
nop
nop
nop
nop
cmp $32811, %r14

// Store
lea addresses_A+0x1015a, %r14
nop
add $38907, %rcx
movl $0x51525354, (%r14)
xor $15084, %r8

// Load
lea addresses_WC+0x1c95a, %rbx
nop
nop
nop
nop
nop
sub $23407, %rbp
movb (%rbx), %cl
inc %rax

// Store
lea addresses_WC+0x1b05a, %rsi
nop
nop
nop
nop
sub $4003, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_WC+0x815a, %rdi
nop
add $18776, %rcx
vmovaps (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WT', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'32': 937, 'f0': 1, '5a': 1, '6c': 1, '44': 6, 'd7': 1, '06': 2, 'd6': 1, '46': 89, '49': 37, '00': 20751, '45': 2}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
