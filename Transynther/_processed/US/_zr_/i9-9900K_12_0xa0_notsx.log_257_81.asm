.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xf863, %r11
clflush (%r11)
nop
nop
nop
add $4255, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x1b852, %rsi
lea addresses_A_ht+0x18e77, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $34, %rcx
rep movsl
cmp $37630, %r12
lea addresses_D_ht+0x18a87, %rsi
lea addresses_normal_ht+0xaf8b, %rdi
nop
nop
nop
nop
nop
add $9820, %rax
mov $50, %rcx
rep movsb
nop
dec %r12
lea addresses_D_ht+0x1157, %rsi
lea addresses_WC_ht+0x17b8f, %rdi
nop
add %rdx, %rdx
mov $60, %rcx
rep movsb
nop
nop
nop
add $62495, %rdx
lea addresses_WT_ht+0xa0af, %rsi
lea addresses_WC_ht+0x451f, %rdi
nop
xor %r12, %r12
mov $83, %rcx
rep movsb
nop
sub %r13, %r13
lea addresses_WT_ht+0x4e6f, %rsi
lea addresses_D_ht+0x1d95f, %rdi
nop
add $43296, %r13
mov $64, %rcx
rep movsb
nop
inc %rdi
lea addresses_normal_ht+0xddaf, %r11
nop
nop
add $8806, %rsi
movups (%r11), %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
dec %r12
lea addresses_WC_ht+0x29d1, %r13
nop
nop
nop
nop
nop
add $17025, %rdx
mov $0x6162636465666768, %rax
movq %rax, (%r13)
nop
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x1e07, %r11
xor %rax, %rax
movw $0x6162, (%r11)
nop
nop
nop
nop
xor $56604, %r11
lea addresses_WC_ht+0x1206f, %rsi
lea addresses_A_ht+0x4baf, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $84, %rcx
rep movsb
inc %rdi
lea addresses_WT_ht+0x168ef, %rsi
lea addresses_D_ht+0x189bf, %rdi
nop
nop
nop
nop
dec %r12
mov $19, %rcx
rep movsw
cmp $27603, %rcx
lea addresses_WC_ht+0xdbaf, %rdx
clflush (%rdx)
nop
nop
nop
and $25613, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%rdx)
nop
sub $45111, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rdi
push %rsi

// Faulty Load
lea addresses_US+0x1d3af, %rsi
nop
sub $62591, %r13
mov (%rsi), %r9w
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdi
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'00': 257}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
