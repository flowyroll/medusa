.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x118c7, %r12
nop
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0x7107, %rsi
lea addresses_UC_ht+0xb807, %rdi
nop
nop
cmp $17235, %rbx
mov $80, %rcx
rep movsb
nop
nop
xor $32631, %rsi
lea addresses_A_ht+0x2e07, %rdi
nop
and %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
cmp $64071, %rdi
lea addresses_D_ht+0x1507, %rcx
and $60451, %rbp
mov (%rcx), %r12d
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x14707, %rsi
lea addresses_WC_ht+0x13307, %rdi
nop
nop
nop
dec %rbx
mov $126, %rcx
rep movsw
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0x11a47, %rcx
nop
nop
nop
nop
sub $19702, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x1d107, %r15
nop
nop
cmp $21650, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r15)
add %r12, %r12
lea addresses_normal_ht+0x907, %rsi
lea addresses_D_ht+0x13fc7, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $82, %rcx
rep movsq
xor %r12, %r12
lea addresses_WT_ht+0xbc07, %r15
nop
nop
nop
nop
nop
sub $31437, %rbx
movb (%r15), %r9b
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x1ed07, %rsi
lea addresses_WC_ht+0x12e47, %rdi
and %rbx, %rbx
mov $79, %rcx
rep movsq
cmp $32175, %rbx
lea addresses_D_ht+0x2c43, %rsi
lea addresses_D_ht+0x17ba7, %rdi
nop
nop
nop
nop
and $38013, %r12
mov $8, %rcx
rep movsb
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_PSE+0x1bd2f, %r8
nop
inc %rax
movl $0x51525354, (%r8)
and $45075, %r8

// Store
lea addresses_WT+0x1a307, %r11
nop
nop
nop
add $60160, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
nop
nop
sub $13251, %rcx

// Store
lea addresses_A+0xb07, %r8
nop
nop
nop
cmp $40607, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
nop
inc %rax

// Store
lea addresses_WT+0x1a307, %rbx
nop
and %r11, %r11
movb $0x51, (%rbx)
dec %r11

// Faulty Load
lea addresses_WT+0x1a307, %rbx
nop
nop
nop
nop
nop
add %rcx, %rcx
movb (%rbx), %r8b
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'58': 4069, '51': 1417, '32': 1, '34': 1, '2e': 1, '14': 1, '3a': 1, '10': 1}
58 58 51 51 58 58 58 51 58 58 51 58 58 58 51 58 58 58 58 51 58 58 51 58 58 58 58 58 51 51 58 51 58 58 58 51 51 58 51 58 51 58 58 51 58 58 58 58 58 58 51 58 58 58 58 51 58 58 58 51 58 58 58 58 51 58 58 58 51 58 51 51 51 58 58 51 58 58 51 58 51 58 58 51 58 58 58 58 58 58 51 51 58 51 58 58 58 58 51 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 51 58 58 51 58 58 58 58 58 58 58 58 51 58 51 58 58 51 58 58 58 58 58 58 51 58 51 58 58 51 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 51 58 58 51 58 58 51 58 51 51 51 58 58 58 58 58 58 58 58 58 51 58 51 51 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 51 58 51 51 58 58 51 58 58 51 58 51 58 51 58 51 58 51 51 58 58 51 51 58 51 58 51 58 58 58 58 51 58 51 58 58 58 58 58 51 58 58 51 58 51 58 58 58 58 58 51 51 58 58 58 51 58 58 58 58 58 58 58 58 51 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 51 51 58 58 58 58 58 51 58 58 51 58 51 58 58 51 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 51 58 58 51 58 58 58 58 51 58 58 51 58 51 51 58 58 58 58 58 58 58 58 58 51 58 58 58 58 51 58 58 58 58 51 58 58 51 58 58 58 51 58 58 51 58 51 58 51 58 51 58 58 58 58 58 51 58 51 58 51 58 58 58 51 58 58 51 58 58 51 58 51 58 58 58 58 58 51 58 58 51 58 51 51 51 51 58 51 58 58 51 58 51 51 51 58 58 58 51 58 58 51 58 51 58 58 51 58 58 51 51 58 58 51 58 58 58 58 58 58 51 58 58 51 51 58 58 58 51 58 58 51 58 58 51 58 58 51 58 58 51 58 58 58 51 58 58 58 58 58 58 58 51 58 58 58 51 58 58 51 58 51 58 58 58 58 51 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 51 58 58 58 58 58 58 58 51 58 51 51 51 58 58 58 58 58 51 58 58 58 58 51 58 58 58 51 51 58 58 58 58 58 51 51 51 58 51 51 51 58 58 51 51 58 51 58 58 51 58 58 58 51 58 51 51 58 58 58 51 58 58 51 58 51 58 58 51 58 58 51 51 58 51 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 51 58 58 58 58 51 58 58 58 58 58 58 51 58 58 51 58 51 58 58 58 51 58 51 58 58 51 58 58 58 58 58 51 58 58 58 58 58 51 58 58 51 58 51 58 58 58 51 58 51 51 58 58 58 51 58 51 58 51 58 58 51 58 51 51 58 51 58 58 58 58 58 51 58 51 58 58 58 58 58 58 58 51 58 58 58 58 51 58 58 58 51 58 58 51 58 58 51 58 51 58 58 51 58 58 51 58 51 58 58 58 58 51 58 58 51 58 58 58 51 58 51 58 58 51 51 58 58 51 58 51 58 58 51 58 58 58 58 58 51 58 58 51 58 58 58 58 58 51 58 58 58 58 58 58 51 58 58 51 58 51 58 58 58 51 58 58 51 58 51 58 51 58 58 58 58 51 51 58 51 58 51 51 58 58 58 51 58 58 51 58 58 58 51 58 51 58 58 58 58 58 58 51 51 58 58 58 58 58 58 58 58 51 58 58 51 58 58 58 58 58 51 51 58 51 58 51 58 58 51 58 51 58 58 58 51 58 58 58 58 58 58 58 58 51 58 58 58 51 51 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 51 58 51 58 51 58 51 58 51 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 51 51 58 58 58 58 51 58 58 51 51 51 58 51 58 58 58 51 58 58 58 58 51 58 58 51 58 58 51 58 51 58 58 58 58 58 51 58 58 58 58 51 58 58 58 58 58 58 58 58 58 51 58 51 58 58 58 58 58 51 51 58 58 51 58 58 51 58 51 51 58 58 51 51 58 58 51 58 51 58 58 58 58
*/
