.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xa2ba, %r11
nop
nop
dec %rdx
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_WT_ht+0xd4aa, %r15
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
movups %xmm6, (%r15)
xor %r10, %r10
lea addresses_WT_ht+0x182ba, %rcx
nop
nop
nop
cmp %r14, %r14
mov (%rcx), %r11w
xor $25514, %r11
lea addresses_normal_ht+0xea3a, %r14
nop
nop
nop
nop
add $29886, %r10
movb $0x61, (%r14)
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x10eba, %r11
xor %rbx, %rbx
mov (%r11), %r14w
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0xefaa, %rsi
lea addresses_WC_ht+0xe747, %rdi
nop
nop
add $47129, %rdx
mov $85, %rcx
rep movsl
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x1c2ba, %r10
and $30760, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
nop
nop
add $42618, %r14
lea addresses_UC_ht+0x1ecba, %rdx
nop
sub $1258, %r11
mov (%rdx), %r10
nop
nop
nop
nop
nop
and $60642, %rsi
lea addresses_normal_ht+0xa0b2, %rsi
lea addresses_normal_ht+0xc55a, %rdi
add $10516, %r14
mov $15, %rcx
rep movsb
nop
nop
cmp $40454, %rdi
lea addresses_A_ht+0x31ba, %rsi
lea addresses_D_ht+0x141ba, %rdi
nop
nop
nop
nop
dec %r15
mov $90, %rcx
rep movsb
nop
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbx
push %rdi

// Faulty Load
lea addresses_US+0x16aba, %r8
nop
nop
cmp $41780, %rdi
movups (%r8), %xmm7
vpextrq $1, %xmm7, %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'45': 6, '00': 1, '44': 607}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44
*/
