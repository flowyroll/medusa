.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1d88d, %rcx
nop
nop
nop
nop
and %r15, %r15
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
nop
nop
cmp $19502, %rdx
lea addresses_D_ht+0xe8ab, %r11
nop
nop
mfence
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r11)
nop
nop
xor $25810, %rdx
lea addresses_D_ht+0x9c0d, %rbx
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, (%rbx)
nop
nop
nop
sub $31489, %rdx
lea addresses_UC_ht+0x12ee5, %rsi
lea addresses_D_ht+0x1908d, %rdi
nop
and $65132, %r15
mov $117, %rcx
rep movsq
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x2ad4, %r11
cmp %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
nop
nop
xor $58140, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x58b0e90000000fce, %rsi
clflush (%rsi)
nop
sub %rdx, %rdx
movb $0x51, (%rsi)
nop
nop
nop
cmp $55211, %r11

// Store
lea addresses_RW+0x1f28d, %rsi
nop
nop
xor $49198, %rdi
movl $0x51525354, (%rsi)
nop
nop
sub $47999, %r11

// Store
lea addresses_PSE+0xa6d3, %rsi
nop
nop
nop
add %rdi, %rdi
movb $0x51, (%rsi)
cmp $19309, %rdi

// Faulty Load
lea addresses_US+0x1008d, %rsi
clflush (%rsi)
nop
nop
cmp $59689, %rdx
mov (%rsi), %r11w
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 170}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
