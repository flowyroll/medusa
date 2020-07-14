.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x39b8, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
and $35622, %r11
mov (%rbp), %r15
inc %rbp
lea addresses_WC_ht+0x80dc, %r9
nop
xor %rsi, %rsi
movw $0x6162, (%r9)
nop
xor $51035, %rsi
lea addresses_WC_ht+0x23b8, %r15
nop
dec %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r15)
and %r15, %r15
lea addresses_WT_ht+0x105d8, %rsi
lea addresses_D_ht+0x1abb8, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $89, %rcx
rep movsb
nop
nop
nop
nop
and $35600, %rcx
lea addresses_D_ht+0x15db8, %rsi
lea addresses_A_ht+0xafb8, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $49538, %r15
mov $39, %rcx
rep movsq
xor %rcx, %rcx
lea addresses_normal_ht+0xb9b8, %r11
nop
nop
nop
sub $8870, %rcx
mov (%r11), %rbp
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x1a6b8, %rsi
lea addresses_D_ht+0x114b1, %rdi
nop
nop
add %rbp, %rbp
mov $19, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $47632, %r15
lea addresses_WC_ht+0xf0b8, %r15
nop
nop
nop
dec %r11
movl $0x61626364, (%r15)
and %rdi, %rdi
lea addresses_WC_ht+0x10d68, %rsi
lea addresses_D_ht+0x35b8, %rdi
add %rbp, %rbp
mov $110, %rcx
rep movsq
nop
nop
nop
add $54009, %r15
lea addresses_D_ht+0x5118, %rdi
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rdi)
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x13bb8, %r14
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r14), %rdi
nop
xor $13005, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0x12bb8, %rbx
and $50630, %r15
mov (%rbx), %si
add %rbp, %rbp

// Store
lea addresses_D+0x6674, %rdi
clflush (%rdi)
nop
nop
sub $63583, %r13
movb $0x51, (%rdi)
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_US+0x123b8, %rdi
nop
nop
nop
and $40257, %r13
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'48': 7, '46': 1, '00': 6}
00 48 48 46 48 00 00 00 00 48 00 48 48 48
*/
