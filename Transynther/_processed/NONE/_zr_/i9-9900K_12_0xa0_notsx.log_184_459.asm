.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x8db8, %rsi
lea addresses_WC_ht+0xedb8, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $76, %rcx
rep movsb
nop
nop
nop
and $63947, %r12
lea addresses_D_ht+0x194f4, %r11
xor %rdx, %rdx
movb $0x61, (%r11)
nop
nop
nop
add $28653, %r11
lea addresses_WC_ht+0xb9b8, %r11
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb (%r11), %cl
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x16838, %rsi
lea addresses_WC_ht+0x18898, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
inc %rbp
mov $66, %rcx
rep movsb
and %r9, %r9
lea addresses_D_ht+0x2eb8, %rsi
lea addresses_A_ht+0x3d38, %rdi
nop
cmp %rbp, %rbp
mov $60, %rcx
rep movsl
nop
nop
sub $18904, %rdx
lea addresses_D_ht+0x4d8, %rcx
nop
nop
nop
xor $11024, %r12
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x9878, %rcx
nop
nop
nop
add %r11, %r11
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x1d9b8, %rsi
lea addresses_D_ht+0xeed8, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r9
mov $48, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x1a8f8, %rsi
lea addresses_UC_ht+0x192b8, %rdi
nop
nop
sub $23485, %r9
mov $73, %rcx
rep movsb
xor $51703, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rdx
push %rsi

// Store
mov $0x2c393900000009b8, %r13
nop
nop
nop
nop
cmp $20453, %rsi
movb $0x51, (%r13)
nop
nop
add %r9, %r9

// Faulty Load
lea addresses_A+0x51b8, %r13
nop
nop
nop
add %r15, %r15
mov (%r13), %r9w
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rsi
pop %rdx
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'00': 184}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
