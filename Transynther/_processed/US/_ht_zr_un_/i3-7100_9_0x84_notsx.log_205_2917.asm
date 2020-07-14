.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x12df4, %r15
add %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%r15)
nop
xor %r11, %r11
lea addresses_WC_ht+0x1ceb4, %rax
clflush (%rax)
cmp $21515, %r15
movups (%rax), %xmm0
vpextrq $0, %xmm0, %r10
nop
nop
nop
nop
and $391, %r11
lea addresses_WC_ht+0xfb74, %rsi
nop
nop
nop
sub $33443, %r8
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
nop
nop
sub $6019, %rax
lea addresses_WT_ht+0x14f30, %rsi
lea addresses_WC_ht+0x234c, %rdi
sub %r10, %r10
mov $23, %rcx
rep movsb
nop
and %r11, %r11
lea addresses_normal_ht+0x1a3f4, %rcx
clflush (%rcx)
nop
add $47093, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
sub $53310, %r15
lea addresses_WC_ht+0x1a2bd, %rax
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%rax)
nop
nop
sub %r10, %r10
lea addresses_D_ht+0xef88, %rsi
lea addresses_normal_ht+0xd8f4, %rdi
clflush (%rsi)
xor %r8, %r8
mov $20, %rcx
rep movsq
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x119f4, %rdi
nop
dec %r10
mov (%rdi), %rax
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0x1b7f4, %rbx
nop
nop
cmp %rcx, %rcx
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 150, '00': 20, '48': 14, 'ff': 3, '49': 18}
46 46 46 46 46 46 46 46 46 46 48 48 48 00 00 48 49 46 46 48 49 49 49 46 46 46 46 46 46 00 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 00 49 48 48 49 00 00 46 46 00 49 49 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 ff 46 46 46 46 48 46 00 00 46 46 00 49 46 48 ff 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 00 00 46 00 46 48 49 49 46 48 49 46 46 49 00 46 46 46 46 49 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 ff 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 49 46 00 46 48 49 46 46 00 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
