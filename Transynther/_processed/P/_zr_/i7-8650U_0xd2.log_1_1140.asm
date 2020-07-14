.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xe7ff, %rbp
nop
dec %r12
mov (%rbp), %r11
nop
nop
nop
mfence
lea addresses_A_ht+0x1c0f5, %r11
nop
nop
inc %rdi
movb (%r11), %r12b
cmp $47118, %r11
lea addresses_WT_ht+0x53ff, %rsi
lea addresses_normal_ht+0x17c9a, %rdi
nop
nop
add %rbx, %rbx
mov $118, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $4792, %r8
lea addresses_A_ht+0x14d97, %r11
nop
nop
nop
sub $55435, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r11)
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x801f, %rcx
xor %r12, %r12
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0x501f, %rsi
lea addresses_D_ht+0x858f, %rdi
nop
nop
nop
inc %rbx
mov $107, %rcx
rep movsw
nop
nop
nop
add $59463, %rcx
lea addresses_UC_ht+0xb3bf, %rsi
lea addresses_A_ht+0x1e49f, %rdi
nop
nop
nop
nop
inc %r8
mov $7, %rcx
rep movsl
nop
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x547d, %rsi
lea addresses_WT_ht+0x13d57, %rdi
add %r11, %r11
mov $78, %rcx
rep movsw
nop
xor $58846, %rdi
lea addresses_D_ht+0x1df77, %rsi
lea addresses_normal_ht+0xbfdf, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $91, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x2d1f, %rbx
nop
sub $56916, %r11
movw $0x6162, (%rbx)
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x1d25f, %rsi
lea addresses_WC_ht+0xe1f, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $114, %rcx
rep movsw
nop
nop
nop
cmp $10497, %rcx
lea addresses_WT_ht+0x1a99f, %rsi
lea addresses_WC_ht+0x437f, %rdi
nop
nop
cmp $12787, %rbx
mov $74, %rcx
rep movsw
xor %r11, %r11
lea addresses_UC_ht+0x17c1f, %r8
nop
nop
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%r8)
nop
and $18214, %rsi
lea addresses_normal_ht+0x1f1f, %rsi
lea addresses_WC_ht+0xc79f, %rdi
nop
nop
nop
add $47367, %rbx
mov $69, %rcx
rep movsb
nop
nop
nop
nop
nop
add $47605, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx

// Faulty Load
mov $0x1f, %r8
nop
nop
nop
nop
dec %rax
mov (%r8), %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'00': 1}
00
*/
