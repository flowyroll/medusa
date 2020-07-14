.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xb473, %r11
nop
sub $52167, %rax
mov $0x6162636465666768, %r15
movq %r15, (%r11)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0xd93, %rsi
lea addresses_D_ht+0x139f3, %rdi
nop
nop
nop
xor %r12, %r12
mov $82, %rcx
rep movsb
nop
nop
nop
xor $22158, %r12
lea addresses_WC_ht+0x1ae53, %rsi
lea addresses_WC_ht+0x1d0b7, %rdi
nop
sub %r9, %r9
mov $96, %rcx
rep movsb
nop
nop
nop
nop
and %r9, %r9
lea addresses_A_ht+0x1c693, %rsi
nop
nop
nop
nop
nop
and $43485, %r15
mov (%rsi), %ecx
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x10d93, %rsi
lea addresses_WC_ht+0xa803, %rdi
nop
nop
cmp $38431, %r15
mov $66, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0x1245b, %r15
nop
nop
cmp $26029, %r11
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x1ca93, %r9
nop
dec %rdi
mov (%r9), %r15d
cmp %rax, %rax
lea addresses_WT_ht+0x1293, %rcx
clflush (%rcx)
nop
nop
dec %rax
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x150f3, %r15
nop
nop
and $46032, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
nop
nop
sub $32740, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_PSE+0x5c63, %r14
add $59920, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
nop
nop
cmp $57352, %r8

// Store
lea addresses_WC+0x83fe, %r9
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%r9)
nop
xor $48657, %rbx

// Store
lea addresses_UC+0x3293, %r8
nop
nop
nop
nop
nop
add $55056, %rax
movw $0x5152, (%r8)
nop
nop
nop
xor %rdx, %rdx

// Store
mov $0x10ed660000000a93, %rbx
nop
nop
nop
nop
nop
xor $34640, %r8
movb $0x51, (%rbx)
nop
xor %r8, %r8

// Store
lea addresses_WC+0x12193, %rbp
clflush (%rbp)
nop
sub $4711, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%rbp)
nop
nop
nop
nop
nop
add $10061, %rbx

// Store
lea addresses_normal+0x11473, %r9
nop
nop
nop
nop
dec %r14
movb $0x51, (%r9)
nop
nop
nop
xor $7876, %r9

// Store
lea addresses_UC+0x11a93, %r14
nop
nop
inc %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movntdq %xmm1, (%r14)
nop
nop
nop
nop
xor $13211, %rbp

// Store
lea addresses_normal+0xa493, %r8
nop
nop
and $27387, %r9
movb $0x51, (%r8)
xor $8775, %rdx

// Faulty Load
mov $0x10ed660000000a93, %r14
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%r14), %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'58': 15}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
