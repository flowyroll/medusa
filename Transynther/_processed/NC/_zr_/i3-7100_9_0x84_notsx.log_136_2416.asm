.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1e6db, %rcx
nop
sub $35953, %rax
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x11a3b, %rsi
lea addresses_A_ht+0x17e8e, %rdi
clflush (%rsi)
add $3451, %r10
mov $70, %rcx
rep movsb
add $28247, %rcx
lea addresses_D_ht+0x16bdb, %rdi
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
nop
xor $59703, %r11
lea addresses_UC_ht+0x178db, %rdi
nop
nop
add %r14, %r14
movw $0x6162, (%rdi)
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x124db, %rsi
lea addresses_WC_ht+0x120db, %rdi
nop
add %rbp, %rbp
mov $99, %rcx
rep movsw
nop
nop
nop
nop
add $46631, %r10
lea addresses_normal_ht+0x7d0b, %rdi
nop
lfence
movl $0x61626364, (%rdi)
nop
add $63566, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WT+0x1fc5b, %rbp
nop
nop
nop
and $30372, %r8
mov (%rbp), %r9
sub %r10, %r10

// REPMOV
lea addresses_WT+0xa13b, %rsi
lea addresses_RW+0x17edb, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $32, %rcx
rep movsw
nop
nop
nop
xor %r8, %r8

// Faulty Load
mov $0x3f146c0000000adb, %r13
nop
and %rdi, %rdi
mov (%r13), %cx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 136}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
