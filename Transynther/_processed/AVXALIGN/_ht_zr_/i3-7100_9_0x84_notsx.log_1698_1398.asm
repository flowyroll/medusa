.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1929b, %rsi
lea addresses_WT_ht+0x689b, %rdi
nop
nop
inc %rbx
mov $9, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0xc49b, %rsi
lea addresses_WT_ht+0x1279b, %rdi
clflush (%rdi)
nop
inc %rbx
mov $100, %rcx
rep movsl
nop
nop
sub $20057, %rsi
lea addresses_WT_ht+0xdd5b, %rsi
lea addresses_D_ht+0x29b, %rdi
nop
and $28231, %rdx
mov $113, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0xc6fb, %r9
nop
nop
inc %r11
mov (%r9), %dx
nop
nop
nop
nop
nop
xor $12825, %rsi
lea addresses_WT_ht+0x1c19b, %rcx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
dec %r11
lea addresses_normal_ht+0x17f8f, %rdx
clflush (%rdx)
nop
inc %r9
mov (%rdx), %esi
nop
nop
cmp $59812, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0x67f5490000000a9b, %r10
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%r10)
sub %r10, %r10

// Store
lea addresses_US+0x1599b, %r10
nop
nop
nop
and %r11, %r11
movl $0x51525354, (%r10)
nop
nop
and $64472, %rcx

// Faulty Load
lea addresses_RW+0xde9b, %r11
clflush (%r11)
nop
nop
nop
nop
dec %rcx
movaps (%r11), %xmm6
vpextrq $1, %xmm6, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'49': 253, '00': 1445}
00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 49 00 49 00 00 00 00 00 00 00 00 00 49 49 00 49 49 49 00 00 00 49 00 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 49 49 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 49 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 49 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 49 49 00 00 00 00 00 49 00 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 49 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 49 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 49 49 00 00 49 49 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 49 49 00 00 00 49 00 00 00 49 00 49 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 49 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 49 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00
*/
