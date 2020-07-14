.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x28f5, %rsi
lea addresses_UC_ht+0x1985, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r9
mov $80, %rcx
rep movsl
inc %r13
lea addresses_D_ht+0xe845, %r11
nop
nop
nop
nop
nop
add $62752, %r12
movl $0x61626364, (%r11)
sub $36055, %r9
lea addresses_D_ht+0x5c15, %rsi
lea addresses_normal_ht+0x105cf, %rdi
cmp $22380, %r15
mov $65, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x1d545, %r15
nop
nop
and $49924, %rcx
mov (%r15), %r13d
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x1bd1d, %r15
nop
nop
nop
xor $4155, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
sub $4500, %rsi
lea addresses_UC_ht+0x15325, %r12
nop
nop
cmp $61988, %rdi
movb $0x61, (%r12)
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x7a85, %rsi
lea addresses_WT_ht+0x4bf4, %rdi
nop
xor %r12, %r12
mov $121, %rcx
rep movsq
nop
nop
and %r9, %r9
lea addresses_A_ht+0x16c1c, %rcx
nop
sub %rsi, %rsi
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x6a85, %rsi
nop
nop
nop
add %r13, %r13
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
sub $52561, %r9
lea addresses_A_ht+0x15fad, %r11
nop
nop
nop
nop
add %r12, %r12
movw $0x6162, (%r11)
add %r9, %r9
lea addresses_WC_ht+0x1d215, %r12
dec %rdi
mov $0x6162636465666768, %r9
movq %r9, (%r12)
and $45266, %rdi
lea addresses_WC_ht+0x14a85, %rsi
and %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rsi

// Store
lea addresses_WC+0x12b45, %r8
and %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, (%r8)
nop
add %r8, %r8

// Store
lea addresses_RW+0x1e935, %rbp
nop
sub $61031, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%rbp)
nop
nop
nop
nop
nop
inc %r8

// Store
lea addresses_normal+0x18185, %rbp
sub $42291, %r8
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_RW+0x19105, %rbp
nop
inc %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rbp)
and %rbp, %rbp

// Store
lea addresses_WC+0x4285, %r13
nop
nop
nop
add $2542, %r11
movw $0x5152, (%r13)
and $49878, %rsi

// Store
mov $0x298, %r8
nop
nop
nop
nop
nop
cmp $23521, %rax
movw $0x5152, (%r8)
nop
nop
nop
add %r15, %r15

// Store
lea addresses_US+0x1f801, %rsi
nop
nop
nop
nop
nop
xor %rbp, %rbp
movl $0x51525354, (%rsi)
nop
and $23257, %r15

// Faulty Load
lea addresses_PSE+0xa285, %rbp
nop
nop
add $26318, %r15
mov (%rbp), %rsi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'33': 85}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
