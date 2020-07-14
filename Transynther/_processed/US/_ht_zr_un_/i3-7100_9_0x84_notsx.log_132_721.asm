.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x3837, %rsi
lea addresses_WT_ht+0x19cbe, %rdi
nop
nop
nop
nop
nop
cmp $43770, %r14
mov $91, %rcx
rep movsw
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x8dfe, %r8
clflush (%r8)
nop
nop
nop
add %r11, %r11
movb (%r8), %al
cmp %rsi, %rsi
lea addresses_normal_ht+0xd73e, %rsi
lea addresses_UC_ht+0x14f6, %rdi
clflush (%rsi)
nop
nop
nop
dec %r11
mov $47, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x654e, %r8
nop
nop
nop
sub $58998, %rdi
mov (%r8), %esi
nop
add %r14, %r14
lea addresses_WC_ht+0x7a32, %rcx
and %r14, %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm2
and $0xffffffffffffffc0, %rcx
movntdq %xmm2, (%rcx)
nop
nop
nop
nop
nop
dec %r11
lea addresses_normal_ht+0x17cbe, %rcx
clflush (%rcx)
dec %rax
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %rdi
cmp %r14, %r14
lea addresses_UC_ht+0x164be, %rsi
lea addresses_WC_ht+0xd8be, %rdi
nop
nop
add %r13, %r13
mov $80, %rcx
rep movsb
dec %rcx
lea addresses_UC_ht+0x8be, %r8
clflush (%r8)
nop
nop
nop
nop
nop
xor $4505, %rsi
movl $0x61626364, (%r8)
nop
inc %rsi
lea addresses_WT_ht+0x16bbe, %rsi
add %r14, %r14
mov (%rsi), %r11d
nop
and $39823, %rsi
lea addresses_WC_ht+0xf8de, %rsi
lea addresses_WC_ht+0x6c3e, %rdi
nop
nop
dec %r14
mov $126, %rcx
rep movsq
nop
nop
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbx
push %rdi
push %rdx
push %rsi

// Store
mov $0x66625800000003fa, %r15
nop
xor %rdx, %rdx
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
add $47114, %rdx

// Faulty Load
lea addresses_US+0x9cbe, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %r15
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'95': 7, '00': 119, '1a': 3, '45': 1, '47': 2}
00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 95 95 95 95 47 00 00 00 00 00 00 00 00 00 00 00 00 00 95 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 95 00 00 95 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00
*/
