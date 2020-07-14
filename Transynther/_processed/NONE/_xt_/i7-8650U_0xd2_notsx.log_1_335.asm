.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x166d, %r11
nop
xor %r15, %r15
mov (%r11), %rbp
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x3a6d, %rbp
nop
inc %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
xor $64388, %rsi
lea addresses_D_ht+0x18b9b, %rsi
xor $25397, %r15
mov (%rsi), %r11w
nop
nop
nop
nop
nop
add $43473, %rbp
lea addresses_D_ht+0x1bf0d, %rsi
lea addresses_A_ht+0x1c6d, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $91, %rcx
rep movsb
nop
nop
dec %r11
lea addresses_UC_ht+0x526d, %rsi
lea addresses_normal_ht+0x15ed, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $8, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0xb26d, %r8
clflush (%r8)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movw $0x6162, (%r8)
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x10a6d, %rsi
lea addresses_A_ht+0x14385, %rdi
nop
nop
nop
add %r11, %r11
mov $5, %rcx
rep movsq
nop
nop
add $63935, %rdi
lea addresses_WT_ht+0x2aed, %rsi
lea addresses_WT_ht+0xfeed, %rdi
clflush (%rdi)
nop
nop
inc %r8
mov $31, %rcx
rep movsq
nop
nop
cmp $59020, %r13
lea addresses_normal_ht+0xdc1f, %rsi
lea addresses_WC_ht+0x12a6d, %rdi
cmp $26958, %r8
mov $9, %rcx
rep movsq
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x1219, %rsi
lea addresses_normal_ht+0x1a25d, %rdi
inc %r15
mov $124, %rcx
rep movsq
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x6194, %rsi
lea addresses_WC_ht+0x1c26d, %rdi
clflush (%rsi)
nop
nop
sub %r15, %r15
mov $22, %rcx
rep movsb
cmp %rsi, %rsi
lea addresses_UC_ht+0x1536d, %rsi
lea addresses_WC_ht+0x7d6d, %rdi
nop
and $63688, %r11
mov $98, %rcx
rep movsl
nop
nop
and $53185, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %r9
push %rcx

// Load
lea addresses_US+0x145ed, %r11
add $41774, %r10
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx

// Exception!!!
mov (0), %r12
nop
nop
xor %rcx, %rcx

// Store
lea addresses_PSE+0x85a3, %r11
nop
nop
nop
cmp %r8, %r8
movw $0x5152, (%r11)
nop
nop
nop
nop
sub $15828, %r12

// Faulty Load
lea addresses_D+0x1ea6d, %r10
nop
cmp %r12, %r12
movb (%r10), %r13b
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'36': 1}
36
*/
