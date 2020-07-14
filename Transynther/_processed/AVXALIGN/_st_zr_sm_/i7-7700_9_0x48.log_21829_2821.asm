.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x8d33, %r11
nop
cmp $47180, %r13
movups (%r11), %xmm6
vpextrq $1, %xmm6, %r8
nop
dec %rcx
lea addresses_normal_ht+0x1ee93, %rsi
lea addresses_UC_ht+0x4233, %rdi
nop
nop
nop
cmp $19099, %r8
mov $86, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r8
lea addresses_WC_ht+0x12453, %rsi
nop
nop
nop
nop
cmp %rbx, %rbx
movb $0x61, (%rsi)
add $24754, %rsi
lea addresses_WC_ht+0x613, %rsi
lea addresses_D_ht+0xa733, %rdi
dec %r10
mov $78, %rcx
rep movsb
nop
xor $48150, %r10
lea addresses_D_ht+0x13773, %rsi
xor $51201, %rdi
mov (%rsi), %cx
nop
add $27393, %r11
lea addresses_UC_ht+0x16da3, %rsi
lea addresses_UC_ht+0x17133, %rdi
nop
nop
nop
nop
nop
cmp $33404, %r13
mov $43, %rcx
rep movsb
nop
sub $40814, %r11
lea addresses_D_ht+0x3133, %rsi
add %rdi, %rdi
mov (%rsi), %cx
nop
nop
xor $18624, %rcx
lea addresses_normal_ht+0x4833, %rdi
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
xor $53626, %rsi
lea addresses_WC_ht+0x2841, %rsi
lea addresses_A_ht+0x5d33, %rdi
clflush (%rdi)
nop
nop
nop
and $21045, %rbx
mov $62, %rcx
rep movsl
cmp $55026, %r8
lea addresses_D_ht+0x4d93, %rsi
lea addresses_normal_ht+0x15f33, %rdi
nop
nop
nop
inc %rbx
mov $100, %rcx
rep movsq
nop
nop
nop
nop
and $13179, %rsi
lea addresses_WC_ht+0x6a5d, %rbx
nop
nop
inc %r11
mov (%rbx), %r10w
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x9ac8, %r13
nop
inc %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
add $3611, %rdi
lea addresses_WC_ht+0x14533, %r10
clflush (%r10)
nop
nop
nop
cmp $31001, %rbx
mov (%r10), %r13w
nop
nop
add $23631, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rsi

// Store
lea addresses_WT+0x1b333, %r12
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r12)
nop
nop
xor $17372, %rsi

// Store
lea addresses_PSE+0x18d43, %rbp
nop
nop
nop
nop
and $55234, %r9
movl $0x51525354, (%rbp)
nop
and $62649, %rbp

// Store
mov $0xbcefe0000000933, %rbp
nop
nop
nop
nop
dec %r13
movb $0x51, (%rbp)
nop
cmp $8715, %r12

// Load
mov $0xbcefe0000000933, %r10
clflush (%r10)
nop
nop
nop
nop
xor %r12, %r12
movb (%r10), %al
nop
nop
cmp $57271, %r9

// Faulty Load
mov $0xbcefe0000000933, %rbp
clflush (%rbp)
nop
add %r10, %r10
mov (%rbp), %r12w
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'51': 21697, '00': 132}
00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
