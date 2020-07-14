.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10236, %rdi
nop
nop
nop
nop
nop
xor $14378, %r11
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
sub $61638, %r9
lea addresses_WC_ht+0x9536, %r12
nop
nop
nop
dec %rsi
movb (%r12), %r10b
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1a3ea, %r10
nop
nop
nop
nop
dec %r13
movl $0x61626364, (%r10)
nop
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x1b3b6, %r11
nop
nop
xor $62621, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%r11)
nop
nop
nop
nop
inc %r9
lea addresses_A_ht+0x13f36, %rsi
lea addresses_D_ht+0x9a36, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r10
mov $7, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0x2172, %rdi
nop
nop
sub %r10, %r10
mov (%rdi), %r9w
nop
nop
nop
and $38283, %r10
lea addresses_A_ht+0x1ed36, %r11
nop
cmp %r9, %r9
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
add $377, %r13
lea addresses_UC_ht+0x23b6, %rsi
lea addresses_UC_ht+0xb836, %rdi
nop
xor %r13, %r13
mov $95, %rcx
rep movsw
nop
add $30530, %r10
lea addresses_WT_ht+0x4616, %r13
nop
nop
nop
nop
add $9581, %r10
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
add $3771, %r10
lea addresses_WC_ht+0x516, %rsi
dec %r11
movb $0x61, (%rsi)
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rax
push %rdi

// Load
mov $0x66d0eb000000074a, %rax
nop
nop
nop
nop
lfence
mov (%rax), %r9d
and %r9, %r9

// Faulty Load
mov $0x413c420000000d36, %r12
nop
nop
xor %r8, %r8
mov (%r12), %r9d
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
