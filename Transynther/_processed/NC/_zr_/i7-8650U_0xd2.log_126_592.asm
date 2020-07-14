.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xbc2d, %rsi
lea addresses_D_ht+0x1bd, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $45437, %r11
mov $25, %rcx
rep movsw
nop
nop
nop
cmp $60229, %r8
lea addresses_A_ht+0x1191b, %rsi
lea addresses_D_ht+0xc8d7, %rdi
clflush (%rsi)
nop
nop
sub %r13, %r13
mov $119, %rcx
rep movsq
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x14cbd, %rsi
lea addresses_D_ht+0x12b19, %rdi
nop
nop
nop
nop
xor $4497, %rbp
mov $16, %rcx
rep movsl
nop
nop
and $27129, %r13
lea addresses_UC_ht+0x172bd, %rsi
nop
nop
nop
nop
nop
and $45147, %r11
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
sub $57771, %r11
lea addresses_D_ht+0xaf3d, %rsi
nop
lfence
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rsi)
nop
inc %rdi
lea addresses_D_ht+0xd8a1, %rsi
lea addresses_A_ht+0x576d, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $80, %rcx
rep movsl
nop
nop
nop
nop
nop
and $30707, %rsi
lea addresses_normal_ht+0x11d63, %rsi
lea addresses_WT_ht+0x1c79d, %rdi
nop
nop
nop
dec %r8
mov $123, %rcx
rep movsw
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x188c4, %r8
nop
nop
nop
nop
nop
add %rdi, %rdi
movb $0x61, (%r8)
nop
nop
and %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
mov $0x5e3c580000000ebb, %r9
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
nop
nop
nop
and %r9, %r9

// Load
lea addresses_normal+0xddf5, %rbp
inc %r8
movups (%rbp), %xmm6
vpextrq $0, %xmm6, %rdi
sub %r9, %r9

// Store
lea addresses_WT+0x85bd, %rsi
sub %rcx, %rcx
movw $0x5152, (%rsi)
nop
nop
nop
nop
sub %r8, %r8

// Store
mov $0x7f7aed00000009bd, %rbp
nop
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%rbp)
add %r11, %r11

// Store
lea addresses_A+0xb1bd, %r9
nop
nop
nop
cmp $7097, %rbp
movb $0x51, (%r9)
nop
dec %rdi

// Store
mov $0x6eb79400000001bd, %rbp
xor $36368, %r9
movw $0x5152, (%rbp)
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_WC+0x1f63d, %r11
nop
nop
nop
sub $37000, %r8
movw $0x5152, (%r11)
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_WT+0x6b46, %r11
sub $10420, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
nop
nop
add $5877, %rbp

// Faulty Load
mov $0x7f7aed00000009bd, %rsi
nop
nop
nop
nop
add %rcx, %rcx
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 126}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
