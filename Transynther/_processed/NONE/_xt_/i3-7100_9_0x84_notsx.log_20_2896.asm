.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x375e, %r8
nop
and $51111, %r11
mov $0x6162636465666768, %rdx
movq %rdx, (%r8)
nop
nop
nop
nop
nop
add $58586, %rcx
lea addresses_WT_ht+0xe5de, %rsi
lea addresses_A_ht+0x18d3e, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $100, %rcx
rep movsq
cmp $50216, %rbx
lea addresses_normal_ht+0x18da6, %rsi
lea addresses_WC_ht+0xd85e, %rdi
clflush (%rdi)
nop
nop
nop
add $2490, %r10
mov $104, %rcx
rep movsl
nop
nop
and $34128, %rdx
lea addresses_WT_ht+0xbb5e, %rsi
nop
sub %rdi, %rdi
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %rbx
sub $57198, %rdx
lea addresses_A_ht+0x109de, %rdx
and %r11, %r11
movl $0x61626364, (%rdx)
dec %rdi
lea addresses_WT_ht+0x1d65e, %r8
nop
nop
nop
inc %rdi
movups (%r8), %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
xor $41676, %r11
lea addresses_normal_ht+0xb35e, %rcx
nop
nop
and $45001, %rbx
movb (%rcx), %r11b
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1bb5e, %rsi
lea addresses_D_ht+0x1d939, %rdi
nop
nop
inc %rbx
mov $8, %rcx
rep movsl
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0xfa06, %rdx
nop
nop
nop
nop
nop
xor %r8, %r8
vmovups (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
and $35542, %rbx
lea addresses_A_ht+0x11bc6, %rsi
lea addresses_WT_ht+0x40de, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $7, %rcx
rep movsb
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x14b5e, %rdx
nop
nop
nop
sub $56006, %rsi
vmovups (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
and $55636, %rbx
lea addresses_D_ht+0x768c, %r10
nop
nop
nop
inc %rbx
movl $0x61626364, (%r10)
nop
nop
add $1990, %rbx
lea addresses_WC_ht+0x3c04, %rdx
clflush (%rdx)
nop
and $51456, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0xcb5e, %rsi
lea addresses_A_ht+0x68be, %rdi
nop
nop
nop
and %rdx, %rdx
mov $2, %rcx
rep movsl
nop
nop
nop
sub $26964, %rdi
lea addresses_WC_ht+0xf5c8, %rsi
lea addresses_normal_ht+0x82a6, %rdi
nop
cmp %r10, %r10
mov $34, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $5834, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rdi

// Store
mov $0x4ca410000000a1e, %r12
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%r12)
sub %rbx, %rbx

// Store
mov $0x7b7ae00000000a5e, %r13
nop
nop
nop
nop
xor $21695, %rax
movl $0x51525354, (%r13)
nop
nop
nop
and $60692, %rdi

// Load
lea addresses_PSE+0x19ee2, %r8
clflush (%r8)
nop
nop
add $13687, %rax
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
inc %r9

// Store
lea addresses_RW+0x49de, %r9
nop
nop
nop
nop
nop
add %rax, %rax
movl $0x51525354, (%r9)
nop
nop
nop
nop
sub $38121, %r9

// Faulty Load
lea addresses_normal+0x1e35e, %r12
sub $15465, %r13
mov (%r12), %r9d
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'34': 20}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
