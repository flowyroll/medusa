.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x154de, %rsi
lea addresses_WC_ht+0x565a, %rdi
nop
nop
nop
nop
dec %rdx
mov $43, %rcx
rep movsb
nop
cmp %r8, %r8
lea addresses_WT_ht+0x265a, %rsi
lea addresses_normal_ht+0x1c202, %rdi
nop
nop
sub %r15, %r15
mov $39, %rcx
rep movsl
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x1ff9, %rsi
nop
nop
add %rbx, %rbx
movb $0x61, (%rsi)
cmp %rcx, %rcx
lea addresses_UC_ht+0x1abfa, %rcx
nop
xor %rsi, %rsi
mov (%rcx), %di
nop
nop
nop
nop
sub $4517, %rcx
lea addresses_A_ht+0x1ae16, %rsi
lea addresses_A_ht+0x12c2a, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $35, %rcx
rep movsq
nop
nop
nop
sub $26835, %rbx
lea addresses_WC_ht+0x15e5a, %rsi
lea addresses_WC_ht+0x19a5a, %rdi
sub %r15, %r15
mov $47, %rcx
rep movsl
cmp $18557, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rdi
push %rdx

// Load
lea addresses_WT+0x7f37, %r15
nop
nop
nop
nop
nop
and %r8, %r8
mov (%r15), %edx
nop
nop
nop
nop
and $6312, %rdx

// Store
lea addresses_normal+0x1e2ba, %r8
nop
nop
nop
nop
nop
and %rbx, %rbx
movb $0x51, (%r8)
nop
nop
nop
xor $64759, %r15

// Faulty Load
mov $0x2f1b62000000065a, %rax
inc %r14
movups (%rax), %xmm4
vpextrq $1, %xmm4, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}}
{'fb': 3, '08': 1, '45': 899, '00': 4029, '49': 6804, '8c': 1, '48': 10092}
49 00 00 48 49 45 48 00 00 49 00 00 48 49 00 00 49 00 49 00 49 48 00 00 48 49 48 49 48 49 48 49 48 49 48 48 45 48 48 49 48 49 48 49 00 49 48 48 48 49 48 49 48 48 49 00 49 48 49 00 49 48 00 00 49 00 49 00 49 00 49 48 48 48 00 49 48 00 49 48 49 48 49 48 45 48 49 48 48 49 48 48 49 48 00 49 48 45 49 48 49 48 49 48 49 48 48 49 00 49 00 00 00 49 48 49 00 00 48 49 48 49 48 00 48 49 48 49 48 48 49 48 49 48 49 48 49 00 49 00 49 49 00 48 49 00 48 00 00 49 00 49 00 48 48 45 00 49 48 49 00 48 48 45 48 49 48 48 48 00 49 00 48 48 00 49 49 48 49 48 45 00 45 48 49 48 49 48 48 49 48 49 48 49 48 48 49 48 49 48 00 49 48 48 49 48 49 48 00 49 48 45 48 49 48 00 48 49 48 48 49 48 00 49 48 48 49 48 48 48 49 48 00 49 48 45 00 49 48 49 00 49 48 00 48 49 48 49 00 49 00 48 48 45 00 49 48 48 48 49 48 45 48 48 48 49 00 49 48 48 49 48 49 48 48 45 00 49 00 48 48 45 48 49 00 00 49 00 48 49 48 00 48 49 00 00 49 48 48 48 00 48 49 48 49 48 49 48 49 00 48 45 49 48 48 48 49 48 48 49 00 48 00 48 00 49 00 49 48 48 49 00 00 48 49 48 49 48 45 48 49 48 45 48 49 48 49 48 49 48 00 49 00 48 49 48 00 48 49 48 48 48 48 48 49 00 48 49 48 48 49 48 48 49 48 49 48 49 48 49 48 49 00 49 48 48 49 48 48 00 48 49 00 49 48 49 48 48 49 48 49 00 49 48 00 48 49 48 49 48 45 00 48 00 48 48 48 49 49 48 49 49 48 49 48 48 49 48 45 48 48 49 48 48 48 49 00 49 00 00 00 49 00 48 49 00 48 45 48 49 48 48 49 48 48 49 48 45 48 00 49 48 48 49 48 00 00 48 00 48 48 48 49 00 48 48 48 49 48 49 00 48 49 48 48 48 48 49 00 49 48 49 49 48 45 00 49 00 49 48 49 00 49 48 48 48 49 48 49 48 00 49 48 48 49 48 45 48 49 48 49 48 49 48 00 48 49 48 49 00 49 48 00 48 49 00 00 48 49 49 48 48 48 00 00 49 48 48 49 48 48 49 48 00 49 48 00 49 48 49 48 00 49 48 49 00 49 48 48 48 45 48 49 48 48 48 49 48 00 49 48 00 48 45 48 49 48 48 49 48 48 49 48 48 49 48 48 45 48 48 49 48 48 49 48 49 48 48 49 00 49 48 00 48 48 49 00 49 48 49 00 00 48 45 48 49 48 48 48 49 48 49 00 00 48 49 48 49 48 48 49 45 48 49 48 49 48 48 48 49 48 00 00 49 48 48 49 48 49 48 00 49 48 00 49 48 49 48 45 48 49 48 49 48 48 49 48 48 00 48 00 48 49 48 48 49 48 48 45 48 49 48 48 49 48 48 49 48 49 48 00 49 48 45 48 49 00 48 48 00 48 49 48 48 48 49 48 49 00 49 48 49 48 49 48 00 49 48 45 48 49 48 49 48 49 48 00 48 48 48 49 48 48 00 49 00 49 48 49 00 49 00 48 48 49 48 49 48 48 49 48 48 49 48 00 49 48 45 48 48 49 48 48 49 48 00 48 48 48 48 00 48 49 49 48 49 48 49 00 49 48 00 49 00 49 48 00 48 00 48 48 49 48 00 49 48 49 48 49 00 49 48 45 48 49 48 49 48 49 48 49 48 45 49 48 00 49 00 49 00 49 00 48 48 00 49 00 49 00 49 48 49 48 48 48 49 48 49 48 48 49 48 48 48 00 48 00 45 48 49 00 00 45 48 49 48 49 00 49 48 00 48 49 48 48 49 48 48 49 48 49 00 48 49 48 49 48 45 48 49 48 48 49 00 49 48 00 49 48 48 48 48 49 48 49 48 48 48 49 48 48 00 48 48 48 49 00 49 00 48 00 49 48 48 00 48 49 48 49 48 48 49 48 48 49 48 45 00 49 48 45 48 48 49 00 48 49 49 48 49 48 49 48 49 48 48 49 48 00 49 48 49 48 00 00 49 48 49 00 49 48 48 48 45 49 00 49 48 00 49 48 48 49 48 00 48 48 48 49 48 48 49 48 48 49 48 00 48 49 48
*/
