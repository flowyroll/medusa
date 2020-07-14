.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x8308, %r11
nop
nop
nop
nop
nop
and $2515, %rsi
mov (%r11), %r8w
nop
nop
nop
sub $7121, %r14
lea addresses_WC_ht+0x19708, %rsi
lea addresses_WT_ht+0x5c94, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $80, %rcx
rep movsw
nop
and %rsi, %rsi
lea addresses_A_ht+0x16508, %rsi
lea addresses_WT_ht+0xe068, %rdi
clflush (%rdi)
nop
nop
nop
inc %r10
mov $67, %rcx
rep movsw
nop
xor $28594, %r14
lea addresses_UC_ht+0x1bd08, %rsi
lea addresses_A_ht+0x19f08, %rdi
nop
mfence
mov $35, %rcx
rep movsq
nop
nop
add $25036, %r14
lea addresses_normal_ht+0x14f08, %r8
nop
nop
nop
add %rsi, %rsi
movb $0x61, (%r8)
nop
nop
nop
nop
nop
xor $30690, %rcx
lea addresses_UC_ht+0x8608, %r14
nop
add %r11, %r11
mov (%r14), %r10d
nop
nop
cmp $13179, %rsi
lea addresses_D_ht+0x17708, %rsi
lea addresses_UC_ht+0x13f02, %rdi
clflush (%rsi)
nop
dec %r11
mov $25, %rcx
rep movsw
nop
nop
nop
sub %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rsi

// Faulty Load
lea addresses_D+0xc708, %r14
nop
lfence
mov (%r14), %r9w
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rsi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'36': 45}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
