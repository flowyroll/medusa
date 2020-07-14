.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x522f, %rsi
lea addresses_UC_ht+0xeb61, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $33186, %rbx
mov $96, %rcx
rep movsq
nop
nop
nop
add $15894, %rax
lea addresses_D_ht+0x18e2f, %rax
nop
nop
nop
nop
nop
cmp %r15, %r15
movl $0x61626364, (%rax)
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x13f0e, %rax
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%rax)
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1b7cf, %rsi
nop
nop
nop
and $152, %r15
movb (%rsi), %cl
nop
nop
nop
nop
nop
sub $22899, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x37e0, %rbx
clflush (%rbx)
nop
and $12273, %r12
movl $0x51525354, (%rbx)
nop
sub $38547, %rax

// REPMOV
lea addresses_A+0x1102f, %rsi
mov $0x112bac00000000cf, %rdi
and $59465, %rdx
mov $95, %rcx
rep movsb

// Exception!!!
nop
mov (0), %r12
dec %r15

// Faulty Load
mov $0x783eaf000000062f, %rdx
nop
nop
xor %rcx, %rcx
mov (%rdx), %r12d
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 21}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
