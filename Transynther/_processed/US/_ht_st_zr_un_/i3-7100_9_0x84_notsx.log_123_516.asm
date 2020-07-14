.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xf29e, %rsi
lea addresses_normal_ht+0x6dbe, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $90, %rcx
rep movsb
nop
add %r14, %r14
lea addresses_D_ht+0x1bffe, %r9
nop
nop
nop
nop
cmp %r15, %r15
movb (%r9), %cl
add $23377, %r15
lea addresses_A_ht+0x151fe, %rcx
nop
nop
add $3180, %r11
mov (%rcx), %si
sub %rdi, %rdi
lea addresses_WT_ht+0xd1e, %rsi
lea addresses_normal_ht+0x959e, %rdi
nop
nop
nop
nop
nop
add $56030, %rax
mov $45, %rcx
rep movsq
nop
and $9516, %r11
lea addresses_A_ht+0xd88e, %r9
cmp %r11, %r11
movw $0x6162, (%r9)
and $55149, %r11
lea addresses_WT_ht+0x1e5fe, %rcx
nop
sub $25600, %r11
movb $0x61, (%rcx)
nop
nop
nop
nop
sub $43168, %r9
lea addresses_D_ht+0x188fe, %rsi
xor %rax, %rax
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
and $62613, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r8
push %r9
push %rbx

// Store
lea addresses_PSE+0x13862, %r12
nop
nop
add $64182, %r14
movb $0x51, (%r12)
nop
nop
nop
nop
nop
sub $51167, %r9

// Load
lea addresses_A+0x8ffe, %rbx
inc %r11
mov (%rbx), %r9d
nop
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_D+0x11dfe, %r11
nop
nop
nop
cmp $58009, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r11)
nop
nop
nop
add $22093, %r8

// Faulty Load
lea addresses_US+0x115fe, %r14
nop
nop
add $41323, %r11
movups (%r14), %xmm0
vpextrq $0, %xmm0, %r10
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'3c': 9, '1a': 1, 'd0': 1, '0d': 4, '02': 1, '49': 52, '00': 46, 'c0': 1, '45': 2, 'e0': 1, '08': 5}
00 49 00 00 08 49 49 49 00 00 3c 00 49 49 45 49 49 49 00 00 00 08 00 49 0d 00 49 00 08 00 00 00 49 49 00 08 00 c0 3c 49 00 00 49 00 49 49 3c 00 49 00 d0 00 49 00 49 00 49 49 49 0d 49 3c 00 49 49 49 49 1a 00 49 08 49 00 00 49 49 49 49 00 00 00 49 49 e0 49 00 3c 00 49 3c 3c 3c 00 49 49 3c 00 49 00 49 49 00 00 00 00 45 0d 00 00 02 49 00 00 49 49 0d 49 49 49 49 49 49 00
*/
