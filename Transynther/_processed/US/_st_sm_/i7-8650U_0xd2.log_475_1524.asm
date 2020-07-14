.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x9b51, %rdi
nop
xor %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x9785, %r14
sub $39721, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %r14
movaps %xmm7, (%r14)
nop
sub $10561, %r12
lea addresses_UC_ht+0x54b4, %rsi
lea addresses_WT_ht+0x54a5, %rdi
nop
nop
add %r10, %r10
mov $126, %rcx
rep movsw
nop
nop
nop
nop
dec %r10
lea addresses_A_ht+0x15c9e, %rsi
lea addresses_WT_ht+0x4a45, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $70, %rcx
rep movsb
nop
nop
nop
nop
cmp $65156, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdx

// Store
mov $0x6c5, %r11
clflush (%r11)
nop
nop
nop
cmp $55603, %rcx
movw $0x5152, (%r11)
nop
xor %r11, %r11

// Store
mov $0xa85, %rax
nop
add %r14, %r14
movb $0x51, (%rax)
nop
and $24805, %rax

// Store
lea addresses_normal+0x1cfb9, %rdx
nop
sub $40282, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm0
movntdq %xmm0, (%rdx)
nop
nop
nop
inc %rax

// Load
lea addresses_D+0x1ac5, %rax
nop
nop
nop
nop
add $60529, %r8
mov (%rax), %r15w
nop
nop
add $60057, %r15

// Store
lea addresses_D+0x18ec5, %r14
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_RW+0xc02d, %r11
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
nop
and $5635, %rcx

// Store
lea addresses_US+0x176c5, %rcx
nop
and $333, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%rcx)
nop
nop
add $60910, %r14

// Load
lea addresses_D+0xa7ca, %r15
nop
nop
nop
sub %rcx, %rcx
mov (%r15), %r14d
add $58140, %rax

// Load
lea addresses_WC+0x2be1, %rdx
nop
nop
and $5990, %r14
movntdqa (%rdx), %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
and $52510, %r15

// Faulty Load
lea addresses_US+0x176c5, %r14
sub $47071, %rax
mov (%r14), %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'58': 475}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
